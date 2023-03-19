-- Copilot helps u with A.I autocomplete in your code.
-- You can accept the autocompletion using Ctrl + J. Also you can change that keybind in the config below.
--
-- First step to use it is authenticate with github, to do that you should write `:Copilot setup` in normal mode
-- Then it'll start to show autocomplete options in your code.
--
-- NOTICE: You should run nvim using node 16 or higher, otherwise it won't work.
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

return {
  'github/copilot.vim'
}
