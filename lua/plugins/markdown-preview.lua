return {
  {
    "iamcco/markdown-preview.nvim",
    keys = {
      { "<leader>mp", "<cmd>MarkdownPreviewToggle<CR>", desc = "Markdown Preview toggle" },
    },
    ft = "markdown",
    build = function(hl)
      vim.fn["mkdp#util#install"]()
    end,
  },
}
