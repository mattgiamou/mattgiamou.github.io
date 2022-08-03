@def title = "Software"
@def hascode = true

<!-- @def rss = "Matt Giamou's software"
@def rss_title = "Software"
@def rss_pubdate = Date(2019, 5, 1)

@def tags = ["syntax", "code", "image"] -->

A summary of software I've helped develop, as well as some that I like and use. Most of my projects involve Python and MATLAB, but I've recently become enamoured with [Julia](https://julialang.org/).

---

# Packages I've Contributed To

### Extrinsic Sensor Calibration

I am actively researching new methods for "hand-eye" or "egomotion sensor" calibration. My colleagues and I have implemented some of these algorithms in [certifiable-calibration](https://github.com/utiasSTARS/certifiable-calibration), a Python and MATLAB repository.

Stay tuned for newer and shinier algorithms implemented in Julia with ROS integration!

### Inverse Kinematics

My colleague [Filip Marić](https://starslab.ca/people/filip-maric/) and I are actively developing [graphIK](https://github.com/utiasSTARS/graphIK), a Python library for research into distance-geometric solutions to inverse kinematics for redundant manipulators in the presence of obstacles. We also developed [MATLAB code](https://github.com/utiasSTARS/sos-ik) for a sparse sum-of-squares approach to planar and spherical IK.

### Representing Rotations in Deep Learning

I worked with [Valentin Peretrouhkin](https://valentinp.com/) on [bingham-rotation-learning](https://github.com/utiasSTARS/bingham-rotation-learning), a novel differentiable representation of [$\text{SO}(3)$](https://en.wikipedia.org/wiki/3D_rotation_group) as a [Bingham distribution](https://en.wikipedia.org/wiki/Bingham_distribution) for deep learning.

### Resource-Efficient Cooperative SLAM

I worked with my [colleagues at MIT](http://acl.mit.edu/) on [MATLAB code](https://github.com/utiasSTARS/cslam-resource) for resource-efficient "communication policies" for multi-robot cooperative SLAM.

# Software I Like

Here's a list of tools I think everyone should know about!

### Obsidian

I've never been a big fan of productivity software or fancy note-taking apps, but [Obsidian](https://obsidian.md/)'s simplicity has charmed me! Simple hyperlinked markdown files that support LaTeX with little to no fuss.

### Texpad

[Texpad](https://www.texpad.com/) is easy to configure and wonderful to look at - worth every penny!

### Franklin

I built this website with [Franklin](https://franklinjl.org/)! I find it much easier to configure than Jekyll, and it's highly integrated with Julia.
