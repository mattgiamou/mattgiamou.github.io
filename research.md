+++
title = "Research"
hascode = true
date = Date(2019, 3, 22)
rss = "Matt Giamou's research interests."
+++
@def tags = ["syntax", "code"]

A brief summary of the research projects I've been fortunate to participate in. While my interests may seem disparate, convex optimization is the thread that loosely binds them. 

See [my scholar page](https://scholar.google.ca/citations?user=TWcYp5sAAAAJ) or [arXiv uploads](https://arxiv.org/search/?searchtype=author&query=Giamou%2C+M) for a complete list of publications.

<!-- TODO: Links to youtube videos, software, project pages, etc. -->

---

## Certifiable Sensor Calibration
~~~
<div class="row">
  <div class="container">
    <img class="left" src="/assets/img/research/egomotion.png" width="300" height="220">
    <p>
    Spatial calibration of multiple sensor calibration is crucial for accurate multi-sensor fusion. I've developed a <a href="https://ieeexplore.ieee.org/document/9235219">certifiably globally-optimal approach</a> to this classic extrinsic calibration problem for any sensor capable of describing its motion (up to scale). <a href="https://mattgiamou.ca/software/#extrinsic_sensor_calibration">My algorithms</a> are easy to use, and formally guaranteed to avoid local minima with low-noise measurements.
    </p>
    <!-- <p>
    
    </p> -->
    <div style="clear: both"></div>      
  </div>
</div>
~~~

## Distance-Geometric Inverse Kinematics

~~~
<div class="row">
  <div class="container">
    <img class="left" src="/assets/img/research/dg_ik.png" width="285" height="285">
    <p>
    My colleague <a href="https://starslab.ca/people/filip-maric/">Filip Marić </a> and I are working on <a href="https://ieeexplore.ieee.org/document/9196704">a series of papers</a> that look at inverse kinematics (IK) from a fresh distance-geometric perspective. This view eschews joint angular variables and instead describes robot kinematics with distance constraints on points fixed to the robot's joint axes. We solve the resulting quadratic optimization problems with various techniques, some of which we've <a href="http://localhost:8000/software/#inverse_kinematics">implemented in MATLAB and Python</a>.
    </p>
    <!-- <p>
    
    </p> -->
    <div style="clear: both"></div>      
  </div>
</div>
~~~

## Principled Representations of SO(3) for Learning
~~~
<div class="row">
  <div class="container">
    <img class="left" src="/assets/img/research/rss_so3.png" width="220" height="200">
    <p>
    I assisted my colleague <a href="http://valentinp.com">Valentin Peretroukhin</a> in the development of a <a href="https://roboticsconference.org/2020/program/papers/7.html">novel differentiable rotation representation</a>. We formally proved (<a href="http://localhost:8000/software/#representing_rotations_in_deep_learning">and experimentally verified</a>) that our Bingham distribution-based representation of rotations possesses (among other virtues) a continuity property that makes it an excellent choice for deep learning pipelines.
    </p>
    <!-- <p>
    
    </p> -->
    <div style="clear: both"></div>      
  </div>
</div>
~~~

## Resource-Efficient Multi-Robot SLAM
~~~
<div class="row">
  <div class="container">
    <img class="left" src="/assets/img/research/giamou-rss-2018.png" width="240" height="220">
    <p>
    Alongside <a href="http://acl.mit.edu/">colleagues at MIT</a>, I developed methods for <a href="https://ieeexplore.ieee.org/document/8460783">optimal communication policies in multi-robot SLAM</a>. Plainly speaking, <a href="http://localhost:8000/software/#resource-efficient_cooperative_slam">our algorithms</a> help a team of robots performing a collaborative mapping taks which measurements they should share with one another to create an accurate map in a bandwidth-limited or computation-constrained environment.
    </p>
    <!-- <p>
    
    </p> -->
    <div style="clear: both"></div>      
  </div>
</div>
~~~