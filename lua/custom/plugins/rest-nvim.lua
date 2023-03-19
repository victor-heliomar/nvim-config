-- rest-nvim is a plugin that helps you to make http requests in neovim easily. For example, when you write a request, it will automatically add the response for you. It also supports other requests like GET, POST, PUT, DELETE, etc.
-- To use it, you should create a .http file and open it with neovim. Then place the cursor in the petition and press `<Space>f` in normal mode to made the request.
-- Here are some examples of petitions: https://github.com/rest-nvim/rest.nvim/tree/main/tests

vim.keymap.set('n', '<Space>f', '<Plug>RestNvim')
return {
  "rest-nvim/rest.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("rest-nvim").setup({
      -- Open request results in a horizontal split
      result_split_horizontal = true,
      -- Keep the http file buffer above|left when split horizontal|vertical
      result_split_in_place = true,
      -- Skip SSL verification, useful for unknown certificates
      skip_ssl_verification = false,
      -- Encode URL before making request
      encode_url = true,
      -- Highlight request on run
      highlight = {
        enabled = true,
        timeout = 150,
      },
      result = {
        -- toggle showing URL, HTTP info, headers at top the of result window
        show_url = true,
        show_http_info = true,
        show_headers = true,
        -- executables or functions for formatting response body [optional]
        -- set them to false if you want to disable them
        formatters = {
          json = "jq",
          html = function(body)
            return vim.fn.system({"tidy", "-i", "-q", "-"}, body)
          end
        },
      },
      -- Jump to request line on run
      jump_to_request = false,
      env_file = '.env',
      custom_dynamic_variables = {},
      yank_dry_run = true,
   })
  end
}

