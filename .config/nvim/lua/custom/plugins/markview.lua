return {
  "OXY2DEV/markview.nvim",
  lazy = false,

  config = function()
    require("markview").setup({
      html = {
        enable = true,

        container_elements = {
          enable = true,
        },

        headings = {
          enable = true,
        },

        void_elements = {
          enable = true,
        },
      },

      latex = {
        enable = true,

        blocks = {
          enable = true,
        },

        inlines = {
          enable = true,
        },

        commands = {
          enable = true,
        },

        escapes = {
          enable = true,
        },

        fonts = {
          enable = true,
        },

        parenthesis = {
          enable = true,
        },

        subscripts = {
          enable = true,
        },

        superscripts = {
          enable = true,
        },

        symbols = {
          enable = true,
        },

        texts = {
          enable = true,
        },
      },
    })
  end,
}
