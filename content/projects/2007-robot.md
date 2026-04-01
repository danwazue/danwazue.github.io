+++
title        = '2.007 Robot'
date         = 2025-05-10
draft        = false
featured     = true
tagline      = "Designing and fabricating a competition robot to maximize points in MIT's 2.007 Design & Manufacturing I"
category     = 'Mechanical Design'
year         = '2025'
cover        = '/images/2007-robot/hero.webp'
skills       = ['Mechanical Design', 'SolidWorks CAD', 'Fabrication', 'Arduino', 'Autonomy']
timeline     = 'Feb – May 2025'
duration     = '10 weeks'
+++

<h2 class="project-body-heading">Introduction</h2>

<p class="project-body">2.007 (Design and Manufacturing I) is MIT's core mechanical engineering design course. Each student spends the semester designing and building their own robot to compete on a shared game board. The 2025 theme was "Wicked FBD: Applying Gravity," based on the Wizard of Oz. Each round is two minutes long: a 30-second autonomous period followed by 90 seconds of remote control.</p>

<p class="project-body">The game board had nine scoring opportunities: Fields of Poppies, Munchkinland Artifacts, Train to Oz, Hot Air Balloon, Oz Head Levers, Machinery's Grimmerie, Flying Monkeys, Oz Multiplier, and the Broom. Each had different point values, mechanical interfaces, and positions on the table.</p>

<div class="project-cover-wrap">
  <img src="/images/2007-robot/gameboard.webp" alt="2.007 game board" class="project-cover-img"/>
  <p class="img-caption">2025 game board, Wizard of Oz theme</p>
</div>

<h2 class="project-body-heading">Strategy</h2>

<p class="project-body">I analyzed each scoring opportunity by point value, mechanical complexity, time cost, and compatibility with other tasks. Two stood out:</p>

<p class="project-body"><strong>Train to Oz:</strong> Points are awarded based on distance traveled, cumulative across four zones: 5 + 9 + 11 + 13 = 38 points. The train is driven by a rotational input on the game board. All points scored during the autonomous period are doubled, making the train worth up to 76 points if completed in the first 30 seconds. The train is also well-suited to autonomy because it requires a fixed number of rotations with no opponent interaction.</p>

<p class="project-body"><strong>Hot Air Balloon:</strong> Points are awarded based on the height the balloon is raised, cumulative across four zones: 11 + 15 + 19 + 20 = 65 points. A weight multiplier (up to 1.4× for 8+ lbs in the gondola) is applied to the balloon score. The balloon is also raised by a rotational input, making it mechanically compatible with the same type of drivetrain as the train.</p>

<p class="project-body">Both tasks use a rotational interface, so a single spinner mechanism could address both. The key difference: the train and balloon engage at different heights on the game board (6" and 6.75" respectively). This meant the robot needed a reliable height-adjustment mechanism to switch between the two tasks during the match.</p>

<p class="project-body"><strong>Target score:</strong> 76 pts (train, autonomous) + 83.5 pts (balloon) = 159.5 pts.</p>

<h2 class="project-body-heading">Design Requirements</h2>

<p class="project-body">From the strategy and the contest constraints:</p>

<ul class="project-body-list">
  <li>Fit within a 12" × 12" × 16" starting volume</li>
  <li>Weigh under 12 lbs</li>
  <li>Adjustable to two distinct engagement heights: 6" and 6.75"</li>
  <li>Support a load torque of at least 2 Nm</li>
  <li>Operate at max motor power on 7.4V LiPo</li>
  <li>Limited to four gearhead motors and four servos</li>
  <li>Autonomous control via photoresistor sensor for the first 30 seconds</li>
  <li>Minimize friction and avoid over-constraint in the drivetrain</li>
  <li>Reconfigurable between rounds for left/right table assignment</li>
</ul>

<h2 class="project-body-heading">Concepts</h2>

<p class="project-body">The spinner module was non-negotiable: both the train and balloon require a rotational output, so some form of motor-driven gear reduction was always part of the design. The open question was how to move the spinner between the two engagement heights.</p>

<p class="project-body">I considered two approaches:</p>

<p class="project-body"><strong>4-bar linkage:</strong> A linkage driven by a servo could swing the spinner between two fixed positions. Advantages: mechanically simple, fast actuation, and inherently stable at its two endpoint positions. Drawback: the arc of the linkage makes it harder to guarantee the spinner stays level and properly aligned with the game board interface at both heights. Any misalignment meant the spinner module would not mesh cleanly with the train or balloon input.</p>

<p class="project-body"><strong>Lead screw:</strong> A lead screw driven by a motor translates the spinner vertically along a linear path. Advantages: purely vertical motion keeps the spinner level at any height, easy to set precise positions, and the lead screw is inherently non-backdrivable under load, so it holds position without continuous power. Drawback: slower actuation, more parts (bearings, carriage, guide rails), and tighter fabrication tolerances needed to avoid binding.</p>

<p class="project-body">I went with the lead screw. The linear travel guaranteed alignment at both heights, and the non-backdrivability meant the spinner would stay locked in place.</p>

<div class="img-grid cols-2">
  <div class="img-block">
    <img src="/images/2007-robot/concept1.png" alt="4-bar linkage concept sketch" class="project-cover-img"/>
    <p class="img-caption">4-bar linkage concept for height adjustment</p>
  </div>
  <div class="img-block">
    <img src="/images/2007-robot/concept2.png" alt="Lead screw concept sketch" class="project-cover-img"/>
    <p class="img-caption">Lead screw concept for height adjustment (selected)</p>
  </div>
</div>

<h2 class="project-body-heading">Design</h2>

<p class="project-body">The robot breaks down into four subsystems: drivetrain, spinner module, chassis with lead screw height adjustment, and autonomous controller.</p>

<h3 class="project-body-heading">Drivetrain</h3>

<p class="project-body">The drivetrain is a 4-wheel all-wheel drive system responsible for moving the robot across the table to reach the train and balloon interfaces. The wheels use rubber rounds for traction to prevent slipping when pushing or pulling against the game board mechanisms.</p>

<h3 class="project-body-heading">Spinner Module</h3>

<p class="project-body">The spinner drives both the train and the balloon rope via a spur gear reduction, mounted in a laser-cut aluminum plate sandwich. Two <strong>BLIDA 25-2 torque servos</strong> on a 7.4V LiPo, each producing 1.3 Nm at peak power. After a 2:1 gear reduction, combined output torque reached 5.2 Nm at 15.42 RPM, enough to complete the train challenge in ~50.6 sec and the balloon in ~15.6 sec.</p>

<p class="project-body">I modeled every component in SolidWorks before cutting anything. Several clearance issues between the gear stack and plate sandwich showed up in CAD that would have been costly to fix at the machine.</p>

<div class="img-grid cols-2">
  <div class="img-block">
    <img src="/images/2007-robot/spinner-iso.png" alt="Spinner assembly isometric" class="project-cover-img"/>
    <p class="img-caption">Spinner assembly, isometric view</p>
  </div>
  <div class="img-block">
    <img src="/images/2007-robot/spinner-exp.png" alt="Spinner exploded view" class="project-cover-img"/>
    <p class="img-caption">Exploded view</p>
  </div>
</div>

<div class="img-grid cols-2">
  <div class="img-block">
    <img src="/images/2007-robot/motor-calc.png" alt="Motor calculations notebook page" class="project-cover-img"/>
    <p class="img-caption">Hand calculations for motor and gear reduction selection</p>
  </div>
  <div class="img-block">
    <img src="/images/2007-robot/lead-calc.png" alt="Lead screw torque analysis" class="project-cover-img"/>
    <p class="img-caption">Lead screw torque analysis with 1.5× safety factor</p>
  </div>
</div>

<div class="img-grid cols-2">
  <div class="img-block">
    <img src="/images/2007-robot/mcm.webp" alt="Spinner prototype" class="project-cover-img"/>
    <p class="img-caption">Early prototype of the spinner module</p>
  </div>
  <div class="img-block">
    <img src="/images/2007-robot/mcm-final.webp" alt="Final spinner assembly" class="project-cover-img"/>
    <p class="img-caption">Final spinner assembly</p>
  </div>
</div>

<h3 class="project-body-heading">Chassis & Height Adjustment</h3>

<p class="project-body">The chassis integrates the lead screw height-adjustment mechanism to switch the spinner between the train engagement height (6") and the balloon engagement height (6.75") during the match. The carriage rides on four flanged bearings to stay aligned without over-constraint. All structural plates were waterjet cut from aluminum stock and assembled in the Pappalardo Lab.</p>

<div class="img-grid cols-2">
  <div class="img-block">
    <img src="/images/2007-robot/lead.png" alt="Chassis CAD with lead screw" class="project-cover-img"/>
    <p class="img-caption">Chassis with lead screw assembly CAD</p>
  </div>
  <div class="img-block">
    <img src="/images/2007-robot/mcm-mid.webp" alt="Mid-construction milestone prototype" class="project-cover-img"/>
    <p class="img-caption">Mid-construction milestone prototype</p>
  </div>
</div>


<h3 class="project-body-heading">Autonomy</h3>

<p class="project-body">All points scored during the first 30 seconds are doubled, so getting the train done autonomously was central to the strategy. An <strong>Arduino microcontroller</strong> with a photoresistor detected the starting light, triggering a timed motor sequence to spin the train the correct number of rotations (13 rotations at ~78 RPM) before stopping. No control signals are allowed during the autonomous period, so the sequence had to be fully pre-programmed and reliable.</p>

<h2 class="project-body-heading">Competition</h2>

<p class="project-body">Finished in the <strong>top 32 of 200+ students</strong> in the final competition.</p>

<div class="img-grid cols-1">
  <div class="img-block">
    <div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; border-radius: var(--radius);">
      <iframe
        src="https://www.youtube.com/embed/FAzmfhq-ivo"
        title="2.007 robot competition run"
        frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
        allowfullscreen
        style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;">
      </iframe>
    </div>
    <p class="img-caption">Final robot at competition</p>
  </div>
</div>
