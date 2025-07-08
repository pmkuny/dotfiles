
[AI Disclosure](https://github.com/pmkuny/AID/tree/main)
- **SAID**
- **DAID**

# Dotfiles

Personal configuration files and automated setup for development environments.

- **Shell**: bash/zsh aliases, prompt, and environment variables
- **Git**: user settings, colors, and default behaviors  
- **Vim**: editor preferences and key bindings
- **Tmux**: terminal multiplexer settings
- **Input**: readline/vi mode configurations

## Why Use Dotfiles?

- **Consistency**: Same environment across multiple machines
- **Backup**: Version-controlled configurations prevent loss
- **Portability**: Quick setup on new systems
- **Sharing**: Easy to share configurations with others

## Automated Setup

### Preferred

Use GNU stow to link the files in this directory to ~/.config/$file  `.stowrc` handles this target linkage, so you can change it if you want.

### Usage

```bash
stow .
```

### Alternative - Ansible

The `playbook.yaml` Ansible playbook automates environment setup.

### Ansible - What it does:
1. **Installs Git** for version control
2. **Installs Oh My Zsh** shell framework
3. **Clones dotfiles** from GitHub repository
4. **Links configurations** using GNU Stow
5. **Installs Homebrew** package manager
6. **Installs packages** from `homebrew_pkgs` list
7. **Installs applications** from `homebrew_casks` list
8. **Creates ~/code/** directory for projects
9. **Verifies installation** with tests

### Usage:
```bash
ansible-playbook playbook.yaml
```
