# bumpver-action
A Github Action to use the [bumpver](https://github.com/mbarkhau/bumpver)
application to bump and tag branches, by running `bumpver update`.
Version v1 (maintained by this action). 

## Inputs
- `git-user-email` **default**: `bumpver@action`
-- User email for tagging commit

- `git-user-name` **default**: `bumpver@action`
-- User name for tagging commit

- `args` 
-- Arguments executed as `bumpver update $args`.

## Outputs

- `out`
--Output of update command

## Example usage

uses: harvidsen/bumpver-action@v1
with:
  args: '--dry'

