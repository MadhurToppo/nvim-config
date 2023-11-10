-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
return {
  {
    "LazyVim/LazyVim",
    opts = {
      -- vim.cmd("hi CursorLineNr guibg=tan2 guifg=tan1"),
      vim.cmd("set nocursorline"),
      vim.cmd("hi LineNrAbove guifg=SeaGreen3"),
      vim.cmd("hi LineNrBelow guifg=HotPink1"),
      -- vim.cmd("hi CursorLineNr term=bold cterm=NONE ctermfg=tan1 ctermbg=NONE gui=NONE guifg=tan1 guibg=NONE"),
    },
  },
}
