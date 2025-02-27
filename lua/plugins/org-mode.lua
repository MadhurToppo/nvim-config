return {
  "nvim-orgmode/orgmode",
  event = "VeryLazy",
  config = function()
    -- Setup orgmode
    require("orgmode").setup({
      org_agenda_files = "~/workspace/journal/*.org",
      org_default_notes_file = "~/workspace/journal/refile.org",
      org_todo_keywords = { "TODO", "SCHEDULED", "ACTIVE", "PAUSED", "|", "DONE", "DECLINED" },
      org_todo_keyword_faces = {
        TODO = ":foreground red",
        SCHEDULED = ":foreground yellow",
        ACTIVE = ":foreground magenta",
        PAUSED = ":foreground violet",
        DONE = ":foreground green",
        DECLINED = ":foreground green",
      },
      mappings = {
        org = {
          org_toggle_checkbox = "<leader>ca",
        },
      },
    })
  end,
}
