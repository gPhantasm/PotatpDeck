--- STEAMODDED HEADER
--- MOD_NAME: PotatpDeck
--- MOD_ID: HZDeck
--- PREFIX: HZ
--- MOD_AUTHOR: [potatp and gooeyPhantasm]
--- MOD_DESCRIPTION: Card art by Potatp
--- LOADER_VERSION_GEQ: 1.0.0
--- VERSION: 1.0.0
--- BADGE_COLOR: FFC073

local atlas_key = 'HZ'-- Format: PREFIX_KEY
-- See end of file for notes
local atlas_path = 'HZ_lc.png' -- Filename for the image in the asset folder
local atlas_path_hc = 'HZ_hc.png' -- Filename for the high-contrast version of the texture, if existing

local suits = {'hearts', 'clubs', 'diamonds', 'spades'} -- Which suits to replace
local ranks = {'Jack', 'Queen', "King", "Ace", "10", "9", "8", "7", "6", "5", "4", "3", "2"} -- Which ranks to replace

local description = 'Potatp' -- English-language description, also used as default

-----------------------------------------------------------
-- You should only need to change things above this line --
-----------------------------------------------------------

----------------------------------------------
------------MOD CODE -------------------------


local allranks = { '2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace' }
local display = { 'Ace', 'King', 'Queen', 'Jack' }

local standard = SMODS.Atlas {
    key = 'HZ',
    path = 'HZ.png',
    px = 71,
    py = 95
}


local all_palettes = {
    {
        key = 'standard',
        ranks = allranks,
        display_ranks = display,
        loc_txt = 'Default',
        pos_style = 'deck',
        atlas = standard.key
    }
}

SMODS.DeckSkin {
    key = "HZHearts",
    suit = "Hearts",
    loc_txt = "HZ",
    palettes = all_palettes
}
SMODS.DeckSkin {
    key = 'HZClubs',
    suit = 'Clubs',
    loc_txt = 'HZ',
    palettes = all_palettes
}
SMODS.DeckSkin {
    key = 'HZDiamonds',
    suit = 'Diamonds',
    loc_txt = 'HZ',
    palettes = all_palettes
}
SMODS.DeckSkin {
    key = 'HZSpades',
    suit = 'Spades',
    loc_txt = 'HZ',
    palettes = all_palettes
}


----------------------------------------------
------------MOD CODE END----------------------
