return {
  {
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
  },
  {
    {
      "stevearc/conform.nvim",
      opts = {
        formatters_by_ft = {
          verilog = { "verible" },
          systemverilog = { "verible" },
        },
        formatters = {
          verible = {
            prepend_args = {
              "--indentation_spaces=4",
              -- "--column_limit=100",
            },
          },
        },
      },
    },
  },
}
