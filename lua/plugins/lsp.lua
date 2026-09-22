return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      veridian = {
        cmd = { "veridian" },
        filetypes = { "verilog", "systemverilog" },
        root_markers = { ".git", "README.md" },
      },
      asm_lsp = {},
      clangd = {
        cmd = {
          "clangd",
          "--background-index",
          "--clang-tidy",
          "--header-insertion=never",
          "--completion-style=detailed",
          "--function-arg-placeholders",
          "--fallback-style=llvm",
        },
      },
    },
  },
}
