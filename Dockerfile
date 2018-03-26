FROM jupyter/scipy-notebook

MAINTAINER Wilder Rodrigues (wilder.rodrigues@ekholabs.ai)

USER $NB_USER

# Install TensorFlow
RUN conda install -c conda-forge tensorflow -y && \
    conda install -c conda-forge numpy keras nltk gensim -y

# install Reinforcement Learning packages:
RUN pip install gym==0.9.4
