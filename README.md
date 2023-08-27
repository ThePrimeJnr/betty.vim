# Betty.vim: Real-Time Linting and Highlighting Plugin for Neovim

![Betty.vim](https://your-image-url.com)

**Betty.vim** is a Neovim plugin that enhances your coding experience by providing real-time linting and highlighting of code errors and warnings using the Betty style checker. This plugin is designed to improve your workflow and help you catch and correct errors as you write code, all within the comfort of your text editor.

## Table of Contents

- [Installation](#installation)
- [Features](#features)
- [Acknowledgement](#acknowledgement)
- [Contributing](#contributing)
- [License](#license)

## Installation

### Requirements

- Neovim 0.5 or vim 
- [Betty](https://github.com/holbertonschool/Betty) style checker installed

### Using a Plugin Manager (Recommended)

1. Install a plugin manager if you haven't already (e.g., [vim-plug](https://github.com/junegunn/vim-plug), [dein.vim](https://github.com/Shougo/dein.vim), or [minpac](https://github.com/k-takata/minpac)).

2. Add the following line to your Neovim configuration file (`init.vim` for VimScript or `init.lua` for Lua):

   For VimScript (`init.vim`):

   ```vim
   Plug 'destinedcodes/betty.vim'
   ```

   For Lua (`init.lua`):

   ```lua
   use 'destinedcodes/betty.vim'
   ```

   Replace `'path/to/your/betty.vim'` with the actual path to your `betty.vim` directory.

3. Save your configuration and run `:PlugInstall` (or the respective command for your plugin manager).

### Manual Installation

1. Clone this repository into your Neovim configuration directory or any directory of your choice.

2. Add the following line to your Neovim configuration file (`init.vim` for VimScript or `init.lua` for Lua):

   For VimScript (`init.vim`):

   ```vim
   set runtimepath+=/path/to/your/betty.vim
   ```

   For Lua (`init.lua`):

   ```lua
   vim.cmd('set runtimepath+=/path/to/your/betty.vim')
   ```

   Replace `/path/to/your/betty.vim` with the actual path to your `betty.vim` directory.

## Features

- **Real-Time Linting:** Betty.vim integrates seamlessly with the Betty style checker to provide real-time linting of your code as you write, highlighting errors and warnings within your Neovim editor.

- **Effortless Error Tracking:** Easily spot errors and warnings in your code without leaving your editor, reducing the need to switch between different tools or terminals.

## Acknowledgement

This plugin is developed by Destiny Saturday a student at the ALX Software Engineering program to enhance the coding experience of ALX students. I acknowledge the invaluable contribution of the Betty style checker in promoting code quality and consistency.

## Contributing

Contributions are welcome! If you'd like to contribute to Betty.vim, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and commit them with descriptive messages.
4. Submit a pull request to the `main` branch of this repository.

## License

Betty.vim is licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute it as outlined in the license.

---

 Ihope that Betty.vim enhances your Neovim experience and helps you produce cleaner, error-free code. If you have any questions, feedback, or suggestions, feel free to open an issue on GitHub.

Happy coding!
