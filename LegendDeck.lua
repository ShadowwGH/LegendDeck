SMODS.Atlas({
    key = "legenddeck",
    path = "legenddeck.png",
    px = 71,
    py = 95
}):register()

-- Get mod path and load other files
mod_dir = ''..SMODS.current_mod.path
if (SMODS.Mods["Pokermon"] or {}).can_load then
    pokermon_config = SMODS.Mods["Pokermon"].config
end

if (SMODS.Mods["Pokermon"] or {}).can_load and SMODS.Mods["Pokermon"] and not pokermon_config.jokers_only then
    --Load backs
    local backs = NFS.getDirectoryItems(mod_dir.."backs")
    for _, file in ipairs(backs) do
      sendDebugMessage ("The file is: "..file)
      local back, load_error = SMODS.load_file("backs/"..file)
      if load_error then
        sendDebugMessage ("The error is: "..load_error)
      else
        local curr_back = back()
        if curr_back.init then curr_back:init() end
        
        for i, item in ipairs(curr_back.list) do
          SMODS.Back(item)
        end
      end
    end
  end