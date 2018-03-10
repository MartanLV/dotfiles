super = {"ctrl", "alt", "cmd"}

require "winman"   -- Window management
-- require "vim"      -- Vim style bindings

hs.hotkey.bind(super, 'P', function()
  hs.openPreferences()
end)

hs.hotkey.bind(super, 'R', function()
  hs.reload()
end)

