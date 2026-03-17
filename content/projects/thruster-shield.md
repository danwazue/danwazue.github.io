+++
title        = 'Boat Thruster Shield'
date         = 2023-09-15
draft        = false
featured     = false
tagline      = 'Designing a protective and load-bearing thruster shield for an autonomous competition boat'
category     = 'Mechanical Design'
year         = '2023'
cover        = '/images/thruster-shield/hero.jpg'
skills       = ['CAD', 'Metal Laser Cutting', 'Onshape']
timeline     = 'Sep – Dec 2023'
duration     = '14 weeks'
collaborators = ['Sam Huang', 'Tony Tang']
+++

<p class="project-body">MIT Arcturus is a student team that competes in the annual <strong>RoboNation RoboBoat competition</strong> — an autonomous surface vehicle challenge. For the team's new flagship boat, someone needed to design a thruster shield: a structure that protects the thrusters from impact, mounts them securely to the hull, and can bear the full weight of the boat when it's resting on the ground between runs. I led that design.</p>

<h2 class="project-body-heading">The Problem</h2>

<p class="project-body">The boat uses an <strong>X-Drive thruster configuration</strong> — four thrusters mounted at 45° angles around the hull, which gives it omnidirectional maneuverability. That geometry made the shield design more constrained than a typical mount: each thruster needed to be angularly adjustable to dial in the exact X-Drive angles, while the overall assembly still had to be stiff enough to handle impact loads and support the boat's weight on land.</p>

<p class="project-body">The additional load-bearing requirement came from competition logistics — between heats, boats are lifted out of the water and set down on their thrusters. A shield that can't handle that load is a liability.</p>

<h2 class="project-body-heading">Design</h2>

<p class="project-body">I started by reviewing thruster shield designs from previous RoboBoat competition teams to understand what had worked and what had failed. From there I designed the system in <strong>Fusion 360</strong> around two main components:</p>

<ul class="project-body-list">
  <li><strong>Mounting plate</strong> — quarter-inch marine-grade aluminum, chosen for its strength-to-weight ratio and corrosion resistance. A circular array of mounting holes lets the thruster be rotated to any angle before locking down with T-nuts and screws.</li>
  <li><strong>Support legs</strong> — square, rubber-cushioned U-bolts in zinc-plated steel. The rubber cushioning absorbs shock; the steel handles the compressive load of the boat resting on a single thruster.</li>
</ul>

<div class="img-grid cols-2">
  <div class="img-block">
    <img src="/images/thruster-shield/mount-plate-cad.jpg" alt="Thruster mounting plate CAD" class="project-cover-img"/>
    <p class="img-caption">Mounting plate with circular bolt pattern for angular adjustment</p>
  </div>
  <div class="img-block">
    <img src="/images/thruster-shield/assembly-cad.jpg" alt="Full thruster shield assembly CAD" class="project-cover-img"/>
    <p class="img-caption">Full shield assembly integrated into the hull model</p>
  </div>
</div>

<h2 class="project-body-heading">Fabrication & Integration</h2>

<p class="project-body">The mounting plate was cut from aluminum sheet stock and the completed design was brought into the team's <strong>Onshape</strong> master assembly, which allowed the rest of the team to design around it without version conflicts. After assembling the thruster onto the plate, we conducted load-bearing tests — placing the boat's full weight on a single thruster — and confirmed the system held without deflection or fastener slip.</p>

<div class="img-grid cols-2">
  <div class="img-block">
    <img src="/images/thruster-shield/fabricated-mount.jpg" alt="Fabricated thruster mount" class="project-cover-img"/>
    <p class="img-caption">Fabricated mounting plate with T-nuts installed</p>
  </div>
  <div class="img-block">
    <img src="/images/thruster-shield/installed-on-boat.jpg" alt="Shield installed on hull" class="project-cover-img"/>
    <p class="img-caption">Shield installed on the Arcturus hull</p>
  </div>
</div>

<h2 class="project-body-heading">Reflection</h2>

<p class="project-body">The trickiest part of this project wasn't the structural analysis — it was designing for adjustability without sacrificing stiffness. A circular bolt pattern gives you angular freedom, but it also means the joint relies entirely on friction once tightened. Getting the clamping force right, and choosing T-nuts over standard nuts to distribute that force, was the key detail that made the design reliable.</p>

<p class="project-body">Working in a shared Onshape assembly also changed how I thought about design dependencies. Every dimension I committed to became a constraint for someone else on the team, which pushed me to finalize the hull interface geometry earlier than I would have otherwise.</p>