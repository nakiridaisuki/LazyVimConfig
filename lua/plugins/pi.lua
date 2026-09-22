return {
  "pablopunk/pi.nvim",
  keys = {
    { "<leader>p", "<cmd>PiAsk<CR>", mode = "n", desc = "Ask pi" },
    { "<leader>p", ":PiAskSelection<CR>", mode = "v", desc = "Ask pi (selection)" },
  },
  opts = {
    provider = "deepseek",
    model = "deepseek-flash",
    thinking = "high", -- be careful, thinking is time-consuming, it's not a great experience if you want simplicity
    tools = { "bash" },
    -- system_prompt = "You are a helpful assistant.",
    -- append_system_prompt = "Always respond concisely.",
    context = {
      max_bytes = 24000,
      ask = {
        surrounding_lines = 80,
      },
      selection = {
        surrounding_lines = 40,
      },
      diagnostics = {
        enabled = false,
      },
    },
    skills = true,
    extensions = true,
  },
}
