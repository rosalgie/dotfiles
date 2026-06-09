return {
  dir = vim.fn.expand("~/Programming/md-pdf.nvim"),
  name = "md-pdf.nvim",
  lazy = true,
  keys = {
    {
      "<leader>,",
      function()
        require("md-pdf").convert_md_to_pdf()
      end,
      desc = "Markdown preview",
    },
  },
  ---@type md-pdf.config
  opts = {
    toc = false,
    pdf_engine = "pdflatex",
  },
}
