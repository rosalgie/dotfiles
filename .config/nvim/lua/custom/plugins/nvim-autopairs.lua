return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      local npairs = require("nvim-autopairs")
      local Rule = require("nvim-autopairs.rule")

      npairs.setup({
        -- Default pattern, but without %$
        ignored_next_char = [=[[%w%%%'%[%"%.%`]]=],
      })

      npairs.add_rule(Rule("$", "$", { "markdown" }))
    end,
  },
}
