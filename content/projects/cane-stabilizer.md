+++
title        = 'Cane Stabilizer'
date         = 2025-12-09
draft        = false
featured     = true
tagline      = 'Designing a one-handed, self-stabilizing cane attachment for a user with hemiparesis'
category     = 'Assistive Technology'
year         = '2025'
cover        = '/images/cane-stabilizer/hero.jpg'
skills       = ['Mechanical Design', 'Linkage Design', 'FEA', '3D Printing', 'Arduino']
timeline     = 'Sep – Dec 2025'
duration     = '14 weeks'
collaborators = ['Alex Zhindon-Romero', 'Amie Kitjasateanphun', 'Ephraim Fischer', 'Hager Gomaa', 'Lanie Dela Peña', 'Lien Nguyen', 'Vy Pham']
+++

<p class="project-body">This project was part of MIT's Assistive Technology (AT) design program, where student teams are paired with a real co-designer to build something that addresses a specific need in their life. Our co-designer was <strong>Susan Bibbins</strong>, a retired children's psychologist living with fibromyalgia and hemiparesis — conditions that leave her with one reliably functional hand. Susan uses a cane daily, and the problem she brought to us was simple but frustrating: <strong>when she sets her cane down, it falls over.</strong></p>

<h2 class="project-body-heading">The Problem</h2>

<p class="project-body">A cane that falls means Susan has to bend down to retrieve it — difficult and sometimes unsafe with her condition. Existing solutions like wall hooks or cane holders require two hands or a fixed surface. What Susan needed was something <em>on the cane itself</em> that would keep it upright automatically, work with one hand, and not get in her way while she's walking.</p>

<p class="project-body">Our design requirements, derived directly from working with Susan:</p>

<ul class="project-body-list">
  <li>Operable with one functional hand</li>
  <li>Does not impede normal cane use while walking</li>
  <li>Lightweight and self-stabilizing when deployed</li>
  <li>Not a trip hazard — legs must retract fully</li>
  <li>Weatherproof enough for outdoor use</li>
</ul>

<h2 class="project-body-heading">Concept Selection</h2>

<p class="project-body">We evaluated leg actuation concepts across two axes: how the legs deploy, and how the mechanism is triggered. Options ranged from motor-driven lever legs to pre-bent legs constrained in tubes, to a tripod system on a translating ring. For actuation we considered a hand-brake, a motor-powered string spool, and a hand pump. We landed on a <strong>spring-loaded leg linkage system</strong> actuated by a motor and string — the legs are held retracted by string tension, and releasing the motor lets the springs push them out into a tripod stance.</p>

<h2 class="project-body-heading">Leg & Linkage Design</h2>

<p class="project-body">My focus on the team was the leg and linkage geometry. The key constraint was making sure each leg, as it swings out, makes <strong>flush contact with the ground</strong> — not just a point or edge contact that would make the stabilizer rock. This required careful attention to the arc the leg tip traces as the linkage rotates.</p>

<p class="project-body">The linkage pivot point needed to sit <em>above</em> the leg's centerpoint so that the geometry naturally sweeps the foot flat to the ground at full extension. Getting this wrong by even a few millimeters meant the cane would sit on a corner of the leg rather than a flat face — unstable and hard on the material over time.</p>

<div class="img-grid cols-2">
  <div class="img-block">
    <img src="/images/cane-stabilizer/leg-linkage-cad.jpg" alt="Leg linkage CAD" class="project-cover-img"/>
    <p class="img-caption">Leg linkage CAD — pivot positioned above leg centerpoint</p>
  </div>
  <div class="img-block">
    <img src="/images/cane-stabilizer/ligature-connection.jpg" alt="Ligature connection and spring holder" class="project-cover-img"/>
    <p class="img-caption">Ligature connection with spring holder and leg attachment feature</p>
  </div>
</div>

<h2 class="project-body-heading">Material Testing: PLA vs TPU</h2>

<p class="project-body">I also led testing to compare <strong>PLA and TPU</strong> for the leg components. The tradeoffs were real: PLA is stiffer and easier to print accurately, but brittle under repeated impact. TPU is flexible and absorbs shock well, but its compliance makes the leg geometry less predictable — a leg that flexes slightly changes the contact angle at the foot.</p>

<p class="project-body">We ran FEA on the leg geometry, incrementally increasing axial, vertical, and horizontal loads until reaching yield, to understand where each material would fail first. The analysis also fed into sizing — optimizing leg length, width, and thickness to stay within the weight budget set by the existing cane tip (max 0.32 kg).</p>

<div class="img-grid cols-2">
  <div class="img-block">
    <img src="/images/cane-stabilizer/fea-analysis.jpg" alt="FEA stress analysis on leg geometry" class="project-cover-img"/>
    <p class="img-caption">FEA stress analysis — loading to yield in three axes</p>
  </div>
  <div class="img-block">
    <img src="/images/cane-stabilizer/pla-tpu-samples.jpg" alt="PLA and TPU printed leg samples" class="project-cover-img"/>
    <p class="img-caption">PLA vs TPU printed leg samples for comparison testing</p>
  </div>
</div>

<h2 class="project-body-heading">The Full System</h2>

<p class="project-body">The complete mechanism consists of a motor and spool mounted low on the cane shaft, braided UHMWPE cord running down to a translating ring, three spring-loaded legs deploying from that ring, and an Arduino Nano controller with buttons for deploy and retract. We prototyped and demoed a working version — nicknamed <strong>"Candy Cane"</strong> — at the design review.</p>

<div class="img-grid cols-2">
  <div class="img-block">
    <img src="/images/cane-stabilizer/full-assembly.jpg" alt="Full cane stabilizer assembly" class="project-cover-img"/>
    <p class="img-caption">Full assembly CAD with all six numbered components</p>
  </div>
  <div class="img-block">
    <img src="/images/cane-stabilizer/prototype-demo.jpg" alt="Working prototype demo" class="project-cover-img"/>
    <p class="img-caption">Working prototype at the design review demo</p>
  </div>
</div>

<h2 class="project-body-heading">Reflection</h2>

<p class="project-body">Designing for a specific person changes how you think about every decision. The leg contact geometry problem, for example, wasn't just a mechanical puzzle — a stabilizer that rocks is one Susan can't trust, which means she wouldn't use it. That raised the stakes on getting the arc right. Working directly with Susan throughout the semester kept that kind of detail from being an afterthought.</p>