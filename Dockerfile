FROM jupyter/scipy-notebook

MAINTAINER Wilder Rodrigues (wilder.rodrigues@ekholabs.ai)

USER $NB_USER

# Install TensorFlow
RUN conda install --quiet --yes 'tensorflow'

# Install other dependencies. The last two are used for NLP (notebooks in progess).
RUN pip install tflearn keras nltk gensim
