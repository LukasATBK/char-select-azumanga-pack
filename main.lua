-- name: \\#f8d202\\[CS] \\#fb2f1c\\Azumanga Daioh \\#f8d202\\64! \\#fb2f1c\\R2
-- description: [DEV VERSION] School years, your best years!\n\n\\#AAAAFF\\Github:\n\\#6666FF\\LukasATBK/char-select-azumanga-pack\n\n\\#ff7777\\This Pack requires Character Select\nto use as a Library!\n\n\\#AAAAFF\\This Pack includes pets, they require Widdle Pets to use as a Library!

local TEXT_MOD_NAME = "Azumanga Daioh 64"
local TEXT_MOD_VERSION = "Release 2"
if not _G.charSelectExists then
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
    return 0
end

local TEX_OSAKAV2 = get_texture_info("osakav2-icon")
local TEX_TOMO = get_texture_info("tomo-icon")
local TEX_KAGURA = get_texture_info("kagura-icon")
local TEX_CHIYO = get_texture_info("chiyo-icon")
local TEX_SAKAKI = get_texture_info("sakaki-icon")
local TEX_YOMI = get_texture_info("yomi-icon")
local TEX_KAORI = get_texture_info("kaori-icon")
local TEX_CHIHIRO = get_texture_info("chihiro-icon")
local TEX_AZUTOWER = get_texture_info("azutower-icon")

local HEALTH_METER_AZU= {
    label = {
        left = get_texture_info("azuhp_left"),
        right = get_texture_info("azuhp_right"),
    },
    pie = {
        [1] = get_texture_info("azuhp_pie_1"),
        [2] = get_texture_info("azuhp_pie_2"),
        [3] = get_texture_info("azuhp_pie_3"),
        [4] = get_texture_info("azuhp_pie_4"),
        [5] = get_texture_info("azuhp_pie_5"),
        [6] = get_texture_info("azuhp_pie_6"),
        [7] = get_texture_info("azuhp_pie_7"),
        [8] = get_texture_info("azuhp_pie_8"),
    }
}

local VOICETABLE_TOMO = {
  [CHAR_SOUND_ATTACKED] = 'Tomo_Dooh.ogg',
  [CHAR_SOUND_DOH] = 'Tomo_Dooh.ogg',
  [CHAR_SOUND_DROWNING] = 'Tomo_Drowning.ogg',
  [CHAR_SOUND_DYING] = 'Tomo_HuhhHuh_LostaLife.ogg',
  [CHAR_SOUND_GROUND_POUND_WAH] = 'Tomo_punch3.ogg',
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
  [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = 'Tomo_jump3.2.ogg',
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
  [CHAR_SOUND_GROUND_POUND_WAH] = 'Osaka_punch3.ogg',
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
  [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = 'Osaka_jump3.2.ogg',
  [CHAR_SOUND_YAH_WAH_HOO] = {'Osaka_jump1.ogg', 'Osaka_jump1.2.ogg', 'Osaka_jump1.ogg'},
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
  [CHAR_SOUND_GROUND_POUND_WAH] = 'Kagura_punch3.ogg',
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
  [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = 'Kagura_jump3.2.ogg',
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
local VOICETABLE_CHIYO = {
  [CHAR_SOUND_ATTACKED] = 'Chiyo_Dooh.ogg',
  [CHAR_SOUND_DOH] = 'Chiyo_Dooh.ogg',
  [CHAR_SOUND_DROWNING] = 'Chiyo_Drowning.ogg',
  [CHAR_SOUND_DYING] = 'Chiyo_HuhhHuh_LostaLife.ogg',
  [CHAR_SOUND_GROUND_POUND_WAH] = 'Chiyo_punch3.ogg',
  [CHAR_SOUND_HAHA] = 'Chiyo_HaHaa.ogg',
  [CHAR_SOUND_HAHA_2] = 'Chiyo_HaHaa.ogg',
  [CHAR_SOUND_HERE_WE_GO] = 'Chiyo_hereWeGo.ogg',
  [CHAR_SOUND_HOOHOO] = {'Chiyo_jump2.ogg', 'Chiyo_jump2.ogg', 'Chiyo_jump2.ogg'},
  [CHAR_SOUND_MAMA_MIA] = 'Chiyo_MammaMia.ogg',
  [CHAR_SOUND_OKEY_DOKEY] = 'Chiyo_okiedokie.ogg',
  [CHAR_SOUND_ON_FIRE] = 'Chiyo_Aaaaah_BurningIntoLava.ogg',
  [CHAR_SOUND_OOOF] = 'Chiyo_Huh_Oof.ogg',
  [CHAR_SOUND_OOOF2] = 'Chiyo_Huh_Oof.ogg',
  [CHAR_SOUND_PUNCH_HOO] = 'Chiyo_punch3.ogg',
  [CHAR_SOUND_PUNCH_WAH] = 'Chiyo_punch2.ogg',
  [CHAR_SOUND_PUNCH_YAH] = 'Chiyo_punch1.ogg',
  [CHAR_SOUND_SO_LONGA_BOWSER] = 'Chiyo_soLongBowser.ogg',
  [CHAR_SOUND_TWIRL_BOUNCE] = 'Chiyo_Shuaa_Boing.ogg',
  [CHAR_SOUND_WAAAOOOW] = 'Chiyo_FallingGreatHeight.ogg',
  [CHAR_SOUND_WAH2] = 'Chiyo_jump1.2.ogg',
  [CHAR_SOUND_WHOA] = 'Chiyo_Huh_Oof.ogg',
  [CHAR_SOUND_YAHOO] = 'Chiyo_jump3.ogg',
  [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = 'Chiyo_jump3.2.ogg',
  [CHAR_SOUND_YAH_WAH_HOO] = {'Chiyo_jump1.ogg', 'Chiyo_jump1.2.ogg', 'Chiyo_jump1.ogg'},
  [CHAR_SOUND_YAWNING] = 'Chiyo_Yawning.ogg',
  [CHAR_SOUND_PANTING] = {'Chiyo_1hpLeft.ogg', 'Chiyo_1hpLeft.ogg', 'Chiyo_1hpLeft.ogg'},
  [CHAR_SOUND_COUGHING1] = 'silence.ogg',
  [CHAR_SOUND_COUGHING2] = 'silence.ogg',
  [CHAR_SOUND_COUGHING3] = 'silence.ogg',
  [CHAR_SOUND_MAMA_MIA] = 'Chiyo_MammaMia.ogg',
  [CHAR_SOUND_IMA_TIRED] = 'Chiyo_ImaTired.ogg',
  [CHAR_SOUND_LETS_A_GO] = 'Chiyo_LetsGoAllTheWayIn.ogg',
  [CHAR_SOUND_HRMM] = 'Chiyo_grab.ogg',
  [CHAR_SOUND_UH2] = 'Chiyo_iDidit_pullingoverCorner.ogg',
  [CHAR_SOUND_UH2_2] = 'silence.ogg',
  [CHAR_SOUND_UH] = 'Chiyo_Uh.ogg',
  [CHAR_SOUND_PANTING_COLD] = {'Chiyo_1hpLeft.ogg', 'Chiyo_1hpLeft.ogg', 'Chiyo_1hpLeft.ogg'},
  [CHAR_SOUND_SNORING1] = 'silence.ogg',
  [CHAR_SOUND_SNORING2] = 'silence.ogg',
  [CHAR_SOUND_SNORING3] = 'silence.ogg',
  [CHAR_SOUND_EEUH] = 'Chiyo_iDidit_pullingoverCorner.ogg',
}
local VOICETABLE_SAKAKI = {
  [CHAR_SOUND_ATTACKED] = 'Sakaki_Dooh.ogg',
  [CHAR_SOUND_DOH] = 'Sakaki_Dooh.ogg',
  [CHAR_SOUND_DROWNING] = 'Sakaki_Drowning.ogg',
  [CHAR_SOUND_DYING] = 'Sakaki_HuhhHuh_LostaLife.ogg',
  [CHAR_SOUND_GROUND_POUND_WAH] = 'Sakaki_punch3.ogg',
  [CHAR_SOUND_HAHA] = 'Sakaki_HaHaa.ogg',
  [CHAR_SOUND_HAHA_2] = 'Sakaki_HaHaa.ogg',
  [CHAR_SOUND_HERE_WE_GO] = 'Sakaki_hereWeGo.ogg',
  [CHAR_SOUND_HOOHOO] = {'Sakaki_jump2.ogg', 'Sakaki_jump2.ogg', 'Sakaki_jump2.ogg'},
  [CHAR_SOUND_MAMA_MIA] = 'Sakaki_MammaMia.ogg',
  [CHAR_SOUND_OKEY_DOKEY] = 'Sakaki_okiedokie.ogg',
  [CHAR_SOUND_ON_FIRE] = 'Sakaki_Aaaaah_BurningIntoLava.ogg',
  [CHAR_SOUND_OOOF] = 'Sakaki_Huh_Oof.ogg',
  [CHAR_SOUND_OOOF2] = 'Sakaki_Huh_Oof.ogg',
  [CHAR_SOUND_PUNCH_HOO] = 'Sakaki_punch3.ogg',
  [CHAR_SOUND_PUNCH_WAH] = 'Sakaki_punch2.ogg',
  [CHAR_SOUND_PUNCH_YAH] = 'Sakaki_punch1.ogg',
  [CHAR_SOUND_SO_LONGA_BOWSER] = 'Sakaki_soLongBowser.ogg',
  [CHAR_SOUND_TWIRL_BOUNCE] = 'Sakaki_Shuaa_Boing.ogg',
  [CHAR_SOUND_WAAAOOOW] = 'Sakaki_FallingGreatHeight.ogg',
  [CHAR_SOUND_WAH2] = 'Sakaki_jump1.2.ogg',
  [CHAR_SOUND_WHOA] = 'Sakaki_Huh_Oof.ogg',
  [CHAR_SOUND_YAHOO] = 'Sakaki_jump3.ogg',
  [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = 'Sakaki_jump3.2.ogg',
  [CHAR_SOUND_YAH_WAH_HOO] = {'Sakaki_jump1.ogg', 'Sakaki_jump1.2.ogg', 'Sakaki_jump1.ogg'},
  [CHAR_SOUND_YAWNING] = 'Sakaki_Yawning.ogg',
  [CHAR_SOUND_PANTING] = {'Sakaki_1hpLeft.ogg', 'Sakaki_1hpLeft.ogg', 'Sakaki_1hpLeft.ogg'},
  [CHAR_SOUND_COUGHING1] = 'silence.ogg',
  [CHAR_SOUND_COUGHING2] = 'silence.ogg',
  [CHAR_SOUND_COUGHING3] = 'silence.ogg',
  [CHAR_SOUND_MAMA_MIA] = 'Sakaki_MammaMia.ogg',
  [CHAR_SOUND_IMA_TIRED] = 'Sakaki_ImaTired.ogg',
  [CHAR_SOUND_LETS_A_GO] = 'Sakaki_LetsGoAllTheWayIn.ogg',
  [CHAR_SOUND_HRMM] = 'Sakaki_grab.ogg',
  [CHAR_SOUND_UH2] = 'Sakaki_iDidit_pullingoverCorner.ogg',
  [CHAR_SOUND_UH2_2] = 'silence.ogg',
  [CHAR_SOUND_UH] = 'Sakaki_Uh.ogg',
  [CHAR_SOUND_PANTING_COLD] = {'Sakaki_1hpLeft.ogg', 'Sakaki_1hpLeft.ogg', 'Sakaki_1hpLeft.ogg'},
  [CHAR_SOUND_SNORING1] = 'silence.ogg',
  [CHAR_SOUND_SNORING2] = 'silence.ogg',
  [CHAR_SOUND_SNORING3] = 'silence.ogg',
  [CHAR_SOUND_EEUH] = 'Sakaki_iDidit_pullingoverCorner.ogg',
}
local VOICETABLE_YOMI = {
  [CHAR_SOUND_ATTACKED] = 'Yomi_Dooh.ogg',
  [CHAR_SOUND_DOH] = 'Yomi_Dooh.ogg',
  [CHAR_SOUND_DROWNING] = 'Yomi_Drowning.ogg',
  [CHAR_SOUND_DYING] = 'Yomi_HuhhHuh_LostaLife.ogg',
  [CHAR_SOUND_GROUND_POUND_WAH] = 'Yomi_punch3.ogg',
  [CHAR_SOUND_HAHA] = 'Yomi_HaHaa.ogg',
  [CHAR_SOUND_HAHA_2] = 'Yomi_HaHaa.ogg',
  [CHAR_SOUND_HERE_WE_GO] = 'Yomi_hereWeGo.ogg',
  [CHAR_SOUND_HOOHOO] = {'Yomi_jump2.ogg', 'Yomi_jump2.ogg', 'Yomi_jump2.ogg'},
  [CHAR_SOUND_MAMA_MIA] = 'Yomi_MammaMia.ogg',
  [CHAR_SOUND_OKEY_DOKEY] = 'Yomi_okiedokie.ogg',
  [CHAR_SOUND_ON_FIRE] = 'Yomi_Aaaaah_BurningIntoLava.ogg',
  [CHAR_SOUND_OOOF] = 'Yomi_Huh_Oof.ogg',
  [CHAR_SOUND_OOOF2] = 'Yomi_Huh_Oof.ogg',
  [CHAR_SOUND_PUNCH_HOO] = 'Yomi_punch3.ogg',
  [CHAR_SOUND_PUNCH_WAH] = 'Yomi_punch2.ogg',
  [CHAR_SOUND_PUNCH_YAH] = 'Yomi_punch1.ogg',
  [CHAR_SOUND_SO_LONGA_BOWSER] = 'Yomi_soLongBowser.ogg',
  [CHAR_SOUND_TWIRL_BOUNCE] = 'Yomi_Shuaa_Boing.ogg',
  [CHAR_SOUND_WAAAOOOW] = 'Yomi_FallingGreatHeight.ogg',
  [CHAR_SOUND_WAH2] = 'Yomi_jump1.2.ogg',
  [CHAR_SOUND_WHOA] = 'Yomi_Huh_Oof.ogg',
  [CHAR_SOUND_YAHOO] = 'Yomi_jump3.ogg',
  [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = 'Yomi_jump3.2.ogg',
  [CHAR_SOUND_YAH_WAH_HOO] = {'Yomi_jump1.ogg', 'Yomi_jump1.2.ogg', 'Yomi_jump1.ogg'},
  [CHAR_SOUND_YAWNING] = 'Yomi_Yawning.ogg',
  [CHAR_SOUND_PANTING] = {'Yomi_1hpLeft.ogg', 'Yomi_1hpLeft.ogg', 'Yomi_1hpLeft.ogg'},
  [CHAR_SOUND_COUGHING1] = 'Yomi_coughing.ogg',
  [CHAR_SOUND_COUGHING2] = 'silence.ogg',
  [CHAR_SOUND_COUGHING3] = 'Yomi_coughing.ogg',
  [CHAR_SOUND_MAMA_MIA] = 'Yomi_MammaMia.ogg',
  [CHAR_SOUND_IMA_TIRED] = 'Yomi_ImaTired.ogg',
  [CHAR_SOUND_LETS_A_GO] = 'Yomi_LetsGoAllTheWayIn.ogg',
  [CHAR_SOUND_HRMM] = 'Yomi_grab.ogg',
  [CHAR_SOUND_UH2] = 'Yomi_iDidit_pullingoverCorner.ogg',
  [CHAR_SOUND_UH2_2] = 'silence.ogg',
  [CHAR_SOUND_UH] = 'Yomi_Uh.ogg',
  [CHAR_SOUND_PANTING_COLD] = {'Yomi_1hpLeft.ogg', 'Yomi_1hpLeft.ogg', 'Yomi_1hpLeft.ogg'},
  [CHAR_SOUND_SNORING1] = 'silence.ogg',
  [CHAR_SOUND_SNORING2] = 'silence.ogg',
  [CHAR_SOUND_SNORING3] = 'silence.ogg',
  [CHAR_SOUND_EEUH] = 'Yomi_iDidit_pullingoverCorner.ogg',
}
local VOICETABLE_KAORI = {
  [CHAR_SOUND_ATTACKED] = 'Kaori_Dooh.ogg',
  [CHAR_SOUND_DOH] = 'Kaori_Dooh.ogg',
  [CHAR_SOUND_DROWNING] = 'Kaori_Drowning.ogg',
  [CHAR_SOUND_DYING] = 'Kaori_HuhhHuh_LostaLife.ogg',
  [CHAR_SOUND_GROUND_POUND_WAH] = 'Kaori_punch3.ogg',
  [CHAR_SOUND_HAHA] = 'Kaori_HaHaa.ogg',
  [CHAR_SOUND_HAHA_2] = 'Kaori_HaHaa.ogg',
  [CHAR_SOUND_HERE_WE_GO] = 'Kaori_hereWeGo.ogg',
  [CHAR_SOUND_HOOHOO] = {'Kaori_jump2.ogg', 'Kaori_jump2.ogg', 'Kaori_jump2.ogg'},
  [CHAR_SOUND_MAMA_MIA] = 'Kaori_MammaMia.ogg',
  [CHAR_SOUND_OKEY_DOKEY] = 'Kaori_okiedokie.ogg',
  [CHAR_SOUND_ON_FIRE] = 'Kaori_Aaaaah_BurningIntoLava.ogg',
  [CHAR_SOUND_OOOF] = 'Kaori_Huh_Oof.ogg',
  [CHAR_SOUND_OOOF2] = 'Kaori_Huh_Oof.ogg',
  [CHAR_SOUND_PUNCH_HOO] = 'Kaori_punch3.ogg',
  [CHAR_SOUND_PUNCH_WAH] = 'Kaori_punch2.ogg',
  [CHAR_SOUND_PUNCH_YAH] = 'Kaori_punch1.ogg',
  [CHAR_SOUND_SO_LONGA_BOWSER] = 'Kaori_soLongBowser.ogg',
  [CHAR_SOUND_TWIRL_BOUNCE] = 'Kaori_Shuaa_Boing.ogg',
  [CHAR_SOUND_WAAAOOOW] = 'Kaori_FallingGreatHeight.ogg',
  [CHAR_SOUND_WAH2] = 'Kaori_jump1.2.ogg',
  [CHAR_SOUND_WHOA] = 'Kaori_Huh_Oof.ogg',
  [CHAR_SOUND_YAHOO] = 'Kaori_jump3.ogg',
  [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = 'Kaori_jump3.2.ogg',
  [CHAR_SOUND_YAH_WAH_HOO] = {'Kaori_jump1.ogg', 'Kaori_jump1.2.ogg', 'Kaori_jump1.ogg'},
  [CHAR_SOUND_YAWNING] = 'Kaori_Yawning.ogg',
  [CHAR_SOUND_PANTING] = {'Kaori_1hpLeft.ogg', 'Kaori_1hpLeft.ogg', 'Kaori_1hpLeft.ogg'},
  [CHAR_SOUND_COUGHING1] = 'silence.ogg',
  [CHAR_SOUND_COUGHING2] = 'silence.ogg',
  [CHAR_SOUND_COUGHING3] = 'silence.ogg',
  [CHAR_SOUND_MAMA_MIA] = 'Kaori_MammaMia.ogg',
  [CHAR_SOUND_IMA_TIRED] = 'Kaori_ImaTired.ogg',
  [CHAR_SOUND_LETS_A_GO] = 'Kaori_LetsGoAllTheWayIn.ogg',
  [CHAR_SOUND_HRMM] = 'Kaori_grab.ogg',
  [CHAR_SOUND_UH2] = 'Kaori_iDidit_pullingoverCorner.ogg',
  [CHAR_SOUND_UH2_2] = 'silence.ogg',
  [CHAR_SOUND_UH] = 'Kaori_Uh.ogg',
  [CHAR_SOUND_PANTING_COLD] = {'Kaori_1hpLeft.ogg', 'Kaori_1hpLeft.ogg', 'Kaori_1hpLeft.ogg'},
  [CHAR_SOUND_SNORING1] = 'silence.ogg',
  [CHAR_SOUND_SNORING2] = 'silence.ogg',
  [CHAR_SOUND_SNORING3] = 'silence.ogg',
  [CHAR_SOUND_EEUH] = 'Kaori_iDidit_pullingoverCorner.ogg',
}
local VOICETABLE_CHIHIRO = {
  [CHAR_SOUND_ATTACKED] = 'Chihiro_Dooh.ogg',
  [CHAR_SOUND_DOH] = 'Chihiro_Dooh.ogg',
  [CHAR_SOUND_DROWNING] = 'Chihiro_Drowning.ogg',
  [CHAR_SOUND_DYING] = 'Chihiro_HuhhHuh_LostaLife.ogg',
  [CHAR_SOUND_GROUND_POUND_WAH] = 'Chihiro_punch3.ogg',
  [CHAR_SOUND_HAHA] = 'Chihiro_HaHaa.ogg',
  [CHAR_SOUND_HAHA_2] = 'Chihiro_HaHaa.ogg',
  [CHAR_SOUND_HERE_WE_GO] = 'Chihiro_hereWeGo.ogg',
  [CHAR_SOUND_HOOHOO] = {'Chihiro_jump2.ogg', 'Chihiro_jump2.ogg', 'Chihiro_jump2.ogg'},
  [CHAR_SOUND_MAMA_MIA] = 'Chihiro_MammaMia.ogg',
  [CHAR_SOUND_OKEY_DOKEY] = 'Chihiro_okiedokie.ogg',
  [CHAR_SOUND_ON_FIRE] = 'Chihiro_Aaaaah_BurningIntoLava.ogg',
  [CHAR_SOUND_OOOF] = 'Chihiro_Huh_Oof.ogg',
  [CHAR_SOUND_OOOF2] = 'Chihiro_Huh_Oof.ogg',
  [CHAR_SOUND_PUNCH_HOO] = 'Chihiro_punch3.ogg',
  [CHAR_SOUND_PUNCH_WAH] = 'Chihiro_punch2.ogg',
  [CHAR_SOUND_PUNCH_YAH] = 'Chihiro_punch1.ogg',
  [CHAR_SOUND_SO_LONGA_BOWSER] = 'Chihiro_soLongBowser.ogg',
  [CHAR_SOUND_TWIRL_BOUNCE] = 'Chihiro_Shuaa_Boing.ogg',
  [CHAR_SOUND_WAAAOOOW] = 'Chihiro_FallingGreatHeight.ogg',
  [CHAR_SOUND_WAH2] = 'Chihiro_jump1.2.ogg',
  [CHAR_SOUND_WHOA] = 'Chihiro_Huh_Oof.ogg',
  [CHAR_SOUND_YAHOO] = 'Chihiro_jump3.ogg',
  [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = 'Chihiro_jump3.2.ogg',
  [CHAR_SOUND_YAH_WAH_HOO] = {'Chihiro_jump1.ogg', 'Chihiro_jump1.2.ogg', 'Chihiro_jump1.ogg'},
  [CHAR_SOUND_YAWNING] = 'Chihiro_Yawning.ogg',
  [CHAR_SOUND_PANTING] = {'Chihiro_1hpLeft.ogg', 'Chihiro_1hpLeft.ogg', 'Chihiro_1hpLeft.ogg'},
  [CHAR_SOUND_COUGHING1] = 'silence.ogg',
  [CHAR_SOUND_COUGHING2] = 'silence.ogg',
  [CHAR_SOUND_COUGHING3] = 'silence.ogg',
  [CHAR_SOUND_MAMA_MIA] = 'Chihiro_MammaMia.ogg',
  [CHAR_SOUND_IMA_TIRED] = 'Chihiro_ImaTired.ogg',
  [CHAR_SOUND_LETS_A_GO] = 'Chihiro_LetsGoAllTheWayIn.ogg',
  [CHAR_SOUND_HRMM] = 'Chihiro_grab.ogg',
  [CHAR_SOUND_UH2] = 'Chihiro_iDidit_pullingoverCorner.ogg',
  [CHAR_SOUND_UH2_2] = 'silence.ogg',
  [CHAR_SOUND_UH] = 'Chihiro_Uh.ogg',
  [CHAR_SOUND_PANTING_COLD] = {'Chihiro_1hpLeft.ogg', 'Chihiro_1hpLeft.ogg', 'Chihiro_1hpLeft.ogg'},
  [CHAR_SOUND_SNORING1] = 'silence.ogg',
  [CHAR_SOUND_SNORING2] = 'silence.ogg',
  [CHAR_SOUND_SNORING3] = 'silence.ogg',
  [CHAR_SOUND_EEUH] = 'Chihiro_iDidit_pullingoverCorner.ogg',
}

-- Load Models
local E_MODEL_OSAKAV2 = smlua_model_util_get_id("osakav2_geo")
local E_MODEL_OSAKASUMMER = smlua_model_util_get_id("osakasummer_geo")
local E_MODEL_OSAKASPORTS = smlua_model_util_get_id("osakasports_geo")
local E_MODEL_OSAKAOUTFIT1 = smlua_model_util_get_id("osakaoutfit1_geo")
local E_MODEL_OSAKAOUTFIT2 = smlua_model_util_get_id("osakaoutfit2_geo")
local E_MODEL_OSAKACAFE = smlua_model_util_get_id("osakacafe_geo")
local E_MODEL_OSAKALEGACY = smlua_model_util_get_id("osakalegacy_geo")

local E_MODEL_TOMO = smlua_model_util_get_id("tomo_geo")
local E_MODEL_TOMOSUMMER = smlua_model_util_get_id("tomosummer_geo")
local E_MODEL_TOMOSPORTS = smlua_model_util_get_id("tomosports_geo")
local E_MODEL_TOMOOUTFIT1 = smlua_model_util_get_id("tomooutfit1_geo")
local E_MODEL_TOMOOUTFIT2 = smlua_model_util_get_id("tomooutfit2_geo")
local E_MODEL_TOMOCAFE = smlua_model_util_get_id("tomocafe_geo")

local E_MODEL_KAGURA = smlua_model_util_get_id("kagura_geo")
local E_MODEL_KAGURASUMMER = smlua_model_util_get_id("kagurasummer_geo")
local E_MODEL_KAGURASPORTS = smlua_model_util_get_id("kagurasports_geo")
local E_MODEL_KAGURAOUTFIT1 = smlua_model_util_get_id("kaguraoutfit1_geo")
local E_MODEL_KAGURAOUTFIT2 = smlua_model_util_get_id("kaguraoutfit2_geo")
local E_MODEL_KAGURACAFE = smlua_model_util_get_id("kaguracafe_geo")

local E_MODEL_CHIYO = smlua_model_util_get_id("chiyo_geo")
local E_MODEL_CHIYOSUMMER = smlua_model_util_get_id("chiyosummer_geo")
local E_MODEL_CHIYOSPORTS = smlua_model_util_get_id("chiyosports_geo")
local E_MODEL_CHIYOOUTFIT1 = smlua_model_util_get_id("chiyooutfit1_geo")
local E_MODEL_CHIYOOUTFIT2 = smlua_model_util_get_id("chiyooutfit2_geo")
local E_MODEL_CHIYOPENGUIN= smlua_model_util_get_id("chiyopenguin_geo")

local E_MODEL_SAKAKI = smlua_model_util_get_id("sakaki_geo")
local E_MODEL_SAKAKISUMMER = smlua_model_util_get_id("sakakisummer_geo")
local E_MODEL_SAKAKISPORTS = smlua_model_util_get_id("sakakisports_geo")
local E_MODEL_SAKAKIOUTFIT1 = smlua_model_util_get_id("sakakioutfit1_geo")
local E_MODEL_SAKAKIOUTFIT2 = smlua_model_util_get_id("sakakioutfit2_geo")
local E_MODEL_SAKAKICAFE = smlua_model_util_get_id("sakakicafe_geo")

local E_MODEL_YOMI = smlua_model_util_get_id("yomi_geo")
local E_MODEL_YOMISUMMER = smlua_model_util_get_id("yomisummer_geo")
local E_MODEL_YOMISPORTS = smlua_model_util_get_id("yomisports_geo")
local E_MODEL_YOMIOUTFIT1 = smlua_model_util_get_id("yomioutfit1_geo")
local E_MODEL_YOMIOUTFIT2 = smlua_model_util_get_id("yomioutfit2_geo")
local E_MODEL_YOMICAFE = smlua_model_util_get_id("yomicafe_geo")

local E_MODEL_KAORI = smlua_model_util_get_id("kaori_geo")
local E_MODEL_KAORISUMMER = smlua_model_util_get_id("kaorisummer_geo")
local E_MODEL_KAORISPORTS = smlua_model_util_get_id("kaorisports_geo")
local E_MODEL_KAORIOUTFIT1 = smlua_model_util_get_id("kaorioutfit1_geo")
local E_MODEL_KAORIOUTFIT2 = smlua_model_util_get_id("kaorioutfit2_geo")
local E_MODEL_KAORICAFE = smlua_model_util_get_id("kaoricafe_geo")

local E_MODEL_CHIHIRO = smlua_model_util_get_id("chihiro_geo")
local E_MODEL_CHIHIROSUMMER = smlua_model_util_get_id("chihirosummer_geo")
local E_MODEL_CHIHIROSPORTS = smlua_model_util_get_id("chihirosports_geo")
local E_MODEL_CHIHIROOUTFIT1 = smlua_model_util_get_id("chihirooutfit1_geo")
local E_MODEL_CHIHIROOUTFIT2 = smlua_model_util_get_id("chihirooutfit2_geo")
local E_MODEL_CHIHIROCAFE = smlua_model_util_get_id("chihirocafe_geo")

local E_MODEL_TOWERCHIYO = smlua_model_util_get_id("towerchiyo_geo")
local E_MODEL_TOWEROSAKA = smlua_model_util_get_id("towerosaka_geo")
local E_MODEL_TOWERTOMO = smlua_model_util_get_id("towertomo_geo")

--customStar
local E_MODEL_SATAANDAGI = smlua_model_util_get_id("sataandagi_geo")
local E_MODEL_SATAANDAGI2 = smlua_model_util_get_id("sataandagi2_geo")

-- LOAD CAPS
local CAPS_AZU = {
    normal = smlua_model_util_get_id("daiohcoin_geo"),
    wing = smlua_model_util_get_id("chiyowings_geo"),
    metal = smlua_model_util_get_id("daiohcoin_m_geo"),
    metalWing = smlua_model_util_get_id("chiyowings_m_geo"),
}
-- LOAD CHIYOT
local CAPS_CHIYO = {
    normal = smlua_model_util_get_id("chiyotails_geo"),
    wing = smlua_model_util_get_id("chiyotails_geo"),
    metal = smlua_model_util_get_id("chiyotails_m_geo"),
    metalWing = smlua_model_util_get_id("chiyotails_m_geo"),
}
-- LOAD OF2
local CAPS_OSAKAOF2 = {
    normal = smlua_model_util_get_id("osakaof2cap_geo"),
    wing = smlua_model_util_get_id("osakaof2cap_w_geo"),
    metal = smlua_model_util_get_id("osakaof2cap_m_geo"),
    metalWing = smlua_model_util_get_id("osakaof2cap_w_m_geo"),
}
local CAPS_TOMOOF2 = {
    normal = smlua_model_util_get_id("tomoof2cap_geo"),
    wing = smlua_model_util_get_id("tomoof2cap_w_geo"),
    metal = smlua_model_util_get_id("tomoof2cap_m_geo"),
    metalWing = smlua_model_util_get_id("tomoof2cap_w_m_geo"),
}
local CAPS_CHIYOOF2 = {
    normal = smlua_model_util_get_id("chiyoof2cap_geo"),
    wing = smlua_model_util_get_id("chiyoof2cap_w_geo"),
    metal = smlua_model_util_get_id("chiyoof2cap_m_geo"),
    metalWing = smlua_model_util_get_id("chiyoof2cap_w_m_geo"),
}
local CAPS_SAKAKIOF2 = {
    normal = smlua_model_util_get_id("sakakiof2cap_geo"),
    wing = smlua_model_util_get_id("sakakiof2_w_geo"),
    metal = smlua_model_util_get_id("sakakiof2cap_m_geo"),
    metalWing = smlua_model_util_get_id("sakakiof2_w_m_geo"),
}
-- LOAD CAFE
local CAPS_CAFE = {
    normal = smlua_model_util_get_id("cafecap_geo"),
    wing = smlua_model_util_get_id("cafecap_w_geo"),
    metal = smlua_model_util_get_id("cafecap_m_geo"),
    metalWing = smlua_model_util_get_id("cafecap_w_m_geo"),
}
local CAPS_CAFE2 = {
    normal = smlua_model_util_get_id("coffecup_geo"),
    wing = smlua_model_util_get_id("chiyowings_geo"),
    metal = smlua_model_util_get_id("coffecup_m_geo"),
    metalWing = smlua_model_util_get_id("chiyowings_m_geo"),
}
-- LOAD TOWER
local CAPS_TOWER = {
    normal = smlua_model_util_get_id("towercap_geo"),
    wing = smlua_model_util_get_id("towercap_w_geo"),
    metal = smlua_model_util_get_id("towercap_m_geo"),
    metalWing = smlua_model_util_get_id("towercap_w_m_geo"),
}
local CAPS_TUMULT = {
    normal = smlua_model_util_get_id("tumulthat_geo"),
    wing = smlua_model_util_get_id("tumultcap_w_geo"),
    metal = smlua_model_util_get_id("tumulthat_m_geo"),
    metalWing = smlua_model_util_get_id("tumulthat_w_m_geo"),
}

--Add  Azucaps
 --Osaka
 _G.charSelect.character_add_caps(E_MODEL_OSAKAV2, CAPS_AZU)
 _G.charSelect.character_add_caps(E_MODEL_OSAKASUMMER, CAPS_AZU)
 _G.charSelect.character_add_caps(E_MODEL_OSAKASPORTS, CAPS_AZU)
 _G.charSelect.character_add_caps(E_MODEL_OSAKAOUTFIT1, CAPS_AZU)
 _G.charSelect.character_add_caps(E_MODEL_OSAKALEGACY, CAPS_AZU)
 --Tomo
 _G.charSelect.character_add_caps(E_MODEL_TOMO, CAPS_AZU)
 _G.charSelect.character_add_caps(E_MODEL_TOMOSUMMER, CAPS_AZU)
 _G.charSelect.character_add_caps(E_MODEL_TOMOSPORTS, CAPS_AZU)
 _G.charSelect.character_add_caps(E_MODEL_TOMOOUTFIT1, CAPS_AZU)
 --Kagura
 _G.charSelect.character_add_caps(E_MODEL_KAGURA, CAPS_AZU)
 _G.charSelect.character_add_caps(E_MODEL_KAGURASUMMER, CAPS_AZU)
 _G.charSelect.character_add_caps(E_MODEL_KAGURASPORTS, CAPS_AZU)
 _G.charSelect.character_add_caps(E_MODEL_KAGURAOUTFIT1, CAPS_AZU)
 --Chiyo
 _G.charSelect.character_add_caps(E_MODEL_CHIYO, CAPS_CHIYO)
 _G.charSelect.character_add_caps(E_MODEL_CHIYOSUMMER, CAPS_CHIYO)
 _G.charSelect.character_add_caps(E_MODEL_CHIYOSPORTS, CAPS_CHIYO)
 _G.charSelect.character_add_caps(E_MODEL_CHIYOOUTFIT1, CAPS_CHIYO)
 --Sakaki
 _G.charSelect.character_add_caps(E_MODEL_SAKAKI, CAPS_AZU)
 _G.charSelect.character_add_caps(E_MODEL_SAKAKISUMMER, CAPS_AZU)
 _G.charSelect.character_add_caps(E_MODEL_SAKAKISPORTS, CAPS_AZU)
 _G.charSelect.character_add_caps(E_MODEL_SAKAKIOUTFIT1, CAPS_AZU)
 --Yomi
 _G.charSelect.character_add_caps(E_MODEL_YOMI, CAPS_AZU)
 _G.charSelect.character_add_caps(E_MODEL_YOMISUMMER, CAPS_AZU)
 _G.charSelect.character_add_caps(E_MODEL_YOMISPORTS, CAPS_AZU)
 _G.charSelect.character_add_caps(E_MODEL_YOMIOUTFIT1, CAPS_AZU)
 _G.charSelect.character_add_caps(E_MODEL_YOMIOUTFIT2, CAPS_AZU)
 --Kaori
 _G.charSelect.character_add_caps(E_MODEL_KAORI, CAPS_AZU)
 _G.charSelect.character_add_caps(E_MODEL_KAORISUMMER, CAPS_AZU)
 _G.charSelect.character_add_caps(E_MODEL_KAORISPORTS, CAPS_AZU)
 _G.charSelect.character_add_caps(E_MODEL_KAORIOUTFIT1, CAPS_AZU)
 _G.charSelect.character_add_caps(E_MODEL_KAORIOUTFIT2, CAPS_AZU)
 --Chihiro
 _G.charSelect.character_add_caps(E_MODEL_CHIHIRO, CAPS_AZU)
 _G.charSelect.character_add_caps(E_MODEL_CHIHIROSUMMER, CAPS_AZU)
 _G.charSelect.character_add_caps(E_MODEL_CHIHIROSPORTS, CAPS_AZU)
 _G.charSelect.character_add_caps(E_MODEL_CHIHIROOUTFIT1, CAPS_AZU)
 _G.charSelect.character_add_caps(E_MODEL_CHIHIROOUTFIT2, CAPS_AZU)


--Add  Outfit2 Caps
 _G.charSelect.character_add_caps(E_MODEL_OSAKAOUTFIT2, CAPS_OSAKAOF2)
 _G.charSelect.character_add_caps(E_MODEL_TOMOOUTFIT2, CAPS_TOMOOF2)
 _G.charSelect.character_add_caps(E_MODEL_CHIYOOUTFIT2, CAPS_CHIYOOF2)
 _G.charSelect.character_add_caps(E_MODEL_SAKAKIOUTFIT2, CAPS_SAKAKIOF2)

--Add  Cafe Caps
 _G.charSelect.character_add_caps(E_MODEL_OSAKACAFE, CAPS_CAFE)
 _G.charSelect.character_add_caps(E_MODEL_TOMOCAFE, CAPS_CAFE)
 _G.charSelect.character_add_caps(E_MODEL_KAGURACAFE, CAPS_CAFE)
 _G.charSelect.character_add_caps(E_MODEL_CHIYOPENGUIN, CAPS_CAFE2)
 _G.charSelect.character_add_caps(E_MODEL_SAKAKICAFE, CAPS_CAFE2)
 _G.charSelect.character_add_caps(E_MODEL_YOMICAFE, CAPS_CAFE)
 _G.charSelect.character_add_caps(E_MODEL_KAORICAFE, CAPS_CAFE2)
 _G.charSelect.character_add_caps(E_MODEL_CHIHIROCAFE, CAPS_CAFE)
--Add  Tower Caps
 _G.charSelect.character_add_caps(E_MODEL_TOWERCHIYO, CAPS_TOWER)
 _G.charSelect.character_add_caps(E_MODEL_TOWEROSAKA, CAPS_TOWER)
 _G.charSelect.character_add_caps(E_MODEL_TOWERTOMO, CAPS_TUMULT)
 
-- Character Initialize
local CT_OSAKA = _G.charSelect.character_add("Osaka", "Real name Ayumu Kasuga. Local airhead from Osaka.", "KasugAxel / Nokiaa / Azumadeline", {r = 228, g = 50, b = 50}, E_MODEL_OSAKAV2, CT_MARIO, TEX_OSAKAV2)
    _G.charSelect.character_add_costume(CT_OSAKA, "Osaka (Summer)", nil, nil, nil, E_MODEL_OSAKASUMMER, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_OSAKA, "Osaka (Sports)", nil, nil, nil, E_MODEL_OSAKASPORTS, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_OSAKA, "Osaka (Alt 1)", nil, nil, nil, E_MODEL_OSAKAOUTFIT1, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_OSAKA, "Osaka (Alt 2)", nil, nil, nil, E_MODEL_OSAKAOUTFIT2, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_OSAKA, "Osaka (Cafe)", nil, nil, nil, E_MODEL_OSAKACAFE, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_OSAKA, "Osaka (Legacy)", nil, nil, nil, E_MODEL_OSAKALEGACY, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_OSAKA, "Osaka (AzuTower)", nil, nil, nil, E_MODEL_TOWEROSAKA, nil, TEX_AZUTOWER, nil, nil)

	_G.charSelect.character_add_celebration_star(E_MODEL_OSAKAV2, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_OSAKASUMMER, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_OSAKASPORTS, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_OSAKAOUTFIT1, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_OSAKAOUTFIT2, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_OSAKACAFE, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_OSAKALEGACY, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
    _G.charSelect.character_add_celebration_star(E_MODEL_TOWEROSAKA, E_MODEL_SATAANDAGI2, TEX_SATAANDAGI2_ICON)

    _G.charSelect.character_add_health_meter(CT_OSAKA, HEALTH_METER_AZU)
	
local CT_TOMO = _G.charSelect.character_add("Tomo", "Crazy and go-nuts student. Irritating.", "LukasATBK / KasugAxel", {r = 144, g = 152, b = 201}, E_MODEL_TOMO, CT_MARIO, TEX_TOMO)
    _G.charSelect.character_add_costume(CT_TOMO, "Tomo (Summer)", nil, nil, nil, E_MODEL_TOMOSUMMER, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_TOMO, "Tomo (Sports)", nil, nil, nil, E_MODEL_TOMOSPORTS, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_TOMO, "Tomo (Alt 1)", nil, nil, nil, E_MODEL_TOMOOUTFIT1, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_TOMO, "Tomo (Alt 2)", nil, nil, nil, E_MODEL_TOMOOUTFIT2, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_TOMO, "Tomo (Cafe)", nil, nil, nil, E_MODEL_TOMOCAFE, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_TOMO, "Tomo (AzuTower)", nil, nil, nil, E_MODEL_TOWERTOMO, nil, TEX_AZUTOWER, nil, nil)

	_G.charSelect.character_add_celebration_star(E_MODEL_TOMO, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_TOMOSUMMER, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_TOMOSPORTS, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_TOMOOUTFIT1, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_TOMOOUTFIT2, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_TOMOCAFE, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
    _G.charSelect.character_add_celebration_star(E_MODEL_TOWERTOMO, E_MODEL_SATAANDAGI2, TEX_SATAANDAGI2_ICON)
	
    _G.charSelect.character_add_health_meter(CT_TOMO, HEALTH_METER_AZU)
local CT_KAGURA = _G.charSelect.character_add("Kagura", "She's a determined person, she's into sports and trains a lot.", "LukasATBK / KasugAxel", {r = 54, g = 90, b = 90}, E_MODEL_KAGURA, CT_MARIO, TEX_KAGURA)
    _G.charSelect.character_add_costume(CT_KAGURA, "Kagura (Summer)", nil, nil, nil, E_MODEL_KAGURASUMMER, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_KAGURA, "Kagura (Sports)", nil, nil, nil, E_MODEL_KAGURASPORTS, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_KAGURA, "Kagura (Alt 1)", nil, nil, nil, E_MODEL_KAGURAOUTFIT1, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_KAGURA, "Kagura (Alt 2)", nil, nil, nil, E_MODEL_KAGURAOUTFIT2, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_KAGURA, "Kagura (Cafe)", nil, nil, nil, E_MODEL_KAGURACAFE, nil, nil, nil, nil)

    _G.charSelect.character_add_celebration_star(E_MODEL_KAGURA, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_KAGURASUMMER, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_KAGURASPORTS, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_KAGURAOUTFIT1, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_KAGURAOUTFIT2, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_KAGURACAFE, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	
    _G.charSelect.character_add_health_meter(CT_KAGURA, HEALTH_METER_AZU)
local CT_CHIYO = _G.charSelect.character_add("Chiyo", "Small but smart girl, gifted and has funny hair.", "LukasATBK / KasugAxel", {r = 247, g = 107, b = 68}, E_MODEL_CHIYO, CT_TOAD, TEX_CHIYO, 0.7)
    _G.charSelect.character_add_costume(CT_CHIYO, "Chiyo (Summer)", nil, nil, nil, E_MODEL_CHIYOSUMMER, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_CHIYO, "Chiyo (Sports)", nil, nil, nil, E_MODEL_CHIYOSPORTS, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_CHIYO, "Chiyo (Alt 1)", nil, nil, nil, E_MODEL_CHIYOOUTFIT1, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_CHIYO, "Chiyo (Alt 2)", nil, nil, nil, E_MODEL_CHIYOOUTFIT2, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_CHIYO, "Chiyo (Penguin)", nil, nil, nil, E_MODEL_CHIYOPENGUIN, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_CHIYO, "Chiyo (AzuTower)", nil, nil, nil, E_MODEL_TOWERCHIYO, nil, TEX_AZUTOWER, nil, nil)

	_G.charSelect.character_add_celebration_star(E_MODEL_CHIYO, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_CHIYOSUMMER, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_CHIYOSPORTS, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_CHIYOOUTFIT1, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_CHIYOOUTFIT2, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_CHIYOPENGUIN, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
    _G.charSelect.character_add_celebration_star(E_MODEL_TOWERCHIYO, E_MODEL_SATAANDAGI2, TEX_SATAANDAGI2_ICON)

    _G.charSelect.character_add_health_meter(CT_CHIYO, HEALTH_METER_AZU)
local CT_SAKAKI = _G.charSelect.character_add("Sakaki", "Sakaki is a really tall and smart girl, also a cat lover.", "LukasATBK / KasugAxel", {r = 249, g = 178, b = 178}, E_MODEL_SAKAKI, CT_MARIO, TEX_SAKAKI)
    _G.charSelect.character_add_costume(CT_SAKAKI, "Sakaki (Summer)", nil, nil, nil, E_MODEL_SAKAKISUMMER, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_SAKAKI, "Sakaki (Sports)", nil, nil, nil, E_MODEL_SAKAKISPORTS, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_SAKAKI, "Sakaki (Alt 1)", nil, nil, nil, E_MODEL_SAKAKIOUTFIT1, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_SAKAKI, "Sakaki (Alt 2)", nil, nil, nil, E_MODEL_SAKAKIOUTFIT2, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_SAKAKI, "Sakaki (Cafe)", nil, nil, nil, E_MODEL_SAKAKICAFE, nil, nil, nil, nil)

	_G.charSelect.character_add_celebration_star(E_MODEL_SAKAKI, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_SAKAKISUMMER, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_SAKAKISPORTS, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_SAKAKIOUTFIT1, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_SAKAKIOUTFIT2, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_SAKAKICAFE, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)

    _G.charSelect.character_add_health_meter(CT_SAKAKI, HEALTH_METER_AZU)
local CT_YOMI = _G.charSelect.character_add("Yomi", "The voice of reason, and the most mature and serious of her friends.", "LukasATBK / KasugAxel", {r = 253, g = 97, b = 105}, E_MODEL_YOMI, CT_MARIO, TEX_YOMI)
    _G.charSelect.character_add_costume(CT_YOMI, "Yomi (Summer)", nil, nil, nil, E_MODEL_YOMISUMMER, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_YOMI, "Yomi (Sports)", nil, nil, nil, E_MODEL_YOMISPORTS, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_YOMI, "Yomi (Alt 1)", nil, nil, nil, E_MODEL_YOMIOUTFIT1, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_YOMI, "Yomi (Alt 2)", nil, nil, nil, E_MODEL_YOMIOUTFIT2, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_YOMI, "Yomi (Cafe)", nil, nil, nil, E_MODEL_YOMICAFE, nil, nil, nil, nil)

	_G.charSelect.character_add_celebration_star(E_MODEL_YOMI, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_YOMISUMMER, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_YOMISPORTS, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_YOMIOUTFIT1, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_YOMIOUTFIT2, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_YOMICAFE, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)

    _G.charSelect.character_add_health_meter(CT_YOMI, HEALTH_METER_AZU)
local CT_KAORI = _G.charSelect.character_add("Kaori", "AKA Kaorin. She's a shy and passional girl, more than a little neurotic.", "LukasATBK / KasugAxel", {r = 255, g = 172, b = 172}, E_MODEL_KAORI, CT_MARIO, TEX_KAORI)
    _G.charSelect.character_add_costume(CT_KAORI, "Kaori (Summer)", nil, nil, nil, E_MODEL_KAORISUMMER, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_KAORI, "Kaori (Sports)", nil, nil, nil, E_MODEL_KAORISPORTS, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_KAORI, "Kaori (Alt 1)", nil, nil, nil, E_MODEL_KAORIOUTFIT1, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_KAORI, "Kaori (Alt 2)", nil, nil, nil, E_MODEL_KAORIOUTFIT2, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_KAORI, "Kaori (Cafe)", nil, nil, nil, E_MODEL_KAORICAFE, nil, nil, nil, nil)

	_G.charSelect.character_add_celebration_star(E_MODEL_KAORI, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_KAORISUMMER, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_KAORISPORTS, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_KAORIOUTFIT1, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_KAORIOUTFIT2, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_KAORICAFE, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)

    _G.charSelect.character_add_health_meter(CT_KAORI, HEALTH_METER_AZU)
local CT_CHIHIRO = _G.charSelect.character_add("Chihiro", "Kaori's friend. Fairly easy-going person.", "LukasATBK / KasugAxel", {r = 255, g = 214, b = 147}, E_MODEL_CHIHIRO, CT_MARIO, TEX_CHIHIRO)
    _G.charSelect.character_add_costume(CT_CHIHIRO, "Chihiro (Summer)", nil, nil, nil, E_MODEL_CHIHIROSUMMER, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_CHIHIRO, "Chihiro (Sports)", nil, nil, nil, E_MODEL_CHIHIROSPORTS, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_CHIHIRO, "Chihiro (Alt 1)", nil, nil, nil, E_MODEL_CHIHIROOUTFIT1, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_CHIHIRO, "Chihiro (Alt 2)", nil, nil, nil, E_MODEL_CHIHIROOUTFIT2, nil, nil, nil, nil)
    _G.charSelect.character_add_costume(CT_CHIHIRO, "Chihiro (Cafe)", nil, nil, nil, E_MODEL_CHIHIROCAFE, nil, nil, nil, nil)

	_G.charSelect.character_add_celebration_star(E_MODEL_CHIHIRO, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_CHIHIROSUMMER, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_CHIHIROSPORTS, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_CHIHIROOUTFIT1, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_CHIHIROOUTFIT2, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)
	_G.charSelect.character_add_celebration_star(E_MODEL_CHIHIROCAFE, E_MODEL_SATAANDAGI, TEX_SATAANDAGI_ICON)

    _G.charSelect.character_add_health_meter(CT_CHIHIRO, HEALTH_METER_AZU)

-- Add Voices
_G.charSelect.character_add_voice(E_MODEL_OSAKAV2, VOICETABLE_OSAKA)
_G.charSelect.character_add_voice(E_MODEL_OSAKASUMMER, VOICETABLE_OSAKA)
_G.charSelect.character_add_voice(E_MODEL_OSAKASPORTS, VOICETABLE_OSAKA)
_G.charSelect.character_add_voice(E_MODEL_OSAKAOUTFIT1, VOICETABLE_OSAKA)
_G.charSelect.character_add_voice(E_MODEL_OSAKAOUTFIT2, VOICETABLE_OSAKA)
_G.charSelect.character_add_voice(E_MODEL_OSAKACAFE, VOICETABLE_OSAKA)
_G.charSelect.character_add_voice(E_MODEL_OSAKALEGACY, VOICETABLE_OSAKA)

_G.charSelect.character_add_voice(E_MODEL_TOMO, VOICETABLE_TOMO)
_G.charSelect.character_add_voice(E_MODEL_TOMOSUMMER, VOICETABLE_TOMO)
_G.charSelect.character_add_voice(E_MODEL_TOMOSPORTS, VOICETABLE_TOMO)
_G.charSelect.character_add_voice(E_MODEL_TOMOOUTFIT1, VOICETABLE_TOMO)
_G.charSelect.character_add_voice(E_MODEL_TOMOOUTFIT2, VOICETABLE_TOMO)
_G.charSelect.character_add_voice(E_MODEL_TOMOCAFE, VOICETABLE_TOMO)

_G.charSelect.character_add_voice(E_MODEL_KAGURA, VOICETABLE_KAGURA)
_G.charSelect.character_add_voice(E_MODEL_KAGURASUMMER, VOICETABLE_KAGURA)
_G.charSelect.character_add_voice(E_MODEL_KAGURASPORTS, VOICETABLE_KAGURA)
_G.charSelect.character_add_voice(E_MODEL_KAGURAOUTFIT1, VOICETABLE_KAGURA)
_G.charSelect.character_add_voice(E_MODEL_KAGURAOUTFIT2, VOICETABLE_KAGURA)
_G.charSelect.character_add_voice(E_MODEL_KAGURACAFE, VOICETABLE_KAGURA)

_G.charSelect.character_add_voice(E_MODEL_CHIYO, VOICETABLE_CHIYO)
_G.charSelect.character_add_voice(E_MODEL_CHIYOSUMMER, VOICETABLE_CHIYO)
_G.charSelect.character_add_voice(E_MODEL_CHIYOSPORTS, VOICETABLE_CHIYO)
_G.charSelect.character_add_voice(E_MODEL_CHIYOOUTFIT1, VOICETABLE_CHIYO)
_G.charSelect.character_add_voice(E_MODEL_CHIYOOUTFIT2, VOICETABLE_CHIYO)
_G.charSelect.character_add_voice(E_MODEL_CHIYOPENGUIN, VOICETABLE_CHIYO)

_G.charSelect.character_add_voice(E_MODEL_SAKAKI, VOICETABLE_SAKAKI)
_G.charSelect.character_add_voice(E_MODEL_SAKAKISUMMER, VOICETABLE_SAKAKI)
_G.charSelect.character_add_voice(E_MODEL_SAKAKISPORTS, VOICETABLE_SAKAKI)
_G.charSelect.character_add_voice(E_MODEL_SAKAKIOUTFIT1, VOICETABLE_SAKAKI)
_G.charSelect.character_add_voice(E_MODEL_SAKAKIOUTFIT2, VOICETABLE_SAKAKI)
_G.charSelect.character_add_voice(E_MODEL_SAKAKICAFE, VOICETABLE_SAKAKI)

_G.charSelect.character_add_voice(E_MODEL_YOMI, VOICETABLE_YOMI)
_G.charSelect.character_add_voice(E_MODEL_YOMISUMMER, VOICETABLE_YOMI)
_G.charSelect.character_add_voice(E_MODEL_YOMISPORTS, VOICETABLE_YOMI)
_G.charSelect.character_add_voice(E_MODEL_YOMIOUTFIT1, VOICETABLE_YOMI)
_G.charSelect.character_add_voice(E_MODEL_YOMIOUTFIT2, VOICETABLE_YOMI)
_G.charSelect.character_add_voice(E_MODEL_YOMICAFE, VOICETABLE_YOMI)

_G.charSelect.character_add_voice(E_MODEL_KAORI, VOICETABLE_KAORI)
_G.charSelect.character_add_voice(E_MODEL_KAORISUMMER, VOICETABLE_KAORI)
_G.charSelect.character_add_voice(E_MODEL_KAORISPORTS, VOICETABLE_KAORI)
_G.charSelect.character_add_voice(E_MODEL_KAORIOUTFIT1, VOICETABLE_KAORI)
_G.charSelect.character_add_voice(E_MODEL_KAORIOUTFIT2, VOICETABLE_KAORI)
_G.charSelect.character_add_voice(E_MODEL_KAORICAFE, VOICETABLE_KAORI)

_G.charSelect.character_add_voice(E_MODEL_CHIHIRO, VOICETABLE_CHIHIRO)
_G.charSelect.character_add_voice(E_MODEL_CHIHIROSUMMER, VOICETABLE_CHIHIRO)
_G.charSelect.character_add_voice(E_MODEL_CHIHIROSPORTS, VOICETABLE_CHIHIRO)
_G.charSelect.character_add_voice(E_MODEL_CHIHIROOUTFIT1, VOICETABLE_CHIHIRO)
_G.charSelect.character_add_voice(E_MODEL_CHIHIROOUTFIT2, VOICETABLE_CHIHIRO)
_G.charSelect.character_add_voice(E_MODEL_CHIHIROCAFE, VOICETABLE_CHIHIRO)

_G.charSelect.character_add_voice(E_MODEL_TOWERCHIYO, VOICETABLE_CHIYO)
_G.charSelect.character_add_voice(E_MODEL_TOWERTOMO, VOICETABLE_TOMO)
_G.charSelect.character_add_voice(E_MODEL_TOWEROSAKA, VOICETABLE_OSAKA)

-- Update Voicelines
local character_get_voice, update_sound, update_snore = _G.charSelect.character_get_voice, _G.charSelect.voice.sound, _G.charSelect.voice.snore
local function character_sounds(m, sound)
    local v = _G.charSelect.character_get_voice(m)
    if v == VOICETABLE_OSAKA
    or v == VOICETABLE_TOMO
    or v == VOICETABLE_KAGURA
    or v == VOICETABLE_CHIYO
    or v == VOICETABLE_SAKAKI
    or v == VOICETABLE_YOMI
    or v == VOICETABLE_KAORI
    or v == VOICETABLE_CHIHIRO
    then
        return update_sound(m, sound)
    end
end
local function character_snore(m)
    local v = _G.charSelect.character_get_voice(m)
    if v == VOICETABLE_OSAKA
    or v == VOICETABLE_TOMO
    or v == VOICETABLE_KAGURA
    or v == VOICETABLE_CHIYO
    or v == VOICETABLE_SAKAKI
    or v == VOICETABLE_YOMI
    or v == VOICETABLE_KAORI
    or v == VOICETABLE_CHIHIRO
    then
        return update_snore(m)
    end
end

hook_event(HOOK_CHARACTER_SOUND, character_sounds)
hook_event(HOOK_MARIO_UPDATE, character_snore)