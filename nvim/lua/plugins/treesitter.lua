local Plugin = { "nvim-treesitter/nvim-treesitter", tag='v0.9.2' }

Plugin.dependencies = {
	{ "nvim-treesitter/nvim-treesitter-textobjects" },
}

-- See :help nvim-treesitter-modules
Plugin.opts = {
	highlight = {
		enable = true,
	},
	-- :help nvim-treesitter-textobjects-modules
	textobjects = {
		select = {
			enable = true,
			lookahead = true,
			keymaps = {
				["af"] = "@function.outer",
				["if"] = "@function.inner",
				["ac"] = "@class.outer",
				["ic"] = "@class.inner",
			},
		},
	},
	ensure_installed = {
		"clangd",
		"javascript",
		"typescript",
		"tsx",
		"lua",
		"vim",
		"vimdoc",
		"css",
		"json",
	},
}

function Plugin.config(_, _)
	require("nvim-treesitter.configs").setup({
		auto_install = true,
	})
end

return Plugin
