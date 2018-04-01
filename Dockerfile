FROM jupyter/scipy-notebook

MAINTAINER Wilder Rodrigues (wilder.rodrigues@ekholabs.ai)

USER $NB_USER

# Install TensorFlow
RUN conda install -c conda-forge tensorflow -y && \
    conda install -c conda-forge numpy keras nltk gensim -y

# Install Reinforcement Learning packages:
RUN pip install gym==0.9.4

# Install Keras Kontrib
RUN pip install git+https://www.github.com/keras-team/keras-contrib.git
