# Data Science Learn

Learn basic data science through trial and error.

## Starting the Juptyer Notebook

Runs a Jupyter Notebook in a Docker container with persistent volume.

```bash
$ docker run -p 8888:8888 -v $PWD:/home/jovyan/work jupyter/base-notebook
```


## References

Mathematics for machine learning:

https://mml-book.github.io/book/mml-book.pdf


## Running tests in jupyter notebook/jupyter lab

```python
if __name__ == '__main__':
    unittest.main(argv=['first-arg-is-ignored'], exit=False)
```

## Jupyterlab error starting kernel

```bash
$ python -m ipykernel install --user
```


## Jupyterlab shortcuts rename file

`Command + r` for renaming:
```json
{
        "shortcuts": [
            {
                "command": "docmanager:rename",
                "keys": [
                    "Accel R"
                ],
                "selector": "body"
            }
        ]
}
```

## Jupyter running command with python variables

```py
name = 'john doe'
!echo {name}
```

## Jupyter right way of installing modules

Bad:
```python
!pip3 install module
```

Good:
```python
import sys
!{sys.executable} -m pip install spacy
!{sys.executable} -m spacy download en_core_web_sm
```

## Installing Jupytext

Allows the notebook to be saved as markdown:
```bash
$ brew install jupyterlab
$ pip install jupytext
$ jupyter labextension install jupyterlab-jupytext
```

## Add code formatting for Jupyter
https://jupyterlab-code-formatter.readthedocs.io/en/latest/

# Git
https://www.wrighters.io/version-control-for-jupyter-notebooks/

### recommendation with dbscan

https://www.datacamp.com/community/tutorials/dbscan-macroscopic-investigation-python


## Fetching CSV data from Github using Jupyter

Useful for Google Colab/Kaggle:

```
!mkdir data
!ls data
!curl -L https://github.com/alextanhongpin/blueprints-for-text-analytics-python/blob/master/data/abcnews-date-text.csv.gz?raw=true -o data/abcnews-date-text.csv.gz
import pandas as pd 
```

## Jupyterlab Plot

```
!pip install ipympl
%matplotlib widget
```

Alternative, which is better:

```
import matplotlib.pyplot as plt
plt.rcParams["figure.figsize"] = (20, 10)
```


## Upgrade all pip modules

```bash
$ pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip3 install -U 
```
