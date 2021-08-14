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

### Run Servers

#### VIP Server

```shell
docker run -it --rm --net=host lacledeslan/gamesvr-tf2classic-freeplay ./srcds_run -game tf2classic +map vip_harbor +maxplayers 32 +mapcycle "mapcycle_quickplay_vip.txt"
```

#### Domination Server

```shell
docker run -it --rm --net=host lacledeslan/gamesvr-tf2classic-freeplay ./srcds_run -game tf2classic +map dom_oilcanyon +maxplayers 32 +mapcycle "mapcycle_quickplay_dom.txt"
```

#### Base Game Modes

##### Arena Server

```shell
docker run -it --rm --net=host lacledeslan/gamesvr-tf2classic-freeplay ./srcds_run -game tf2classic +map arena_granary +maxplayers 32 +mapcycle "mapcycle_quickplay_arena.txt"
```

##### Capture The Flag

```shell
docker run -it --rm --net=host lacledeslan/gamesvr-tf2classic-freeplay ./srcds_run -game tf2classic +map ctf_landfall +maxplayers 32 +mapcycle "mapcycle_quickplay_ctf.txt"
```

##### Control Point Server

```shell
docker run -it --rm --net=host lacledeslan/gamesvr-tf2classic-freeplay ./srcds_run -game tf2classic +map cp_tidal_v4 +maxplayers 32 +mapcycle "mapcycle_quickplay_cp.txt"
```

##### King of the Hill Server

```shell
docker run -it --rm --net=host lacledeslan/gamesvr-tf2classic-freeplay ./srcds_run -game tf2classic +map koth_lakeside_final +maxplayers 32 +mapcycle "mapcycle_quickplay_koth.txt"
```

##### Payload Server

```shell
docker run -it --rm --net=host lacledeslan/gamesvr-tf2classic-freeplay ./srcds_run -game tf2classic +map pl_thundermountain +maxplayers 32 +mapcycle "mapcycle_quickplay_payload.txt"
```

##### Payload Race Server

```shell
docker run -it --rm --net=host lacledeslan/gamesvr-tf2classic-freeplay ./srcds_run -game tf2classic +map plr_nightfall_final +maxplayers 32 +mapcycle "mapcycle_quickplay_payloadrace.txt"
```

##### All maps Server

```shell
docker run -it --rm --net=host lacledeslan/gamesvr-tf2classic-freeplay ./srcds_run -game tf2classic +map ctf_2fort +maxplayers 32 +mapcycle "mapcycle_default.txt"
```

## Getting Started with Game Servers in Docker

[Docker](https://docs.docker.com/) is an open-source project that bundles applications into lightweight, portable, self-sufficient containers. For a crash course on running Dockerized game servers check out [Using Docker for Game Servers](https://github.com/LacledesLAN/README.1ST/blob/master/GameServers/DockerAndGameServers.md). For tips, tricks, and recommended tools for working with Laclede's LAN Dockerized game server repos see the guide for [Working with our Game Server Repos](https://github.com/LacledesLAN/README.1ST/blob/master/GameServers/WorkingWithOurRepos.md). You can also browse all of our other Dockerized game servers: [Laclede's LAN Game Servers Directory](https://github.com/LacledesLAN/README.1ST/tree/master/GameServers).
