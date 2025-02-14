return {
  "lukas-reineke/headlines.nvim",
  -- enabled = false, -- suddently not working

  opts = function()
    local opts = {}
    for _, ft in ipairs({ "markdown", "quarto" }) do
      opts[ft] = {
        headline_highlights = {},
      }
      for i = 1, 6 do
        local hl = "Headline" .. i
        vim.api.nvim_set_hl(0, hl, { link = "Headline", default = true })
        table.insert(opts[ft].headline_highlights, hl)
      end
    end
    return opts
  end,

  ft = { "markdown", "quarto" },

  config = function(_, opts)
    -- PERF: schedule to prevent headlines slowing down opening a file
    vim.schedule(function()
      require("headlines").setup(opts)
      require("headlines").refresh()
    end)

    -- highlight color for headlines.nvim ----------------------------------
    vim.cmd([[highlight Headline1 guibg=#999999 guifg=#000000]])
    vim.cmd([[highlight Headline2 guibg=#777777 guifg=#000000]])
    vim.cmd([[highlight Headline3 guibg=#555555 guifg=#000000]])
    vim.cmd([[highlight CodeBlock guibg=#252525]])
    -- vim.cmd([[highlight Dash guibg=#202020 gui=bold]])

    -- custom config for each file types -----------------------------------
    require("headlines").setup({
      quarto = {
        query = vim.treesitter.query.parse(
          "markdown",
          [[
                        (atx_heading [
                            (atx_h1_marker)
                            (atx_h2_marker)
                            (atx_h3_marker)
                            (atx_h4_marker)
                            (atx_h5_marker)
                            (atx_h6_marker)
                        ] @headline)

                        (thematic_break) @dash

                        (fenced_code_block) @codeblock

                        (block_quote_marker) @quote
                        (block_quote (paragraph (inline (block_continuation) @quote)))
                    ]]
        ),

        treesitter_language = "markdown",
        headline_highlights = {
          "Headline1",
          "Headline2",
          "Headline3",
        },
        codeblock_highlight = "CodeBlock",
        dash_highlight = "Dash",
        dash_string = "-",
        quote_highlight = "Quote",
        quote_string = "┃",
        fat_headlines = true,
        fat_headline_upper_string = "",
        fat_headline_lower_string = "",
      },

      markdown = {
        query = vim.treesitter.query.parse(
          "markdown",
          [[
                        (atx_heading [
                            (atx_h1_marker)
                            (atx_h2_marker)
                            (atx_h3_marker)
                            (atx_h4_marker)
                            (atx_h5_marker)
                            (atx_h6_marker)
                        ] @headline)

                        (thematic_break) @dash

                        (fenced_code_block) @codeblock

                        (block_quote_marker) @quote
                        (block_quote (paragraph (inline (block_continuation) @quote)))
                    ]]
        ),

        -- headline_highlights = { "Headline" },
        headline_highlights = {
          "Headline1",
          "Headline2",
          "Headline3",
        },

        codeblock_highlight = "CodeBlock",
        dash_highlight = "Dash",
        dash_string = "-",
        quote_highlight = "Quote",
        quote_string = "┃",
        fat_headlines = true,
        -- fat_headline_upper_string = "▃",
        -- fat_headline_lower_string = "🬂",
        fat_headline_upper_string = "",
        fat_headline_lower_string = "",
      },
    })
  end,
}
