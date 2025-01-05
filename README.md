# Tetraphobia Neovim Config
My neovim config

## Installation
Install dependencies.

```bash
# Pacman
sudo pacman -S python-neovim nodejs npm xclip wl-clipboard fd ripgrep zls
sudo npm install -g neovim tree-sitter-cli
```

For python support, create a virtual env in the config directory.
```bash
python -m venv venv
source venv/bin/activate
pip install pynvim
```

Clone this repo to `$HOME/.config/nvim`.

```bash
git clone git@github.com:tetraphobia/nvim-config.git ~/.config/nvim
```

## Usage
Run `nvim`, then run `:Lazy` and sync everything. Restart and you should be good to go.
