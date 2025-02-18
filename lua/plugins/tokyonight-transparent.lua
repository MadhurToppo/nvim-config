return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      on_highlights = function(hl, c)
        hl.Folded = { bg = "NONE", fg = "NONE" }
        hl.LineNrAbove = { fg = "SeaGreen3" }
        hl.LineNrBelow = { fg = "HotPink1" }
      end,
    },
  },
}
