# bazy

Unbreakable db workshop setup with northwind and olejki

## usage

```sh
docker-compose up -d

mycli -p password
```

### usage with nix

If you have nix with direnv set up correctly, then to setup the env run `direnv allow .`

```sh
docker-compose up -d

mcli # my shortcut with hardcoded password, see default.nix
```

## fuckup

If some mishap hapenns then run `./fuckup` to reset

> Note: check this script as it does some destructive stuff
