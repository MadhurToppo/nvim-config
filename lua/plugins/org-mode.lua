return {
  "nvim-orgmode/orgmode",
  event = "VeryLazy",
  config = function()
    -- Setup orgmode
    require("orgmode").setup({
      org_agenda_files = "~/workspace/journal/*.org",
      org_default_notes_file = "~/workspace/journal/refile.org",
    })
  end,
}
