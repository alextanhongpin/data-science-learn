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

