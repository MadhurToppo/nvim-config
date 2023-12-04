return {
  {
    "iamcco/markdown-preview.nvim",
    keys = {
      { "<leader>mp", "<cmd>MarkdownPreview<CR>", desc = "Markdown Preview" },
      { "<leader>mc", "<cmd>MarkdownPreviewStop<CR>", desc = "Markdown Preview close" },
    },
    ft = "markdown",
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
}
