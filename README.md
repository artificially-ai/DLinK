# DLinK

The 'Deep Learning in Keras' repository contains examples on how to use Keras with TensorFlow as backend and also on how to use TensorFlow on its own.

The examples cover a straightforward start, from shallow to intermediate, deep and CNN networks. It also shows how the trained model can be tested and evaluated.

## Build Docker Image

After cloning this repository, please execute the command below to build the Docker image.

```
docker build -t ekholabs/deeplearning-stack .
```

## Run Docker Container

Once you have built the image, please execute the command below to run the container.

```
docker run -v [path_to_project]/DLinK:/home/jovyan/work --rm -p 8888:8888 ekholabs/deeplearning-stack
```

* Remark: 'jovyan' is the default Docker user.

## Jupyter Notebooks

After starting the Docker container, copy the Jupyter notebook URL and start working.

* Remark: if you face problems concerning lack of resources, please increase your Docker Engine memory. I tested the notebooks in a MacBook Pro with 16GB of RAM. I dedicated 5GB to my Docker Engine.

## TensorBoard

If you want to visualise the loss and accuracy metrics, just execute TensorBoard pointing to your logs directory:

```
tensorboard --logdir [path_to_project]/DLinK/notebooks/logs
````

* Remark: the 'logs' directory is not part of the repository. It has to be created under the 'notebooks' directory. All the Jupyter notebook are already configured to use 'notebooks/logs' for the TensorBoard files.
