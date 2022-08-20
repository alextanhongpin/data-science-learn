# Use MyPy in Jupyterlab for validating typings

Use type annotations to make your code more maintainable. To enable mypy validation on Jupyterlab, install `nb_mypy` [^1]:

```bash
$ pip instally nb_mypy
```

Then enable it as follow in your notebook:
```python
%load_ext nb_mypy
%nb_mypy On
```

The typings will now be validated:
```python
from typing import NewType

Name = NewType("Name", str)


def greet(name: Name) -> None:
    print(f"hello {name}")


greet(Name("john"))
greet("john")
```

Output:
```
<cell>11: error: Argument 1 to "greet" has incompatible type "str"; expected "Name"
hello john
hello john
```


[^1]: https://pypi.org/project/nb-mypy/
