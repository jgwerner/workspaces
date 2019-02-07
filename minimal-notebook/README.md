# illumidesk/datascience-notebook

illumidesk/datascience-notebook is a community maintained Jupyter Notebook image.

## What It Includes

This image is uses `[jupyter/datascience-notebook](https://github.com/jupyter/docker-stacks/datascience-notebook) as the base image.

The basics:

- [Python 3 with scientific packages](https://www.anaconda.com/distribution/)
- [R](https://github.com/IRkernel/IRkernel)
- [Julia](https://github.com/JuliaLang/IJulia.jl)
- [C++ kernels with Xeus](http://quantstack.net/xeus.html)
- [Tensorflow with Keras](https://www.tensorflow.org/)
- [NodeJs (Javascript)](http://n-riesco.github.io/ijavascript/)

## Run

The basics:

    docker run -d -p 8888:8888 illumidesk/datascience-notebook

## Build

    docker build -t illumidesk/datascience-notebook .

## Verify Environment Settings

Open `env_test.ipynb` and run the cells to verify environment settings.

## Additional Options

Refer to [these docs for additional configuration options](https://jupyter-docker-stacks.readthedocs.io/en/latest/).