FROM jupyter/scipy-notebook

MAINTAINER Wilder Rodrigues (wilder.rodrigues@ekholabs.ai)

USER $NB_USER

RUN pip install --upgrade pip
RUN conda update -n base conda

# Install TensorFlow
RUN conda install -c conda-forge tensorflow==1.9.0 -y && \
    conda install -c conda-forge numpy keras nltk gensim -y

# Install Reinforcement Learning packages:
RUN pip install gym==0.9.4

RUN pip install --upgrade tf_nightly

# Install Keras Kontrib with bug fix
RUN pip install git+https://www.github.com/ekholabs/keras-contrib.git@fix/import-normilize_data_format
