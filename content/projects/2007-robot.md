+++
title        = '2.007 Robot'
date         = 2025-05-10
draft        = false
featured     = true
tagline      = "Designing and fabricating a competition robot to maximize points in MIT's 2.007 Design & Manufacturing I"
category     = 'Mechanical Design'
year         = '2025'
cover        = '/images/2007/robot-hero.jpg'
skills       = ['Mechanical Design', 'SolidWorks CAD', 'Fabrication', 'Arduino', 'Autonomy']
timeline     = 'Feb – May 2025'
duration     = '10 weeks'
+++

<p class="project-body">2.007 (Design and Manufacturing I) is MIT's core mechanical engineering design course. Each student spends the semester designing and building their own robot to compete on a shared game board. The 2025 theme was based on the Wizard of Oz.</p>

<p class="project-body">My goal: <strong>maximize points in both the autonomous and manual rounds.</strong> After analyzing the scoring breakdown, I zeroed in on two challenges — the train (38 pts × 2 laps = 76 pts) and the balloon (83.5 pts) — for a theoretical total of 159.5 points.</p>

<div class="project-cover-wrap">
  <img src="/images/2007/game-board.jpg" alt="2.007 game board" class="project-cover-img"/>
</div>

<h2 class="project-body-heading">Design Requirements</h2>

<p class="project-body">Before touching any CAD or cutting any material, I set clear requirements to keep decisions grounded:</p>

<ul class="project-body-list">
  <li>Adjustable to two distinct heights: <strong>6" and 6.75"</strong></li>
  <li>Support a load torque of at least <strong>2 Nm</strong></li>
  <li>Operate at max motor power</li>
  <li>Autonomous control via photoresistor sensor</li>
  <li>Minimize friction and avoid over-constraint in the drivetrain</li>
</ul>

<h2 class="project-body-heading">Motor & Drivetrain Analysis</h2>

<p class="project-body">I ran hand calculations to verify the drivetrain could handle the required torque and complete both challenges within the time limit. Using two <strong>BLIDA 25-2 torque servos</strong> on a 7.4V LiPo, each motor produces 1.3 Nm at peak power. After a 2:1 reduction, combined output torque reached 5.2 Nm at 15.42 RPM — enough to complete the train challenge in ~50.6 sec and the balloon in ~15.6 sec.</p>

<div class="img-grid cols-2">
  <div class="img-block">
    <img src="/images/2007/motor-calcs.jpg" alt="Motor calculations notebook page" class="project-cover-img"/>
    <p class="img-caption">Hand calculations for motor selection</p>
  </div>
  <div class="img-block">
    <img src="/images/2007/leadscrew-calcs.jpg" alt="Lead screw torque analysis" class="project-cover-img"/>
    <p class="img-caption">Lead screw torque analysis with 1.5× safety factor</p>
  </div>
</div>

<h2 class="project-body-heading">Module 1: Spinner</h2>

<p class="project-body">The spinner module drives the train via a spur gear reduction, mounted in a laser-cut aluminum plate sandwich. I modeled every component in SolidWorks before cutting anything — several clearance issues between the gear stack and plate sandwich showed up in CAD before becoming real problems in the shop.</p>

<div class="img-grid cols-2">
  <div class="img-block">
    <img src="/images/2007/spinner-cad-iso.jpg" alt="Spinner assembly isometric" class="project-cover-img"/>
    <p class="img-caption">Spinner assembly — isometric view</p>
  </div>
  <div class="img-block">
    <img src="/images/2007/spinner-cad-exploded.jpg" alt="Spinner exploded view" class="project-cover-img"/>
    <p class="img-caption">Exploded view showing gear stack</p>
  </div>
</div>

<h2 class="project-body-heading">Module 2: Chassis</h2>

<p class="project-body">The chassis holds everything together and integrates the lead screw height-adjustment mechanism. The carriage rides on four flanged bearings to stay aligned without over-constraint. All structural plates were waterjet cut from aluminum stock and assembled in the Pappalardo Lab.</p>

<div class="img-grid cols-2">
  <div class="img-block">
    <img src="/images/2007/chassis-cad.jpg" alt="Chassis CAD with lead screw" class="project-cover-img"/>
    <p class="img-caption">Chassis with lead screw assembly</p>
  </div>
  <div class="img-block">
    <img src="/images/2007/mcm-prototype.jpg" alt="Mid-construction milestone prototype" class="project-cover-img"/>
    <p class="img-caption">Mid-construction milestone prototype</p>
  </div>
</div>

<h2 class="project-body-heading">Autonomy</h2>

<p class="project-body">The autonomous round required the robot to act without human input. I programmed an <strong>Arduino microcontroller</strong> with a photoresistor that detected the starting light, triggering a timed motor sequence to spin the train the correct number of rotations before stopping.</p>

<h2 class="project-body-heading">Reflection</h2>

<p class="project-body">The biggest takeaway: <strong>CAD before lab, always.</strong> Every hour spent modeling saved at least two hours of rework at the machine. I also finished in the <strong>top 32 of 200+ students</strong> in the final competition — a result that came down to treating design requirements as a living document and iterating quickly when the lead screw mounting needed a redesign midway through.</p>