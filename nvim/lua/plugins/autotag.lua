return {
  "windwp/nvim-ts-autotag",
  ft = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "html",
    "xml",
    "eruby",
    "embedded_template",
    "blade",
    "php",
  },
  config = function()
    require("nvim-ts-autotag").setup()
  end,
}
