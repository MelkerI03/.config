local Plugin = { "nvim-neo-tree/neo-tree.nvim" }

Plugin.branch = "v3.x"

Plugin.dependencies = {
  "nvim-lua/plenary.nvim",
  "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
  "MunifTanjim/nui.nvim",
  -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
}

Plugin.cmd = { "Neotree" }

function Plugin.init()
  vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>")
end

return Plugin
