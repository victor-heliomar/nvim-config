-- Toggle Term help us to open terminal in neovim easily

-- To use it, you should write `:ToggleTerm` in normal mode. Additionally, you can add an extra param to ToggleTerm to navigate through multiple Terminal, for example: `:ToggleTerm 2` to open the second terminal

-- To change from terminal mode to normal mode, use ctrl + \ + n
return {
  {'akinsho/toggleterm.nvim', version = "*", config = true}
}
