local Plugin = { "goolord/alpha-nvim"}

Plugin.config = function ()
  require("alpha").setup(require("alpha.themes.dashboard").config)
end

return Plugin
