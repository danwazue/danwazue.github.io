+++
title        = 'Coaxial Spherical Manipulator'
date         = 2026-08-28
draft        = false
featured     = true
tagline      = 'Designing a compact 3-DOF manipulator for precision crystal-growth alignment'
category     = 'Precision Engineering'
year         = '2026'
cover        = '/images/coaxial-spherical-manipulator/hero.png'
skills       = ['Precision Machine Design', 'SolidWorks CAD', 'Kinematic Analysis', 'Error Budgeting', 'Gear and Bearing Design', 'Embedded Control']
timeline     = 'Jun - Aug 2026'
duration     = '11 weeks'
collaborators = ['IPG Photonics Crystals R&D']
+++

<h2 class="project-body-heading">Precision Alignment for Crystal Growth</h2>

<p class="project-body">During my summer mechanical engineering internship with <strong>IPG Photonics' Crystals R&D group</strong>, I designed a 3-DOF coaxial spherical parallel manipulator for crystal-growth alignment. The mechanism supports a spinning 840-900 mm seed rod above the melt, providing continuous 11 RPM rotation and +/-2 degrees of pitch and roll adjustment while keeping the rod tip stationary.</p>

<p class="project-body">A conventional serial gimbal would stack the actuators, create a large footprint, and allow small angular errors to sweep the rod tip. At a 900 mm length, a 0.25 degree angular error can produce roughly 3.9 mm of unwanted tip motion. I designed the manipulator around a virtual remote center of motion, where the linkage axes intersect at the seed endpoint so the geometry, rather than software compensation, preserves its position.</p>

<h2 class="project-body-heading">Requirements and Design Strategy</h2>

<p class="project-body">The design centered on four coupled requirements:</p>

<ul class="project-body-list">
  <li><strong>Stationary seed endpoint:</strong> tilt a spinning 900 mm rod by +/-2 degrees without translational sweep at its tip.</li>
  <li><strong>Continuous rotation:</strong> maintain unlimited yaw while independently controlling two tilt axes.</li>
  <li><strong>Precision:</strong> achieve 0.25 degree angular resolution and repeatability despite backlash, bearing play, and structural deflection.</li>
  <li><strong>Power transfer:</strong> deliver 5 W at 12 V through the rotating stage for continuous operation.</li>
</ul>

<p class="project-body">The resulting layout uses three symmetric 120-degree legs. Coordinated motion of all three inputs spins the platform continuously, while differential motion controls pitch and roll. The symmetric closed loop also distributes joint error and stiffness evenly across the tilt directions.</p>

<h2 class="project-body-heading">Selecting a Coaxial Architecture</h2>

<p class="project-body">I evaluated an arc-motion guide, a double-parallelogram mechanism, and a conventional non-coaxial spherical parallel manipulator. The coaxial SPM offered the best fit for the existing machine: all motors package into a compact, self-centering cylinder; the static motors keep moving inertia low; and the mechanism supports continuous rotation without link interference. Its more complex nested shafts and gears were a worthwhile tradeoff for a +/-2 degree tilt requirement.</p>

<div class="img-block">
  <img src="/images/coaxial-spherical-manipulator/assembled.png" alt="Assembled CAD view of the coaxial spherical parallel manipulator" class="project-cover-img"/>
  <p class="img-caption">Compact coaxial package with three spherical-linkage legs and nested actuation</p>
</div>

<p class="project-body">For power transfer, I compared inductive coupling against a sealed capsule slip ring. Inductive transfer avoided mechanical contact but introduced approximately 2.1 W of heat loss and potential EMI near crystal-growth sensors. A precious-metal sealed slip ring reduced calculated electrical loss to approximately 0.018 W at the required 0.42 A, making it the more practical choice for continuous rotation.</p>

<h2 class="project-body-heading">Error Budget and Kinematic Model</h2>

<p class="project-body">I built a 13-coordinate-system homogeneous transformation matrix error budget from the fixed room frame through the motor shafts, gears, spherical linkage, rod coupler, and 900 mm tool point. This separated repeatability, which is set by mechanical sources such as backlash and bearing play, from global accuracy, which can be calibrated once repeatability is established.</p>

<ul class="project-body-list">
  <li><strong>Gear mesh:</strong> compared external-external helical gears, external-internal spur gears, and custom internal helical gears. Helical gearing reduced backlash to approximately +/-0.07 degrees, preserving margin within the 0.25 degree target.</li>
  <li><strong>Linkage joints:</strong> tracked approximately 0.03 degrees of bearing play per revolute joint and approximately 0.015 degrees of link deflection.</li>
  <li><strong>Platform and rod:</strong> accounted for combined bearing play, coupler runout, hub concentricity, and rod straightness at the final seed endpoint.</li>
</ul>

<h2 class="project-body-heading">Mechanical Design</h2>

<p class="project-body"><strong>Concentric shaft stack and gear train:</strong> Three stationary closed-loop stepper motors drive nested concentric outputs through helical gear stages. I used back-to-back angular-contact bearings to resist overturning moments in a short axial envelope, then used clamped hubs, keys, and precision shaft shoulders to transmit torque without weakening thin-walled hollow shafts.</p>

<p class="project-body"><strong>Revolute joints:</strong> Early joint stackups allowed bearing races and washers to rub or left axial play. I refined the stepped bore, spacer stack, and washer interfaces so each race seats on its intended shoulder. A wave spring preloads the paired bearings under the shoulder screw, eliminating axial slop while keeping articulation friction low.</p>

<p class="project-body"><strong>Adjustable rod coupler:</strong> The central three-arm platform includes a vertically adjustable collet so the physical seed length can be tuned until its endpoint coincides with the mechanism's virtual center of motion.</p>

<h2 class="project-body-heading">Controls and Outcome</h2>

<p class="project-body">The enclosure splits into a lower motor housing, a removable gear-and-bearing carrier cartridge, and an upper sealed cap. This lets the team bench-test gear mesh and bearing preload before final assembly. I paired three UIM2040CA closed-loop steppers with an ESP32 and CAN bus transceiver to support synchronized multi-axis trajectories.</p>

<p class="project-body">Over 11 weeks, I took the concept from first-principles kinematics and an error budget through detailed CAD, bearing and joint tolerance optimization, and actuator-control prototyping. The final design packages continuous rotation with precision tilt in a compact coaxial footprint while addressing the dominant risks: endpoint drift, gear backlash, bearing rub, and rotating-stage power delivery.</p>
