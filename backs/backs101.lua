local legenddeck = {
	name = "legenddeck",
	key = "legenddeck",  
	order = 22,
  unlocked = true,
  discovered = true,
	config = {joker_slot = -1, consumables = {'c_poke_masterball'}},
	-- config = {},
  loc_vars = function(self, info_queue, center)
    return {vars = {localize("masterball_variable")}}
  end,
	pos = { x = 0, y = 0 },
	atlas = "legenddeck"
} 

local dList = {legenddeck}

return {name = "Back",
  -- init = init,
  list = dList
}