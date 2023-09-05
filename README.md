# dot-nvim

dot-nvim is a configuration and plugin setup for Neovim, a highly extensible text editor. This configuration provides a streamlined and feature-rich environment for coding, scripting, and text editing.

## Features

- **Plugin Management**: dot-nvim uses a package manager like **[Packer](https://github.com/wbthomason/packer.nvim)** to manage plugins. These plugins enhance Neovim with additional functionality and features.

- **Custom Keybindings**: The configuration includes custom keybindings for various actions and plugins to boost your productivity.

- **Syntax Highlighting**: Enjoy syntax highlighting for a wide range of programming languages and file types.

- **Autocompletion**: Benefit from autocompletion suggestions as you type, powered by plugins like LSP (Language Server Protocol).

- **LSP Integration**: Integrated support for Language Server Protocol offers code navigation, linting, formatting, and more for various programming languages.

- **Themes**: Multiple color schemes and themes are available to personalize your Neovim appearance.

## Prerequisites

Before using this configuration, ensure you have the following software installed:

- [Neovim](https://neovim.io/): The core text editor.

## Installation

1. Clone this repository to your local machine:

```sh
git clone https://github.com/lourq/dot-nvim.git ~/.config/nvim
```

2. Install the required plugins. Launch Neovim and run the following command:

```vim
:PackerInstall
```

This will install the plugins specified in the configuration.

3. Customize the configuration to your liking by editing **init.lua**.
4. Restart Neovim to apply your changes.

## Usage

- Launch Neovim:

```sh
nvim
```

- Enjoy your enhanced text editing environment with dot-nvim!

## Customization

You can customize this configuration further by editing the init.lua file. Feel free to add or remove plugins, change keybindings, or modify settings to suit your preferences.

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/lourq/dot-nvim/blob/master/LICENSE) file for details.
