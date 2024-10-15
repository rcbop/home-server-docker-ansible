# Setup home server

## Prerequisites

- Setup Cloudflare tunnel in the linux server

## Access through Cloudflare Tunnel

Install cloudflared, authenticate and setup ssh config `~/.ssh/config`:

```
Host ssh.public.domain
	IdentityAgent ~/.1password/agent.sock   # if using 1password
	ProxyCommand /usr/local/bin/cloudflared access ssh --hostname %h
```

## Services

| **Application**                 | **Description**                      |
|---------------------------------|--------------------------------------|
| [Jellyfin](https://jellyfin.org/) | Handles the work of serving media files to various player clients
| [Jellyseerr](https://github.com/Fallenbagel/jellyseerr) | Request management UI and media discovery tool for Jellyfin, Sonarr & Radarr ecosystem
| [Sonarr](https://sonarr.tv) | Automatically searches for torrents for TV series, watches for new episodes
| [Radarr](https://radarr.video) | Automatically searches for torrents for Movies
| [Bazarr](https://www.bazarr.media/) | Companion application to Sonarr and Radarr that manages and downloads subtitles
| [Prowlarr](https://prowlarr.com/) | Proxy for various tracker sites. Takes queries from Sonarr/Radarr and translates them into tracker-site-specific queries and relays responses
| [QBittorrent](https://www.qbittorrent.org/) | BitTorrent client with a web interface. Handles downloads given by Sonarr/Radarr. Use Gluetun network for privacy.
| [Homepage](https://gethomepage.dev)| Home services dashboard
| [Traefik](https://traefik.io)| Reverse proxy. Configures itself automatically and dynamically via labels in Docker
| [Nextcloud](https://nextcloud.com/) | Open source data storage and synchronization system
| [Speedtest Tracker](https://github.com/alexjustesen/speedtest-tracker) | Internet performance tracking application
| [Portainer](https://www.portainer.io/) | Simplifies Docker container management
| [Adguard Home](https://github.com/AdguardTeam/AdGuardHome) | DNS server that re-routes tracking domains to a “black hole”
