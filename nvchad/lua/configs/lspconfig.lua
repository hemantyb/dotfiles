require("nvchad.configs.lspconfig").defaults()

local servers = {
  "lua_ls",
  "zls",
  "gopls",
  "verible",
  "tsserver",
  "tailwindcss",
  "superhtml",
  "css_lsp",
  "eslint",
  "rustywind",
  "biome",
  "markdown_oxide",
  "csharp_ls",
  "angularls",
}
vim.lsp.enable(servers)

local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

local is_angular = util.root_pattern "angular.json"

lspconfig.angularls.setup {
  cmd = {
    vim.fn.stdpath "data" .. "/mason/bin/ngserver",
    "--stdio",
    "--tsProbeLocations",
    util.root_pattern "node_modules" ".",
    "--ngProbeLocations",
    util.root_pattern "node_modules" ".",
  },
  filetypes = { "typescript", "html" },
  root_dir = is_angular,
}

lspconfig.verible.setup {
  cmd = { "verible-verilog-ls", "rules_config_search" },
}

lspconfig.markdown_oxide.setup {
  workspace = {
    didChangeWatchedFiles = {
      dynamicRegistration = true,
    },
  },
}

lspconfig.biome.setup {
  filetypes = {
    "json",
    "jsonc",
  },
  root_dir = require("lspconfig/util").root_pattern("package.json", ".git"),
  settings = {
    biome = {
      indentStyle = "space",
      indentSize = 2,
    },
  },
}

lspconfig.ts_ls.setup {
  root_dir = function(...)
    return require("lspconfig.util").root_pattern ".git"(...)
  end,
  single_file_support = false,
  settings = {
    typescript = {
      inlayHints = {
        includeInlayParameterNameHints = "literal",
        includeInlayParameterNameHintsWhenArgumentMatchesName = false,
        includeInlayFunctionParameterTypeHints = true,
        includeInlayVariableTypeHints = false,
        includeInlayPropertyDeclarationTypeHints = true,
        includeInlayFunctionLikeReturnTypeHints = true,
        includeInlayEnumMemberValueHints = true,
      },
    },
    javascript = {
      inlayHints = {
        includeInlayParameterNameHints = "all",
        includeInlayParameterNameHintsWhenArgumentMatchesName = false,
        includeInlayFunctionParameterTypeHints = true,
        includeInlayVariableTypeHints = true,
        includeInlayPropertyDeclarationTypeHints = true,
        includeInlayFunctionLikeReturnTypeHints = true,
        includeInlayEnumMemberValueHints = true,
      },
    },
  },
}

lspconfig.tailwindcss.setup {
  root_dir = function(...)
    return require("lspconfig.util").root_pattern ".git"(...)
  end,
}

-- lspconfig.rust_analyzer.setup {
--   settings = {
--     ["rust-analyzer"] = {
--       imports = {
--         granularity = {
--           group = "module",
--         },
--         prefix = "self",
--       },
--       cargo = {
--         buildScripts = {
--           enable = true,
--         },
--       },
--       procMacro = {
--         enable = true,
--       },
--     },
--   },
-- }

lspconfig.zls.setup {
  settings = {
    zls = {
      enable_build_on_save = true,
      semantic_tokens = "partial",
      zig_exe_path = "/opt/zig-linux-x86_64-0.14.0/zig",
    },
  },
  root_dir = require("lspconfig.util").root_pattern("build.zig.zon", "build.zig", ".git"),
}

lspconfig.gopls.setup {
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = require("lspconfig.util").root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}
