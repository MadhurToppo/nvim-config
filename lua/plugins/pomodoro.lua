return {
  "epwalsh/pomo.nvim",
  version = "*", -- Recommended, use latest release instead of latest commit
  lazy = true,
  cmd = { "TimerStart", "TimerRepeat", "TimerSession" },
  dependencies = {
    -- Optional, but highly recommended if you want to use the "Default" timer
    "rcarriga/nvim-notify",
  },
  opts = {
    -- See below for full list of options 👇
    sessions = {
      -- Example session configuration for a session called "pomodoro".
      pomodoro = {
        { name = "dev", duration = "60m" },
        { name = "Short Break", duration = "10m" },
        { name = "dev", duration = "60m" },
        { name = "Short Break", duration = "10m" },
        { name = "dev", duration = "60m" },
        { name = "Long Break", duration = "40m" },
      },
    },
  },
}
