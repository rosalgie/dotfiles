local parsers = {
  "bash",
  "c",
  "html",
  "lua",
  "markdown",
  "markdown_inline",
  "latex",
  "vim",
  "vimdoc",
}

local filetypes = {
  "sh", -- bash parser
  "c",
  "html",
  "lua",
  "markdown",
  "tex", -- latex parser
  "vim",
  "help", -- vimdoc parser
}

return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",

    -- main does not support lazy-loading.
    lazy = false,

    -- Keep installed parsers compatible with the plugin revision.
    build = ":TSUpdate",

    config = function()
      local treesitter = require("nvim-treesitter")

      -- Optional when using the default install directory.
      treesitter.setup()

      -- Replacement for `ensure_installed`.
      --
      -- This is asynchronous. On a fresh installation, reopen the buffer after
      -- parser installation finishes.
      treesitter.install(parsers)

      vim.api.nvim_create_autocmd("FileType", {
        pattern = filetypes,
        callback = function(args)
          -- Replacement for:
          -- highlight = { enable = true }
          vim.treesitter.start(args.buf)

          -- Replacement for:
          -- indent = { enable = true }
          --
          -- Treesitter indentation remains experimental.
          vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
