return {
  {
    "iamcco/markdown-preview.nvim",
    keys = {
      { "<leader>mp", "<cmd>MarkdownPreviewToggle<CR>", desc = "Markdown Preview toggle" },
    },
    ft = "markdown",
    build = function(hl)
      vim.fn["mkdp#util#install"]()
      -- Remove heading highlights
      hl.Title = { fg = "NONE", bg = "NONE" }
      hl.markdownH1 = { fg = "NONE", bg = "NONE" }
      hl.markdownH2 = { fg = "NONE", bg = "NONE" }
      hl.markdownH3 = { fg = "NONE", bg = "NONE" }
      hl.markdownH4 = { fg = "NONE", bg = "NONE" }
      hl.markdownH5 = { fg = "NONE", bg = "NONE" }
      hl.markdownH6 = { fg = "NONE", bg = "NONE" }
    end,
  },
}
