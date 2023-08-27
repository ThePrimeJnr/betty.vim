# Betty.vim: Real-Time Linting and Highlighting Plugin for Neovim

🚀 **Enhance your coding experience with Betty.vim!** 🚀

Betty.vim is a Neovim plugin that takes your coding experience to the next level by providing real-time linting and highlighting of code errors and warnings using the Betty style checker. Say goodbye to manual error checking and debugging - Betty.vim helps you catch and correct issues as you write code, all within the comfort of your favorite text editor. ⚡️

## Table of Contents

- [Installation](#installation)
- [Features](#features)
- [Acknowledgement](#acknowledgement)
- [Contributing](#contributing)
- [License](#license)

## Installation

### Prerequisites

- Neovim 0.5
- [Betty](https://github.com/holbertonschool/Betty) style checker installed

### Using a Plugin Manager (Recommended)

//TODO

### Manual Installation

1. **Clone the Repository:** Start by cloning this repository to your local machine using the following command:
   ```sh
   git clone https://github.com/destinedcodes/betty.vim.git
   ```
   
2. **Prepare Neovim Directory:**
   If you don't have a `~/.config/nvim/lua` directory already, create it:
   ```sh
   mkdir -p ~/.config/nvim/lua
   ```
   
3. **Copy the betty Lua Directory:**
   Copy the `lua/betty` directory to your Neovim Lua configuration directory:
   ```sh
   cp -r betty.vim/lua/betty ~/.config/nvim/lua/
   ```
   
4. **Require the nvim Plugin:**
   Add `require("betty")` to your Neovim configuration file `~/.config/nvim/init.lua`:
   ```lua
   echo 'require("betty")' >> ~/.config/nvim/init.lua

## Features

🧹 **Real-Time Linting:** Betty.vim seamlessly integrates with the Betty style checker, offering you real-time code linting. Watch as errors and warnings are highlighted as you type, making it a breeze to spot and fix issues.

🚦 **Effortless Error Tracking:** Say goodbye to tediously tracking down errors. Betty.vim highlights them right in your editor, saving you precious time and reducing the need to switch between tools.

## Acknowledgement

🙌 This plugin is developed by Destiny Saturday, an ALX Software Engineering student, to supercharge the coding experience of fellow ALX students. Special thanks to the Betty style checker for promoting code quality and consistency.

## Contributing

🌟 Contributions Welcome! 🌟 If you'd like to contribute to Betty.vim, follow these steps:
1. **Fork the Repository.**
2. **Create a New Branch:** Name it according to your feature or bug fix.
3. **Make Your Changes:** Commit with clear and concise messages.
4. **Submit a Pull Request:** Send it to the `main` branch of this repository.

## License

📜 Betty.vim is licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute it as outlined in the license.

---

🚀 I hope Betty.vim elevates your Neovim experience, helping you produce cleaner, error-free code. If you have questions, feedback, or suggestions, open an issue on GitHub.

🌈 Happy Coding! 🌈
