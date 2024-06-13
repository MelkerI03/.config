local Plugins = {
	{ "tpope/vim-fugitive" },
	{ "wellle/targets.vim" },
	{ "tpope/vim-repeat" },
	{ "numToStr/Comment.nvim", config = true, event = "VeryLazy" },
	{ "mfussenegger/nvim-lint" },
	{ "kdheepak/lazygit.nvim" },
	{ "junegunn/vim-peekaboo" },
	{ "numToStr/Comment.nvim", lazy = false },
	{ "jay-babu/mason-nvim-dap.nvim" },
	{ "folke/neodev.nvim", opts = {} },
	{ "rcarriga/nvim-notify" },
	{ "ThePrimeagen/vim-be-good" },
	{ "folke/neodev.nvim", opts = {} },
	{ "christoomey/vim-tmux-navigator" },
	{ "LhKipp/nvim-nu" },
	-- Themes
	{ "olimorris/onedarkpro.nvim" },
}

return Plugins
