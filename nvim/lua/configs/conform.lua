local options = {
  async = true,

  formatters_by_ft = {
    lua = { "stylua" },
    verilog = { "verible-verilog-format", "verible-verilog-syntax" },
    go = { "gofumpt", "golines", "goimport_reviser" },
    zig = { "zig fmt" },
    rust = { "rustfmt" },
    cs = { "csharpier" },
    javascript = { "prettierd" },
    typescript = { "prettierd" },
    html = { "prettierd" },
    css = { "prettierd" },
  },

  formatters = {
    csharpier = {
      command = "csharpier",
      args = {
        "format",
        "--write-stdout",
      },
      to_stdin = true,
    },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 3000,
    lsp_fallback = true,
  },
}

return options
