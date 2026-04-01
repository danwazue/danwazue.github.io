+++
title        = 'Small Projects'
date         = 2025-01-01
draft        = false
featured     = false
tagline      = 'Smaller builds, quick iterations, real lessons'
category     = 'Miscellaneous'
year         = '2024–2025'
cover        = '/images/small-projects/hero.png'
skills       = ['Arduino', '3D Printing', 'Machine Learning']
timeline     = '2024-2025'
+++

<h2 class="project-body-heading">E-Scooter Blind-Spot Detector</h2>

<p class="project-body">During MIT's IAP (Independent Activities Period) in January 2024, I received a <strong>$400 MIT grant</strong> to build anything I wanted. A friend had recently purchased an e-scooter, and after thinking about how exposed you feel on one, I decided to build a real-time blind-spot detection system.</p>

<p class="project-body">The system uses <strong>ultrasonic sensors (HC-SR04)</strong> mounted to a backpack, controlled by an <strong>Arduino Nano</strong>. I chose ultrasonic over infrared or LiDAR for the cost and reliability in noisy environments. It triggers two alert levels: a medium alarm when something comes within 10 feet, and a high-pitched alarm plus haptic vibration (via a Wii controller motor) when within 5 feet. I chose to mount the sensors to the rider instead of the scooter, to allow it to work across different vehicles.</p>


<div class="img-block">
  <img src="/images/small-projects/prototype.png" alt="Breadboard Prototype" class="project-cover-img"/>
  <p class="img-caption">Breadboard prototype with Arudino, sensors, speaker, and motor.</p>
</div>


<p class="project-body">Road testing exposed the system's main weakness: in a busy environment, everything triggers an alert. The constant alarms made it impossible to distinguish a real threat from background noise. The alert logic needed a lot more refinement to be actually useful.</p>

---

<h2 class="project-body-heading">Donkey Car: Autonomous Racing</h2>

<p class="project-body">As part of MIT's 16.633 course, I built and trained a <strong>Donkey Car</strong>: an open-source autonomous RC car platform that uses a <strong>Raspberry Pi</strong>, a forward-facing camera, and a neural network trained on my own driving data. The process: manually drive the car around a track to collect image and control input pairs, train a behavioral cloning model on that data, then load it back onto the car and let it drive itself.</p>

<p class="project-body">The model doesn't replay your driving, it learns to associate what the camera sees with the appropriate steering and throttle response, then makes real-time inferences on new images. Getting good training data matters a lot: inconsistent or sloppy driving produces a model that drives the same way.</p>

<p class="project-body">Our class competition was a timed lap around a track, with time penalties for cut corners and hand touches. <strong>Our car ran a clean lap (zero penalties) and placed second in the class.</strong></p>

<div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; border-radius: var(--radius); margin: 2em 0;">
  <iframe
    src="https://www.youtube.com/embed/TBPPSP6TEaY"
    title="Donkey Car autonomous lap"
    frameborder="0"
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen
    style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;">
  </iframe>
</div>
<p class="img-caption">Our Donkey Car running a clean autonomous lap during the class competition</p>

---

<h2 class="project-body-heading">Church Paper Towel Dispenser Key</h2>

<p class="project-body">Last semester, one of the elders at my church asked if I could design and 3D-print replacement keys for the paper towel dispensers throughout the building. I modeled a prototype and printed it the same day. When we tested it for the first time, he slid the key into the slot, gave it a twist… and snap—the shaft sheared off and got stuck inside the lock.</p>

<p class="project-body">So it was back to the drawing board. A few iterations later, I landed on a design that could actually handle the shear load. That key now lives in every bathroom in the building. The timing couldn't have been better; I was covering torsion in <strong>2.001</strong> at the same time. What I'd just learned in lecture suddenly had a real-world application I could feel in my hands.</p>

<div class="img-grid cols-2">
  <div class="img-block">
    <div class="img-frame">
      <img src="/images/small-projects/test.png" alt="Failed key prototype with sheared shaft" class="project-cover-img"/>
      <p class="img-caption">First prototype. Shaft sheared on the first attempt.</p>
    </div>
  </div>
  <div class="img-block">
    <div class="img-frame">
      <img src="/images/small-projects/final.png" alt="Final printed key installed" class="project-cover-img"/>
      <p class="img-caption">Final design, now installed in every bathroom.</p>
    </div>
  </div>
</div>