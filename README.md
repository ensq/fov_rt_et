Foveated Real-time Ray Tracing
======

During the development of a DirectX real-time ray tracer, computational complexity was demed too high for that of target system specifications. As such, foveation was deemed an appropriate candidate for the purposes of improving performance without impairing the percieved quality of a rendered image. Using a Tobii eye tracking development kit, we successfully optimized said renderer to reduce the execution time of several stages in the ray tracing algorithm; all performing in over 90% less time.

This paper presents an overview of the devised ray tracing algorithm, which is open-source, and measurements of the performance improvements gathered during an experiment comparing the foveated ray tracing algorithm to the original non-foveated algorithm.

Furthermore, the author's thoughts on future work in the area is presented along with information on how to retrieve the open-source foveated ray tracer devised for the purposes of this study.

---

Click [here](https://github.com/CaterHatterPillar/dv2519/releases/download/v1.0/fov_rt_et.pdf) for a compiled version of the article.
