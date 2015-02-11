Foveated Real-time Ray Tracing
======

During development of a DirectX ray tracer, computational complexity is deemed too high for target system specifications.
Accordingly, foveation - having been used to improve rasterization performance in the past - is deemed appropriate for the purposes of optimizing performance without impairing perceived scene quality.
Using a Tobii eye tracker, we successfully optimize rendering to reduce frame time by over $90\%$.

We present an open-source implementation of foveated ray tracing, attesting that the performance benefits of foveation demonstrated by peers in rasterization extends to ray tracing.
This paper presents an overview of the devised algorithm, which is open-source, along with results garnered during an experiment comparing the foveated implementation to the non-foveated algorithm.
Furthermore, the authors' conclusions and thoughts on future work in the area is presented along with information on how to retrieve the solution for further study.

---

Click [here](https://github.com/CaterHatterPillar/dv2519/releases/download/v1.1/fov_rt_et.pdf) for a compiled version of the article.

Click [here](https://github.com/CaterHatterPillar/raytrace-et) to view the source code of the devised ray tracer.
