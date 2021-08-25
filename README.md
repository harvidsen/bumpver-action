# bumpver-action
A Github Action to use the [bumpver](https://github.com/mbarkhau/bumpver)
application to bump and tag branches, by running `bumpver update`. The current 
version is v1.

> ***Note:*** This action requires a `bumpver.toml` to be present when executed.

## Inputs

- `git-user-email` (*default*: `bumpver@action`)
    - User email for tagging commit

- `git-user-name` (*default*: `bumpver@action`)
    - User name for tagging commit

- `args` 
    - Arguments executed as `bumpver update $args`.

## Outputs

- `out`
    - Output of update command

## Example usage
Do test run
```
name: "Bump version"
on:
  push:
    branches:
      - main

jobs:
  update-version:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2.3.4
      - uses: harvidsen/bumpver-action@v1
        with:
          args: --major --dry

```
