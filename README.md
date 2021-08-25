# bumpver-action
A Github Action to use the (bumpver)[https://github.com/mbarkhau/bumpver] 
application to bump and tag branches, by running `bumpver update`.
Version 21.08.1000 (maintained by this action). 

## Inputs

## `args`

**Optional** Arguments executed as `bumpver update $args`.

## Outputs

## `out`

Output of update command

## Example usage

uses: harvidsen/bumpver-action@v1
with:
  args: '--dry'



