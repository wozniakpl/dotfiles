# dotfiles

Personal dotfiles managed with [chezmoi](https://chezmoi.io).

## Set up a new machine

```sh
curl -fsLS dot.bwozniak.com | sh
```

If `dot.bwozniak.com` is unavailable, use the direct form:

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply wozniakpl
```

You will be prompted for your **full name** and **email address** (used in `.gitconfig`).

## What gets installed

- zsh (via apt)
- git, curl, ca-certificates (via apt)
- oh-my-zsh (non-interactive)
- zsh set as the default shell

## Git aliases (via oh-my-zsh git plugin)

| Alias | Expands to |
|-------|-----------|
| `gst` | `git status` |
| `gco` | `git checkout` |
| `gp` | `git push` |
| `gl`  | `git pull` |
| `gaa` | `git add --all` |
| `gcmsg` | `git commit -m` |

## Dotfiles aliases

| Alias | Command | Description |
|-------|---------|-------------|
| `dots` | `curl -fsLS dot.bwozniak.com \| sh` | Re-apply dotfiles from anywhere |

## Docker aliases

| Alias | Command | Description |
|-------|---------|-------------|
| `dcupb` | `docker compose up --build` | Build and start services |
| `dcd` | `docker compose down` | Stop and remove containers |
| `dcdvr` | `docker compose down -v --remove-orphans` | Stop and remove containers, volumes, and orphans |
| `dck` | `docker compose kill` | Kill running services |
| `dsp` | `docker system prune -a -f` | Remove all unused images, containers, and networks |

## Stern aliases

| Alias | Command | Description |
|-------|---------|-------------|
| `st` | `stern` | Short form |
| `sta` | `stern '.*'` | Tail logs from all pods in current namespace |
| `staa` | `stern -A '.*'` | Tail logs from all pods across all namespaces |

## Kubectl aliases

| Alias | Command | Description |
|-------|---------|-------------|
| `k` | `kubectl` | Short form |
| `kgp` | `kubectl get pods` | List pods |
| `kga` | `kubectl get all` | List all resources |
| `kgaa` | `kubectl get all -A` | List all resources across namespaces |

## After bootstrap

Open a **new shell session** (or `exec zsh`) for the `chsh` change to take effect.

To reload the shell config without starting a new session:

```sh
source ~/.zshrc
```

Or restart oh-my-zsh entirely:

```sh
omz reload
```
