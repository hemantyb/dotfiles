return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = { "lua_ls", "zls" },
		automatic_enable = {
			"angularls",
			"csharp_ls",
			"clangd",
			"lua_ls",
			"zls",
			"pylsp",
			"bashls",
			"harper_ls",
			"ast_grep",
			"denols",
			"ts_ls",
			"eslint",
			"html",
			"cssls",
			"tailwindcss",
		},
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
}
