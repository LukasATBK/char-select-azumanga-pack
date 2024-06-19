-- name: \\#f8d202\\[CS] \\#fb2f1c\\Azumanga Daioh \\#f8d202\\64!
-- description: Featuring Osaka, Tomo and Kagura!\n\n\\#AAAAFF\\Github:\n\\#6666FF\\LukasATBK/char-select-azumanga-pack\n\n\\#ff7777\\This Pack requires Character Select\nto use as a Library!

local TEXT_MOD_NAME = "Azumanga Daioh 64"
local TEXT_MOD_VERSION = "Release 1"
if not _G.charSelectExists then
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
    return 0
end

local TEX_OSAKAV2 = get_texture_info("osakav2-icon")
local TEX_TOMO = get_texture_info("tomo-icon")
local TEX_KAGURA = get_texture_info("kagura-icon")

local VOICETABLE_TOMO = {
  [CHAR_SOUND_ATTACKED] = 'Tomo_Dooh.ogg',
  [CHAR_SOUND_DOH] = 'Tomo_Dooh.ogg',
  [CHAR_SOUND_DROWNING] = 'Tomo_Drowning.ogg',
  [CHAR_SOUND_DYING] = 'Tomo_HuhhHuh_LostaLife.ogg',
  [CHAR_SOUND_GROUND_POUND_WAH] = 'Tomo_punch2.ogg',
  [CHAR_SOUND_HAHA] = 'Tomo_HaHaa.ogg',
  [CHAR_SOUND_HAHA_2] = 'Tomo_HaHaa.ogg',
  [CHAR_SOUND_HERE_WE_GO] = 'Tomo_hereWeGo.ogg',
  [CHAR_SOUND_HOOHOO] = {'Tomo_jump2.ogg', 'Tomo_jump2.ogg', 'Tomo_jump2.ogg'},
  [CHAR_SOUND_MAMA_MIA] = 'Tomo_ShutUp_MammaMia.ogg',
  [CHAR_SOUND_OKEY_DOKEY] = 'Tomo_OhYeah_okiedokie.ogg',
  [CHAR_SOUND_ON_FIRE] = 'Tomo_Aaaaah_BurningIntoLava.ogg',
  [CHAR_SOUND_OOOF] = 'Tomo_Huh_Oof.ogg',
  [CHAR_SOUND_OOOF2] = 'Tomo_Huh_Oof.ogg',
  [CHAR_SOUND_PUNCH_HOO] = 'Tomo_punch3.ogg',
  [CHAR_SOUND_PUNCH_WAH] = 'Tomo_punch2.ogg',
  [CHAR_SOUND_PUNCH_YAH] = 'Tomo_punch1.ogg',
  [CHAR_SOUND_SO_LONGA_BOWSER] = 'Tomo_NoThankYouu_soLongBowser.ogg',
  [CHAR_SOUND_TWIRL_BOUNCE] = 'Tomo_ShuaBoing.ogg',
  [CHAR_SOUND_WAAAOOOW] = 'Tomo_FallingGreatHeight.ogg',
  [CHAR_SOUND_WAH2] = 'Tomo_jump1.ogg',
  [CHAR_SOUND_WHOA] = 'Tomo_Huh_Oof.ogg',
  [CHAR_SOUND_YAHOO] = 'Tomo_jump3.ogg',
  [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = 'Tomo_jump3.ogg',
  [CHAR_SOUND_YAH_WAH_HOO] = {'Tomo_jump1.ogg', 'Tomo_jump1.2.ogg', 'Tomo_jump1.ogg'},
  [CHAR_SOUND_YAWNING] = 'Tomo_Yawning.ogg',
  [CHAR_SOUND_PANTING] = {'Tomo_1hpLeft.ogg', 'Tomo_1hpLeft.ogg', 'Tomo_1hpLeft.ogg'},
  [CHAR_SOUND_COUGHING1] = 'silence.ogg',
  [CHAR_SOUND_COUGHING2] = 'silence.ogg',
  [CHAR_SOUND_COUGHING3] = 'silence.ogg',
  [CHAR_SOUND_MAMA_MIA] = 'Tomo_ShutUp_MammaMia.ogg',
  [CHAR_SOUND_IMA_TIRED] = 'Tomo_ImaTired.ogg',
  [CHAR_SOUND_LETS_A_GO] = 'Tomo_LetsGoAllTheWayIn.ogg',
  [CHAR_SOUND_HRMM] = 'Tomo_grab.ogg',
  [CHAR_SOUND_UH2] = 'Tomo_iDidit_pullingoverCorner.ogg',
  [CHAR_SOUND_UH2_2] = 'silence.ogg',
  [CHAR_SOUND_UH] = 'Tomo_Concha.ogg',
  [CHAR_SOUND_PANTING_COLD] = {'Tomo_1hpLeft.ogg', 'Tomo_1hpLeft.ogg', 'Tomo_1hpLeft.ogg'},
  [CHAR_SOUND_SNORING1] = 'silence.ogg',
  [CHAR_SOUND_SNORING2] = 'silence.ogg',
  [CHAR_SOUND_SNORING3] = 'silence.ogg',
  [CHAR_SOUND_EEUH] = 'Tomo_iDidit_pullingoverCorner.ogg',
}
local VOICETABLE_OSAKA = {
  [CHAR_SOUND_ATTACKED] = 'Osaka_Dooh.ogg',
  [CHAR_SOUND_DOH] = 'Osaka_Dooh.ogg',
  [CHAR_SOUND_DROWNING] = 'Osaka_Drowning.ogg',
  [CHAR_SOUND_DYING] = 'Osaka_HuhhHuh_LostaLife.ogg',
  [CHAR_SOUND_GROUND_POUND_WAH] = 'Osaka_punch1.ogg',
  [CHAR_SOUND_HAHA] = 'Osaka_HaHaa.ogg',
  [CHAR_SOUND_HAHA_2] = 'Osaka_HaHaa.ogg',
  [CHAR_SOUND_HERE_WE_GO] = 'Osaka_hereWeGo.ogg',
  [CHAR_SOUND_HOOHOO] = {'Osaka_jump2.ogg', 'Osaka_jump2.ogg', 'Osaka_jump2.ogg'},
  [CHAR_SOUND_MAMA_MIA] = 'Osaka_MammaMia.ogg',
  [CHAR_SOUND_OKEY_DOKEY] = 'Osaka_okiedokie.ogg',
  [CHAR_SOUND_ON_FIRE] = 'Osaka_Aaaaah_BurningIntoLava.ogg',
  [CHAR_SOUND_OOOF] = 'Osaka_Huh_Oof.ogg',
  [CHAR_SOUND_OOOF2] = 'Osaka_Huh_Oof.ogg',
  [CHAR_SOUND_PUNCH_HOO] = 'Osaka_punch3.ogg',
  [CHAR_SOUND_PUNCH_WAH] = 'Osaka_punch2.ogg',
  [CHAR_SOUND_PUNCH_YAH] = 'Osaka_punch1.ogg',
  [CHAR_SOUND_SO_LONGA_BOWSER] = 'Osaka_soLongBowser.ogg',
  [CHAR_SOUND_TWIRL_BOUNCE] = 'Osaka_Shuaa_Boing.ogg',
  [CHAR_SOUND_WAAAOOOW] = 'Osaka_FallingGreatHeight.ogg',
  [CHAR_SOUND_WAH2] = 'Osaka_jump1.2.ogg',
  [CHAR_SOUND_WHOA] = 'Osaka_Huh_Oof.ogg',
  [CHAR_SOUND_YAHOO] = 'Osaka_jump3.ogg',
  [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = 'Osaka_jump3.ogg',
  [CHAR_SOUND_YAH_WAH_HOO] = {'Osaka_jump1.ogg', 'Osaka_jump1.ogg', 'Osaka_jump1.ogg'},
  [CHAR_SOUND_YAWNING] = 'Osaka_Yawning.ogg',
  [CHAR_SOUND_PANTING] = {'Osaka_1hpLeft.ogg', 'Osaka_1hpLeft.ogg', 'Osaka_1hpLeft.ogg'},
  [CHAR_SOUND_COUGHING1] = 'Osaka_coughing.ogg',
  [CHAR_SOUND_COUGHING2] = 'silence.ogg',
  [CHAR_SOUND_COUGHING3] = 'Osaka_coughing.ogg',
  [CHAR_SOUND_MAMA_MIA] = 'Osaka_MammaMia.ogg',
  [CHAR_SOUND_IMA_TIRED] = 'Osaka_ImaTired.ogg',
  [CHAR_SOUND_LETS_A_GO] = 'Osaka_LetsGoAllTheWayIn.ogg',
  [CHAR_SOUND_HRMM] = 'Osaka_grab.ogg',
  [CHAR_SOUND_UH2] = 'Osaka_iDidit_pullingoverCorner.ogg',
  [CHAR_SOUND_UH2_2] = 'silence.ogg',
  [CHAR_SOUND_UH] = 'Osaka_Uh.ogg',
  [CHAR_SOUND_PANTING_COLD] = {'Osaka_1hpLeft.ogg', 'Osaka_1hpLeft.ogg', 'Osaka_1hpLeft.ogg'},
  [CHAR_SOUND_SNORING1] = 'silence.ogg',
  [CHAR_SOUND_SNORING2] = 'silence.ogg',
  [CHAR_SOUND_SNORING3] = 'silence.ogg',
  [CHAR_SOUND_EEUH] = 'Osaka_iDidit_pullingoverCorner.ogg',
}
local VOICETABLE_KAGURA = {
  [CHAR_SOUND_ATTACKED] = 'Kagura_Dooh.ogg',
  [CHAR_SOUND_DOH] = 'Kagura_Dooh.ogg',
  [CHAR_SOUND_DROWNING] = 'Kagura_Drowning.ogg',
  [CHAR_SOUND_DYING] = 'Kagura_HuhhHuh_LostaLife.ogg',
  [CHAR_SOUND_GROUND_POUND_WAH] = 'Kagura_punch2.ogg',
  [CHAR_SOUND_HAHA] = 'Kagura_HaHaa.ogg',
  [CHAR_SOUND_HAHA_2] = 'Kagura_HaHaa.ogg',
  [CHAR_SOUND_HERE_WE_GO] = 'Kagura_hereWeGo.ogg',
  [CHAR_SOUND_HOOHOO] = {'Kagura_jump2.ogg', 'Kagura_jump2.ogg', 'Kagura_jump2.ogg'},
  [CHAR_SOUND_MAMA_MIA] = 'Kagura_MammaMia.ogg',
  [CHAR_SOUND_OKEY_DOKEY] = 'Kagura_okiedokie.ogg',
  [CHAR_SOUND_ON_FIRE] = 'Kagura_Aaaaah_BurningIntoLava.ogg',
  [CHAR_SOUND_OOOF] = 'Kagura_Huh_Oof.ogg',
  [CHAR_SOUND_OOOF2] = 'Kagura_Huh_Oof.ogg',
  [CHAR_SOUND_PUNCH_HOO] = 'Kagura_punch3.ogg',
  [CHAR_SOUND_PUNCH_WAH] = 'Kagura_punch2.ogg',
  [CHAR_SOUND_PUNCH_YAH] = 'Kagura_punch1.ogg',
  [CHAR_SOUND_SO_LONGA_BOWSER] = 'Kagura_soLongBowser.ogg',
  [CHAR_SOUND_TWIRL_BOUNCE] = 'Kagura_Shuaa_Boing.ogg',
  [CHAR_SOUND_WAAAOOOW] = 'Kagura_FallingGreatHeight.ogg',
  [CHAR_SOUND_WAH2] = 'Kagura_jump1.ogg',
  [CHAR_SOUND_WHOA] = 'Kagura_Huh_Oof.ogg',
  [CHAR_SOUND_YAHOO] = 'Kagura_jump3.ogg',
  [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = 'Kagura_jump3.ogg',
  [CHAR_SOUND_YAH_WAH_HOO] = {'Kagura_jump1.ogg', 'Kagura_jump1.2.ogg', 'Kagura_jump1.ogg'},
  [CHAR_SOUND_YAWNING] = 'Kagura_Yawning.ogg',
  [CHAR_SOUND_PANTING] = {'Kagura_1hpLeft.ogg', 'Kagura_1hpLeft.ogg', 'Kagura_1hpLeft.ogg'},
  [CHAR_SOUND_COUGHING1] = 'silence.ogg',
  [CHAR_SOUND_COUGHING2] = 'silence.ogg',
  [CHAR_SOUND_COUGHING3] = 'silence.ogg',
  [CHAR_SOUND_MAMA_MIA] = 'Kagura_MammaMia.ogg',
  [CHAR_SOUND_IMA_TIRED] = 'Kagura_ImaTired.ogg',
  [CHAR_SOUND_LETS_A_GO] = 'Kagura_LetsGoAllTheWayIn.ogg',
  [CHAR_SOUND_HRMM] = 'Kagura_grab.ogg',
  [CHAR_SOUND_UH2] = 'Kagura_iDidit_pullingoverCorner.ogg',
  [CHAR_SOUND_UH2_2] = 'silence.ogg',
  [CHAR_SOUND_UH] = 'Kagura_Uh.ogg',
  [CHAR_SOUND_PANTING_COLD] = {'Kagura_1hpLeft.ogg', 'Kagura_1hpLeft.ogg', 'Kagura_1hpLeft.ogg'},
  [CHAR_SOUND_SNORING1] = 'silence.ogg',
  [CHAR_SOUND_SNORING2] = 'silence.ogg',
  [CHAR_SOUND_SNORING3] = 'silence.ogg',
  [CHAR_SOUND_EEUH] = 'Kagura_iDidit_pullingoverCorner.ogg',
}

-- Load Models
local E_MODEL_OSAKAV2 = smlua_model_util_get_id("osakav2_geo")
local E_MODEL_OSAKASUMMER = smlua_model_util_get_id("osakasummer_geo")
local E_MODEL_OSAKASPORTS = smlua_model_util_get_id("osakasports_geo")
local E_MODEL_OSAKAOUTFIT1 = smlua_model_util_get_id("osakaoutfit1_geo")
local E_MODEL_OSAKAOUTFIT2 = smlua_model_util_get_id("osakaoutfit2_geo")
local E_MODEL_OSAKALEGACY = smlua_model_util_get_id("osakalegacy_geo")

local E_MODEL_TOMO = smlua_model_util_get_id("tomo_geo")
local E_MODEL_TOMOSUMMER = smlua_model_util_get_id("tomosummer_geo")
local E_MODEL_TOMOSPORTS = smlua_model_util_get_id("tomosports_geo")
local E_MODEL_TOMOOUTFIT1 = smlua_model_util_get_id("tomooutfit1_geo")
local E_MODEL_TOMOOUTFIT2 = smlua_model_util_get_id("tomooutfit2_geo")

local E_MODEL_KAGURA = smlua_model_util_get_id("kagura_geo")
local E_MODEL_KAGURASUMMER = smlua_model_util_get_id("kagurasummer_geo")
local E_MODEL_KAGURASPORTS = smlua_model_util_get_id("kagurasports_geo")
local E_MODEL_KAGURAOUTFIT1 = smlua_model_util_get_id("kaguraoutfit1_geo")
local E_MODEL_KAGURAOUTFIT2 = smlua_model_util_get_id("kaguraoutfit2_geo")

-- Character Initialize
local CT_OSAKA = _G.charSelect.character_add("Osaka", "Osaka often acts stuck in her own world, she is often prone to daydreaming.", "KasugAxel / Nokiaa / Azumadeline", {r = 228, g = 50, b = 50}, E_MODEL_OSAKAV2, CT_MARIO, TEX_OSAKAV2)
local CT_TOMO = _G.charSelect.character_add("Tomo", "Tomo Takino!! A crazy-go-nuts high schooler.", "LukasATBK / KasugAxel", {r = 144, g = 152, b = 201}, E_MODEL_TOMO, CT_MARIO, TEX_TOMO)
local CT_KAGURA = _G.charSelect.character_add("Kagura", "Kagura brings a feisty, competitive spirit to Yukari's classroom.", "LukasATBK / KasugAxel", {r = 54, g = 90, b = 90}, E_MODEL_KAGURA, CT_MARIO, TEX_KAGURA)

-- Add Voices
_G.charSelect.character_add_voice(E_MODEL_OSAKAV2, VOICETABLE_OSAKA)
_G.charSelect.character_add_voice(E_MODEL_OSAKASUMMER, VOICETABLE_OSAKA)
_G.charSelect.character_add_voice(E_MODEL_OSAKASPORTS, VOICETABLE_OSAKA)
_G.charSelect.character_add_voice(E_MODEL_OSAKAOUTFIT1, VOICETABLE_OSAKA)
_G.charSelect.character_add_voice(E_MODEL_OSAKAOUTFIT2, VOICETABLE_OSAKA)
_G.charSelect.character_add_voice(E_MODEL_OSAKALEGACY, VOICETABLE_OSAKA)

_G.charSelect.character_add_voice(E_MODEL_TOMO, VOICETABLE_TOMO)
_G.charSelect.character_add_voice(E_MODEL_TOMOSUMMER, VOICETABLE_TOMO)
_G.charSelect.character_add_voice(E_MODEL_TOMOSPORTS, VOICETABLE_TOMO)
_G.charSelect.character_add_voice(E_MODEL_TOMOOUTFIT1, VOICETABLE_TOMO)
_G.charSelect.character_add_voice(E_MODEL_TOMOOUTFIT2, VOICETABLE_TOMO)

_G.charSelect.character_add_voice(E_MODEL_KAGURA, VOICETABLE_KAGURA)
_G.charSelect.character_add_voice(E_MODEL_KAGURASUMMER, VOICETABLE_KAGURA)
_G.charSelect.character_add_voice(E_MODEL_KAGURASPORTS, VOICETABLE_KAGURA)
_G.charSelect.character_add_voice(E_MODEL_KAGURAOUTFIT1, VOICETABLE_KAGURA)
_G.charSelect.character_add_voice(E_MODEL_KAGURAOUTFIT2, VOICETABLE_KAGURA)

-- Update Voicelines
local character_get_voice, update_sound, update_snore = _G.charSelect.character_get_voice, _G.charSelect.voice.sound, _G.charSelect.voice.snore
local function character_sounds(m, sound)
    local v = _G.charSelect.character_get_voice(m)
    if v == VOICETABLE_OSAKA
    or v == VOICETABLE_TOMO
    or v == VOICETABLE_KAGURA
    then
        return update_sound(m, sound)
    end
end
local function character_snore(m)
    local v = _G.charSelect.character_get_voice(m)
    if v == VOICETABLE_OSAKA
    or v == VOICETABLE_TOMO
    or v == VOICETABLE_KAGURA
    then
        return update_snore(m)
    end
end

hook_event(HOOK_CHARACTER_SOUND, character_sounds)
hook_event(HOOK_MARIO_UPDATE, character_snore)

--------------------------------------------
--- Alt Costume code from Paper Partners ---
-- Modified by Squishy for Azumanga Daioh --
--------------------------------------------

local character_edit = _G.charSelect.character_edit
local character_get_current_number = _G.charSelect.character_get_current_number
local character_get_current_table = _G.charSelect.character_get_current_table
local get_options_status = _G.charSelect.get_options_status
local get_menu_color = _G.charSelect.get_menu_color
local hook_render_in_menu = _G.charSelect.hook_render_in_menu

local table_insert = table.insert
local play_sound = play_sound
local djui_hud_get_screen_width = djui_hud_get_screen_width
local djui_hud_measure_text = djui_hud_measure_text
local djui_hud_set_color = djui_hud_set_color
local djui_hud_set_resolution = djui_hud_set_resolution
local djui_hud_set_rotation = djui_hud_set_rotation
local djui_hud_set_font = djui_hud_set_font
local djui_hud_print_text = djui_hud_print_text
local djui_hud_render_rect = djui_hud_render_rect
local maxf = maxf
local math_min = math.min
local math_max = math.max
local math_sin = math.sin

local altCostumes = {
    [CT_OSAKA] = {
        currSkin = 1,
        {name = "", model = E_MODEL_OSAKAV2,},
        {name = "Summer", model = E_MODEL_OSAKASUMMER,},
        {name = "Sports", model = E_MODEL_OSAKASPORTS,},
        {name = "Outfit 1", model = E_MODEL_OSAKAOUTFIT1,},
        {name = "Outfit 2", model = E_MODEL_OSAKAOUTFIT2,},
        {name = "Legacy", model = E_MODEL_OSAKALEGACY,},
    },
    [CT_TOMO] = {
        currSkin = 1,
        {name = "", model = E_MODEL_TOMO,},
        {name = "Summer", model = E_MODEL_TOMOSUMMER,},
        {name = "Sports", model = E_MODEL_TOMOSPORTS,},
        {name = "Outfit 1", model = E_MODEL_TOMOOUTFIT1,},
        {name = "Outfit 2", model = E_MODEL_TOMOOUTFIT2,},
    },
    [CT_KAGURA] = {
        currSkin = 1,
        {name = "", model = E_MODEL_KAGURA,},
        {name = "Summer", model = E_MODEL_KAGURASUMMER,},
        {name = "Sports", model = E_MODEL_KAGURASPORTS,},
        {name = "Outfit 1", model = E_MODEL_KAGURAOUTFIT1,},
        {name = "Outfit 2", model = E_MODEL_KAGURAOUTFIT2,},
    },
}

local function update_character_skin(currChar, currAlt)
    local currSkin = altCostumes[currChar][currAlt]
    if altCostumes[currChar].desc == nil then
        altCostumes[currChar].desc = character_get_current_table().description
    end
    local description = {}
    for i = 1, #altCostumes[currChar].desc do
        table_insert(description, altCostumes[currChar].desc[i])
    end
    if currSkin.name ~= "" then
        table_insert(description, "")
        table_insert(description, "Current Outfit: "..currSkin.name)
    end
    character_edit(currChar, nil, description, nil, nil, currSkin.model, nil, nil)
    local cameraToObject = gMarioStates[0].marioObj.header.gfx.cameraToObject
    play_sound(SOUND_MENU_MESSAGE_NEXT_PAGE, cameraToObject)
end

local inputLockTimer = 0
local buttonAnimTimer = 0

local MATH_DIVIDE_320 = 1/320

local latencyValueTable = {12, 6, 3}

local function hud_render()
    local width = djui_hud_get_screen_width() + 1.4
    local widthScale = maxf(width, 321.4) * MATH_DIVIDE_320
    local currChar = character_get_current_number()
    local charColors = character_get_current_table().color
    
    -- Mimick button swaying, which is missing from the paper code
    local buttonAnim = 0
    local charSelectAnim = get_options_status(_G.charSelect.optionTableRef.anims)
    if charSelectAnim > 0 then
        buttonAnimTimer = buttonAnimTimer + 1
        buttonAnim = math_sin(buttonAnimTimer * 0.05) * 2.5 + 5
    else
        buttonAnim = 10
    end

    local inputLockTimerTo = latencyValueTable[get_options_status(_G.charSelect.optionTableRef.inputLatency) + 1]

    if altCostumes[currChar] ~= nil then
        -- Render Mod Variond under CS version
        local menuColor = get_menu_color()
        djui_hud_set_color(menuColor.r, menuColor.g, menuColor.b, 255)
        djui_hud_set_font(FONT_TINY)
        local string = TEXT_MOD_NAME.." ("..TEXT_MOD_VERSION..")"
        djui_hud_print_text(string, width - 5 - djui_hud_measure_text(string)*0.5, 3, 0.5)

        ---@type Controller
        local c = _G.charSelect.controller
        local currAlts = altCostumes[currChar]

        djui_hud_set_font(FONT_NORMAL)
        djui_hud_set_resolution(RESOLUTION_N64)
        local inputLockTimerAnim = 0

        local buttonX = 20 * widthScale + buttonAnim
        local x1 = buttonX - 4
        local x2 = x1 + 73
        local y = 97

        if charSelectAnim > 0 then
            inputLockTimerAnim = inputLockTimer/inputLockTimerTo * 3
            x1 = x1 + math_min(inputLockTimerAnim, 0)
            x2 = x2 + math_max(inputLockTimerAnim, 0)
        end
        -- Left Arrow
        if currAlts.currSkin > 1 then
            djui_hud_set_color(charColors.r, charColors.g, charColors.b, 255)
            djui_hud_set_rotation(0x2000, 0.5, 0.5)
            djui_hud_render_rect(x1, y, 5, 5)
            djui_hud_set_color(0, 0, 0, 255)
            djui_hud_set_rotation(0x0000, 0.5, 0.5)
            djui_hud_render_rect(x1 + 2.5, y - 2, 6, 8)
            djui_hud_set_color(charColors.r, charColors.g, charColors.b, 255)
            djui_hud_render_rect(buttonX, y - 3, 1, 10)

            if inputLockTimer == 0 and (c.buttonDown & L_JPAD ~= 0 or c.stickX < -0.5) then
                currAlts.currSkin = math_max(currAlts.currSkin - 1, 1)
                update_character_skin(currChar, currAlts.currSkin)
                inputLockTimer = -inputLockTimerTo
            end
        end
        -- Right Arrow
        if currAlts.currSkin < #currAlts then
            -- Changed arrows to mimick the ones seen in the options menu
            djui_hud_set_color(charColors.r, charColors.g, charColors.b, 255)
            djui_hud_set_rotation(0x2000, 0.5, 0.5)
            djui_hud_render_rect(x2, y, 5, 5)
            djui_hud_set_color(0, 0, 0, 255)
            djui_hud_set_rotation(0x0000, 0.5, 0.5)
            djui_hud_render_rect(x2 - 3.5, y - 2, 6, 8)
            djui_hud_set_color(charColors.r, charColors.g, charColors.b, 255)
            djui_hud_render_rect(buttonX + 69, y - 3, 1, 10)

            if inputLockTimer == 0 and (c.buttonDown & R_JPAD ~= 0 or c.stickX > 0.5) then
                currAlts.currSkin = currAlts.currSkin + 1
                update_character_skin(currChar, currAlts.currSkin)
                inputLockTimer = inputLockTimerTo
            end
        end
        -- use an input lock to prevent cycling too fast
        if inputLockTimer > 0 then
            inputLockTimer = inputLockTimer - 1
        elseif inputLockTimer < 0 then
            inputLockTimer = inputLockTimer + 1
        end
    end
end

hook_render_in_menu(hud_render)
