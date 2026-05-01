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

## After bootstrap

Open a **new shell session** (or `exec zsh`) for the `chsh` change to take effect.
