# Shared Fish configuration

This repository contains authored Fish configuration only. Provision it with
`tumereu/ubuntu-desktop-setup`; its Fish role installs the loader and prerequisites.

- Edit `fish/conf.d/` for shared aliases, colors, and integrations.
- Edit `fish/functions/` for autoloaded functions and the prompt.
- Add GitHub `owner/repository` entries to `fish/plugins.txt` for Fisher plugins,
  then resolve the Ansible version lock and apply the Fish role.
- Put machine-only overrides in `~/.config/fish/local.fish` and local functions in
  `~/.config/fish/functions/`.
- Run `dotfiles-update` to fast-forward this checkout and apply the locked plugins.
  Open a new shell to load changes. Plugin upgrades require refreshing the lock.

Node versions are managed by fnm. Use `fnm use --install-if-missing 22` for a shell;
`node --version > .node-version` records that exact version for the directory.
The configured hook also understands `.nvmrc` and searches parent directories.

Neovim lives in the separate `tumereu/nvim-configs` repository. Git configuration,
global ignores, IdeaVim settings, and desktop controls are provisioned by Ansible.
