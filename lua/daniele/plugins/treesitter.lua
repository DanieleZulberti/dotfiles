return {{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "javascript", "typescript", "css" },
          sync_install = false,
	  auto_install = true,
          highlight = { enable = true },
	  additional_vim_regex_highlithing = false,
          indent = { enable = true },
        })
    end
}}
