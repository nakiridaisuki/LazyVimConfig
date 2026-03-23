return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      veridian = {
        cmd = { "veridian" },
        filetypes = { "verilog", "systemverilog" },
        root_markers = { ".git", "README.md" },
      },
    },
  },
}
