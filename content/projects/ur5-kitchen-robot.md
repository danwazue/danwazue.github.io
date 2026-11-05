+++
title        = 'UR5 Kitchen Assistant'
date         = 2026-05-06
draft        = false
featured     = true
tagline      = 'Developing bimanual end effectors and control strategies for an autonomous kitchen task'
category     = 'Robotics'
year         = '2026'
cover        = '/images/ur5-kitchen-robot/hero.jpg'
skills       = ['Robotic Manipulation', 'End Effector Design', 'Teleoperation', 'Computer Vision', 'Motion Planning']
timeline     = 'Feb - May 2026'
duration     = '14 weeks'
collaborators = ['Aayush Dutta', 'Akshat Kumar', 'Michael Bailey', 'Guillermo Mendoza Contreras', 'Daniel Odenthal', 'Max Tan']
+++

<p class="project-body">For MIT's 2.12/2.120 Product Engineering Processes term project, our team developed a bimanual UR5 system for an autonomous kitchen challenge. The robot had to open and operate a microwave, handle a plate and bowl, pour a drink, and place the meal on a tray within a short, penalty-sensitive run. The system needed complementary end effectors and a control strategy that could handle constrained motions without spilling food or triggering protective stops.</p>

<h2 class="project-body-heading">My Role</h2>

<p class="project-body">I developed the PS4-controller interface for isolated UR5 joint control. This gave the team a direct way to tune individual joints, manually validate task motions, and recover from awkward configurations while we iterated on the end effectors and task sequence.</p>

<div class="img-block">
  <img src="/images/ur5-kitchen-robot/hero.jpg" alt="Robotiq gripper positioned at the microwave during a kitchen task" class="project-cover-img"/>
  <p class="img-caption">Testing a UR5 arm at the microwave station</p>
</div>

<h2 class="project-body-heading">Bimanual System</h2>

<p class="project-body">We assigned each UR5 arm a distinct role. The left arm used a custom hook gripper to open the microwave door and manipulate objects with handles or rims. The right arm used a Robotiq 2F-85 gripper to pick and place cups, bottles, plates, and the tray. This division let us match the end effector to the object rather than forcing one tool to complete every task.</p>

<ul class="project-body-list">
  <li><strong>Hook gripper:</strong> servo-actuated and instrumented with a force sensor for controlled opening and closing; used for the microwave handle and bowl operations.</li>
  <li><strong>2F-85 gripper:</strong> used for plate, bottle, cup, and tray handling; finger extensions were explored to improve access underneath the plate.</li>
  <li><strong>Cooperative handling:</strong> the 2F-85 could anchor the tray while the hook arm pivoted it into position, then realign it for placement.</li>
</ul>

<div class="img-grid cols-2">
  <div class="img-block">
    <img src="/images/ur5-kitchen-robot/hook-cad.png" alt="CAD model of the custom hook end effector" class="project-cover-img"/>
    <p class="img-caption">CAD of the custom hook end effector</p>
  </div>
  <div class="img-block">
    <img src="/images/ur5-kitchen-robot/simulation.png" alt="Simulation of the dual UR5 setup and microwave workspace" class="project-cover-img"/>
    <p class="img-caption">Simulation scene used to plan the dual-arm workspace</p>
  </div>
</div>

<h2 class="project-body-heading">Perception and Control</h2>

<p class="project-body">The team planned a perception stack around Intel RealSense RGB-D cameras. RGB and HSV filtering identified station areas, while object detection and segmentation located task objects. Depth data provided a 3D point cloud for grasp selection and approach planning.</p>

<p class="project-body">For execution, we separated free-space motion, pre-grasp approach, grasp closure, loaded transit, and door manipulation into control modes. The physical system used UR joint commands and gripper control, while simulation supported motion-planning development and offline trajectory preparation. We also kept manually controlled, precomputed paths available as a safe fallback during integration.</p>

<div class="img-block">
  <img src="/images/ur5-kitchen-robot/vision.png" alt="Object detection view of the kitchen workspace" class="project-cover-img"/>
  <p class="img-caption">Object detection and station localization in the kitchen workspace</p>
</div>

<h2 class="project-body-heading">Task Strategy</h2>

<p class="project-body">The final operating sequence used both arms in a deliberate order: prepare the drink, open the microwave with the hook, heat and retrieve the bowl, move the plate through the microwave, then return the cup, bottle, and stirrer to the tray. The last cooperative manipulation placed and aligned the loaded tray while reducing the risk of spills.</p>

<p class="project-body">At the hardware and software review, we demonstrated microwave-door interaction, button pressing, and bowl and plate retrieval. The project brought together mechanism design, robot control, computer vision, and hands-on systems integration in a shared workspace.</p>
