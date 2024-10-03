#  Docker envs

A collection of docker environments that I ocassionally use (primarily for local development), along with scripts to manage them.

## Usage

Usage is quite simple using the make file.

To bring a container up:

```bash
make <name_of_env>_up
```
e.g
```bash
make simple_redis-up
```

To take it down: 

```bash
make <name_of_env>_down
```
e.g
```bash
make simple_redis-down
```

The pattern is `<name_of_env>_<docker_compose_command>`, therefore the pattern is applicable to other docker-compose commands such as `logs`, `restart` etc.

One additional command that does not fit into this pattern is the cleanup command.  This command will remove any dangling volumes and/or images not in use, thus freeing up disk space to allow for other activities.  To run it, use the command:
```bash
make cleanup
```
Note: you may see some errors, however these can be mostly ignored - the clean up script in it's current form has been used for serveral years at this point with no unwanted side effects from it's usage.

## Envs

### simple_redis

As the name implies, a very simple bare-bones redis instance.
