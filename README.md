# dotfiles

Personal dotfiles managed with [chezmoi](https://chezmoi.io).

## Set up a new machine

```sh
curl -L dot.bwozniak.com | sh
```

If `git` is available and already configured, your name and email are read from `git config` automatically — no prompt. Otherwise you will be asked; defaults to `Bartosz Woźniak` / `17177420+wozniakpl@users.noreply.github.com` if you just press Enter.

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

## Per-machine git config (signing, etc.)

`~/.gitconfig` includes `~/.gitconfig.local` if it exists. Put per-machine settings there — chezmoi does not manage that file, so `dots` stays idempotent.

Example for GPG commit signing:

```ini
# ~/.gitconfig.local
[user]
	signingkey = YOUR_KEY_ID

[commit]
	gpgsign = true

[tag]
	gpgsign = true

[gpg]
	program = /usr/local/bin/gpg   # or /opt/homebrew/bin/gpg on Apple Silicon
```

## Start fresh

To remove chezmoi state and all managed dotfiles:

```sh
chezmoi purge --force
```

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
