# Use Protocol

Protocol in Python is similar to `interface` in `golang`. Using protocol in Python is preferable over using `ABC` (abstract base class) since you don't need to extend the previous class.

```python
from typing import Protocol


class Repository(Protocol):
    def find(self) -> str:
        pass


class PostgresRepository:
    def find(self) -> str:
        return "hello"


def repo_get(repo: Repository) -> None:
    print(f"Repo {type(repo).__name__}: {repo.find()}")


repo = PostgresRepository()
repo_get(repo)
```
