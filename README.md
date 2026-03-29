# vim

Neovim config. Uses [lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management — `lazy-lock.json` pins exact versions for reproducible installs across machines.

## Plugins

| Plugin | Purpose |
|--------|---------|
| nvim-treesitter | Syntax highlighting and indentation |
| telescope.nvim | Fuzzy finding (files, grep, buffers) |
| mason.nvim | LSP server installer |
| mason-lspconfig.nvim | Bridges Mason with Neovim's built-in LSP |
| nvim-cmp | Completion engine |
| pyright | Python language server |
| clangd | C/C++ language server |

## Key bindings

| Key | Action |
|-----|--------|
| `<Space>ff` | Find files |
| `<Space>fg` | Live grep (find in files) |
| `<Space>fb` | Buffers |
| `<Space>fr` | Recent files |
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | References |
| `K` | Hover docs |
| `<Space>rn` | Rename symbol |
| `<Space>ca` | Code action |
| `<Space>f` | Format buffer |
| `[d` / `]d` | Previous/next diagnostic |
| `<Space>e` | Show diagnostic float |
| `<Space>s` | Reload config |

## Setup

### macOS / Linux

```bash
git clone git@github.com:kristux/vim.git ~/git/vim
ln -s ~/git/vim ~/.config/nvim
```

Open `nvim` — lazy.nvim bootstraps itself, then installs all plugins and LSP servers automatically. Quit and reopen once after the initial install.

### Windows

Neovim on Windows reads config from `%LOCALAPPDATA%\nvim\` (e.g. `C:\Users\you\AppData\Local\nvim\`).

**Prerequisites:** [Neovim](https://github.com/neovim/neovim/releases/latest), [Git for Windows](https://git-scm.com/), and a C compiler for Treesitter (either [LLVM/clang](https://releases.llvm.org/) or [MSYS2](https://www.msys2.org/) with `mingw-w64-x86_64-gcc`).

Clone the repo:

```powershell
git clone git@github.com:kristux/vim.git $env:USERPROFILE\git\vim
```

Create a junction (no admin rights required) pointing Neovim at the repo:

```powershell
New-Item -ItemType Junction -Path "$env:LOCALAPPDATA\nvim" -Target "$env:USERPROFILE\git\vim"
```

Open `nvim` — same as macOS, lazy.nvim installs everything. Quit and reopen once after the initial install.

> **Note:** the `~/.vim` symlink used on macOS/Linux is not needed on Windows — Neovim does not look there on that platform.

#### Compiler note

nvim-treesitter compiles parsers from C source. On Windows this requires a compiler on `PATH`. The easiest options:

- **LLVM:** install from [releases.llvm.org](https://releases.llvm.org/) and ensure `clang` is on `PATH`
- **MSYS2:** install, then `pacman -S mingw-w64-x86_64-gcc` and add `C:\msys64\mingw64\bin` to `PATH`

## Adding plugins

Add a spec to `lua/plugins.lua`, then run `:Lazy install` inside Neovim. Commit the updated `lazy-lock.json` to pin the version.

## Updating plugins

```
:Lazy update
```

Commit the updated `lazy-lock.json` afterwards. On other machines, run `:Lazy restore` to sync to the locked versions rather than pulling latest.
