# Data Science Learn

Learn basic data science through trial and error.

## Starting the Juptyer Notebook

Runs a Jupyter Notebook in a Docker container with persistent volume.

```bash
$ docker run -p 8888:8888 -v $PWD:/home/jovyan/work jupyter/base-notebook
```
