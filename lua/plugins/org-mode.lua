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
        TODO = ":foreground red", -- overrides builtin color for `TODO` keyword
        SCHEDULED = ":foreground yellow", -- overrides builtin color for `TODO` keyword
        ACTIVE = ":foreground magenta", -- overrides builtin color for `TODO` keyword
        PAUSED = ":foreground violet", -- overrides builtin color for `TODO` keyword
        DONE = ":foreground green", -- overrides builtin color for `TODO` keyword
        DECLINED = ":foreground green", -- overrides builtin color for `TODO` keyword
      },
    })
  end,
}
