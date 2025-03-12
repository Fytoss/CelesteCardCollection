-- region Climbing Snack

local climbingsnack = {
  name = "ccc_Climbing Snack",
	key = "climbingsnack",
    config = {extra = {hands = 1}},
	pixel_size = { w = 71, h = 81 },
	pos = {x = 9, y = 4},
	loc_txt = {
        name = 'Climbing Snack',
        text = {
        "Sell this Joker to",
        "gain #1# hand this round"
        }
        },
	rarity = 1,
	cost = 3,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = false,
	perishable_compat = true,
	atlas = "j_ccc_jokers",
	credit = {
		art = "N/A",
		code = "Fytos",
  		concept = "Aurora Aquir"
	},
    description = "Sell this Joker to gain 1 hand this round"
}

  climbingsnack.calculate = function(self, card, context)

    if context.selling_self then
      ease_hands_played(G.GAME.current_round.hands_left + 1, nil, true)
      
    end
    
  end
  
return climbingsnack
-- endregion Climbing Snack
