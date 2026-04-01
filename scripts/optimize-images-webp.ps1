param(
  [string]$Root = "static/images",
  [int]$ThresholdMB = 1,
  [int]$MaxDimension = 2000,
  [int]$Quality = 80,
  [string]$CwebpPath = "C:\Users\alexn\AppData\Local\Microsoft\WinGet\Packages\Google.Libwebp_Microsoft.Winget.Source_8wekyb3d8bbwe\libwebp-1.6.0-windows-x64\bin\cwebp.exe"
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

Add-Type -AssemblyName System.Drawing

$thresholdBytes = $ThresholdMB * 1MB

$files = Get-ChildItem $Root -Recurse -File |
  Where-Object { $_.Extension -match '\.(png|jpe?g)$' -and $_.Length -gt $thresholdBytes }

$results = foreach ($file in $files) {
  $destination = [System.IO.Path]::ChangeExtension($file.FullName, ".webp")
  $sourcePath = $file.FullName

  $img = [System.Drawing.Image]::FromFile($sourcePath)
  try {
    $scale = [Math]::Min($MaxDimension / $img.Width, $MaxDimension / $img.Height)
    if ($scale -ge 1) {
      $newWidth = $img.Width
      $newHeight = $img.Height
    } else {
      $newWidth = [Math]::Max(1, [int][Math]::Round($img.Width * $scale))
      $newHeight = [Math]::Max(1, [int][Math]::Round($img.Height * $scale))
    }
  } finally {
    $img.Dispose()
  }

  & $CwebpPath `
    -quiet `
    -mt `
    -m 6 `
    -q $Quality `
    -metadata none `
    -resize $newWidth $newHeight `
    $sourcePath `
    -o $destination

  if ($LASTEXITCODE -ne 0) {
    throw "cwebp failed for $($file.FullName)"
  }

  $newItem = Get-Item -LiteralPath $destination
  Remove-Item -LiteralPath $file.FullName -Force

  [pscustomobject]@{
    Source = $file.FullName
    Destination = $destination
    OldMB = [math]::Round($file.Length / 1MB, 2)
    NewMB = [math]::Round($newItem.Length / 1MB, 2)
    Width = $newWidth
    Height = $newHeight
  }
}

$results | Sort-Object Source
