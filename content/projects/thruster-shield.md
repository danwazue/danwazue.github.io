+++
title        = 'Boat Thruster Shield'
date         = 2023-09-15
draft        = false
featured     = false
tagline      = 'Designing a protective and load-bearing thruster shield for an autonomous competition boat'
category     = 'Mechanical Design'
year         = '2023'
cover        = '/images/thruster-shield/hero.png'
skills       = ['CAD', 'Metal Laser Cutting', 'Onshape']
timeline     = 'Sep – Dec 2023'
duration     = '14 weeks'
collaborators = ['Sam Huang', 'Tony Tang']
+++

<p class="project-body">MIT Arcturus is a student team that competes in <strong>RoboBoat</strong>, an international student competition where teams design, build, and operate autonomous surface vessels (ASVs) that navigate and complete tasks on the water. For the team's new flagship boat, I designed a thruster shield structure that protects the thrusters from impact, secures them to the hull, and supports the full weight of the boat when it's resting on the ground between runs.</p>

<h2 class="project-body-heading">The Problem</h2>

<p class="project-body">The boat uses an <strong>X-Drive thruster configuration:</strong> four thrusters mounted at 45° angles around the hull, which gives it omnidirectional maneuverability. That geometry made the shield design more complicated than a typical mount: each thruster needed angular adjustability to precisely set the X-Drive angles, while the overall assembly still had to be stiff enough to handle impact loads and support the boat's weight on land.</p>

<p class="project-body">The additional load-bearing requirement came from competition logistics. Between heats, boats are lifted out of the water and set down on their thrusters. This required a support structure that would not compromise the boat's performance while providing the necessary protection and load-bearing capacity.</p>

<h2 class="project-body-heading">Design</h2>

<p class="project-body">I started by reviewing thruster shield designs from previous RoboBoat competition teams to understand what had worked and what had failed. From there, I designed the system in <strong>Fusion 360</strong> around two primary components:</p>

<ul class="project-body-list">
  <li><strong>Mounting plate:</strong> quarter-inch marine-grade aluminum, chosen for its strength-to-weight ratio and corrosion resistance. A circular array of mounting holes allows the thruster to be rotated to any angle before locking down with T-nuts and screws.</li>
  <li><strong>Support legs:</strong> square, rubber-cushioned U-bolts in zinc-plated steel. The rubber cushioning absorbs shock; the steel handles the compressive load of the boat.</li>
</ul>

<div class="img-grid cols-2">
  <div class="img-block">
    <img src="/images/thruster-shield/mounting-plate.png" alt="Thruster mounting plate CAD" class="project-cover-img"/>
    <p class="img-caption">Mounting plate with circular bolt pattern for angular adjustment</p>
  </div>
  <div class="img-block">
    <img src="/images/thruster-shield/assembly-cad.png" alt="Full thruster shield assembly CAD" class="project-cover-img"/>
    <p class="img-caption">Full shield assembly integrated into the hull model</p>
  </div>
</div>

<h2 class="project-body-heading">Fabrication & Integration</h2>

<p class="project-body">The mounting plate was cut from aluminum sheet stock and the design was then integrated into the team's <strong>Onshape</strong> master assembly, which allowed the rest of the team to design around it without version conflicts. After assembling the thruster onto the plate, we conducted load-bearing tests.</p>

<div class="img-block">
  <img src="/images/thruster-shield/hero.png" alt="Fabricated thruster mount" class="project-cover-img"/>
  <p class="img-caption">Fabricated thruster shield.</p>
</div>


<h2 class="project-body-heading">Reflection</h2>

<p class="project-body">This project was a critical exercise in balancing the need for structural strength with the flexibility required by the boat’s X-Drive system. The success of the thruster mounting plate not only demonstrated the effectiveness of our design approach but also reinforced the importance of collaborative CAD work and precise fabrication methods. Future improvements could explore weight reduction strategies without compromising the system’s load-bearing capabilities.</p>