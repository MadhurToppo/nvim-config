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
  },
}
