# Laclede's LAN Team Fortress 2 Classic Freeplay Server in Docker

![Laclede's LAN Team Fortress 2 Classic Freeplay Server](https://raw.githubusercontent.com/LacledesLAN/gamesvr-tf2classic-freeplay/main/.misc/tf2classic-banner.png "Laclede's LAN Team Fortress 2 Classic Freeplay Server")

This repository is maintained by [Laclede's LAN](https://lacledeslan.com). Its contents are heavily tailored and tweaked for use at our charity LAN-Parties. For third-parties we recommend using this repo only as a reference example and then build your own using the parent project [gamesvr-tf2classic](https://github.com/LacledesLAN/gamesvr-tf2classic) as the base image for your customized server.

## Linux Container

### Download

```shell
docker pull lacledeslan/gamesvr-tf2classic-freeplay
```

### Run Self Tests

The image includes a test script that can be used to verify its contents. No changes or pull-requests will be accepted to this repository if any tests fail.

```shell
docker run -it --rm lacledeslan/gamesvr-tf2classic-freeplay ./ll-tests/gamesvr-tf2classic-freeplay.sh;
```

### Run Simple, Interactive Server

```shell
docker run -it --rm --net=host lacledeslan/gamesvr-tf2classic-freeplay ./srcds_run -game tf2classic +map vip_harbor +maxplayers 32 +sv_password lltest
```

## Getting Started with Game Servers in Docker

[Docker](https://docs.docker.com/) is an open-source project that bundles applications into lightweight, portable, self-sufficient containers. For a crash course on running Dockerized game servers check out [Using Docker for Game Servers](https://github.com/LacledesLAN/README.1ST/blob/master/GameServers/DockerAndGameServers.md). For tips, tricks, and recommended tools for working with Laclede's LAN Dockerized game server repos see the guide for [Working with our Game Server Repos](https://github.com/LacledesLAN/README.1ST/blob/master/GameServers/WorkingWithOurRepos.md). You can also browse all of our other Dockerized game servers: [Laclede's LAN Game Servers Directory](https://github.com/LacledesLAN/README.1ST/tree/master/GameServers).
