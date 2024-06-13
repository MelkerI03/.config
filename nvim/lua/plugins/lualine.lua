local Plugin = { "nvim-lualine/lualine.nvim" }

Plugin.name = "lualine"

Plugin.event = "VeryLazy"


local function modeLetter()
  local mode = string.upper(vim.api.nvim_get_mode()["mode"])
  return mode
end

-- See :help lualine.txt
Plugin.opts = {
  options = {
    theme = "onedark",
    icons_enabled = true,
    component_separators = "|",
    section_separators = "",
    disabled_filetypes = {
      statusline = { "NvimTree" },
    },
  },
  sections = {
    lualine_a = { modeLetter }
  }
}

function Plugin.init()
  vim.opt.showmode = false
end

return Plugin
