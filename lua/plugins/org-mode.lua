return {
  "nvim-orgmode/orgmode",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-orgmode/telescope-orgmode.nvim",
    "nvim-orgmode/org-bullets.nvim",
  },
  event = "VeryLazy",
  config = function()
    require("orgmode").setup({
      org_agenda_files = "~/workspace/journal/**/*",
      org_default_notes_file = "~/workspace/journal/refile.org",
      org_todo_keywords = { "TODO(t)", "SCHEDULED(s)", "ACTIVE(a)", "PAUSED(p)", "DECLINED(x)", "|", "DONE(d)" },
      org_todo_keyword_faces = {
        TODO = ":foreground red",
        SCHEDULED = ":foreground yellow",
        ACTIVE = ":foreground magenta",
        PAUSED = ":foreground violet",
        DECLINED = ":foreground turquoise",
        DONE = ":foreground green",
      },
      mappings = {
        org = {
          org_toggle_checkbox = "<leader>ca",
        },
      },
    })
    require("org-bullets").setup()
    require("telescope").setup({})
    require("telescope").load_extension("orgmode")
  end,
}
