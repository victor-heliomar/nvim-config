-- nvim-autopairs is a plugin that helps you to write pairs easily. For example, when you write a pair of parentheses, it will automatically add the closing parentheses for you. It also supports other pairs like quotes, brackets, etc.
-- You don't need to do nothing to make it work, just write your pairs and it will automatically add the closing pair for you.
return {
  'windwp/nvim-autopairs',
  config = function()
    require('nvim-autopairs').setup()
  end,
}
