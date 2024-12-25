if not _G.wpets then return end

--ADD MODELS
local E_MODEL_MINICHIYO = smlua_model_util_get_id('minichiyo_geo')
local E_MODEL_PETCHIYOCHICHI = smlua_model_util_get_id('chiyochichi_geo')
local E_MODEL_TADAKICHISAN = smlua_model_util_get_id('tadakichisan_geo')
local E_MODEL_MAYA = smlua_model_util_get_id('maya_geo')
local E_MODEL_KAMINEKO = smlua_model_util_get_id('kamineko_geo')
local E_MODEL_KAMINEKONORMAL = smlua_model_util_get_id('kamineko_normal_geo')
local E_MODEL_NEKO1 = smlua_model_util_get_id('neko1_geo')
local E_MODEL_NEKO2 = smlua_model_util_get_id('neko2_geo')
local E_MODEL_NEKO3 = smlua_model_util_get_id('neko3_geo')
local E_MODEL_NEKO4 = smlua_model_util_get_id('neko4_geo')

-- SET UP PETS
local ID_MINICHIYO = _G.wpets.add_pet({
	name = "Chiyo", credit = "LukasATBK & KasugAxel",
	description = "America Ya! :D",
	modelID = E_MODEL_MINICHIYO,
	scale = 2.0, yOffset = 0.0, flying = false
})
local ID_PETCHIYOCHICHI = _G.wpets.add_pet({
	name = "Chiyo Chichi", credit = "LukasATBK & KasugAxel",
	description = "Hello everynyan!",
	modelID = E_MODEL_PETCHIYOCHICHI,
	scale = 2.5, yOffset = 0, flying = false
})
local ID_TADAKICHISAN = _G.wpets.add_pet({
	name = "Tadakichi-san", credit = "LukasATBK & KasugAxel",
	description = "Chiyo's doggie!",
	modelID = E_MODEL_TADAKICHISAN,
	scale = 3, yOffset = 0, flying = false
})
local ID_MAYA = _G.wpets.add_pet({
	name = "Maya", credit = "seymour & KasugAxel",
	description = "O^O",
	modelID = E_MODEL_MAYA,
	scale = 1.0, yOffset = 0, flying = false
})
local ID_KAMINEKO = _G.wpets.add_pet({
	name = "Kamineko (Angry)", credit = "seymour & KasugAxel",
	description = ":D",
	modelID = E_MODEL_KAMINEKO,
	scale = 1.0, yOffset = 0, flying = false
})
local ID_KAMINEKONORMAL = _G.wpets.add_pet({
	name = "Kamineko (Normal)", credit = "seymour & KasugAxel",
	description = ":3",
	modelID = E_MODEL_KAMINEKONORMAL,
	scale = 1.0, yOffset = 0, flying = false
})
local ID_NEKO1 = _G.wpets.add_pet({
	name = "Neko 1", credit = "seymour & KasugAxel",
	description = "White Neko",
	modelID = E_MODEL_NEKO1,
	scale = 1.0, yOffset = 0, flying = false
})
local ID_NEKO2 = _G.wpets.add_pet({
	name = "Neko 2", credit = "seymour & KasugAxel",
	description = "White and brown Neko",
	modelID = E_MODEL_NEKO2,
	scale = 1.0, yOffset = 0, flying = false
})
local ID_NEKO3 = _G.wpets.add_pet({
	name = "Neko 3", credit = "seymour & KasugAxel",
	description = "Brown Neko",
	modelID = E_MODEL_NEKO3,
	scale = 1.0, yOffset = 0, flying = false
})
local ID_NEKO4 = _G.wpets.add_pet({
	name = "Neko 4", credit = "seymour & KasugAxel",
	description = "Black Neko",
	modelID = E_MODEL_NEKO4,
	scale = 1.0, yOffset = 0, flying = false
})


--SET ANIMATIONS
_G.wpets.set_pet_anims_2leg(ID_MINICHIYO)
_G.wpets.set_pet_anims(ID_PETCHIYOCHICHI, {
    idle = 'wing_idle',
    follow = 'wing_follow',
    petted = 'chiyochichiPetAnim',
    dance = 'wing_dance'
})
_G.wpets.set_pet_anims_4leg(ID_TADAKICHISAN)
_G.wpets.set_pet_anims_4leg(ID_MAYA)
_G.wpets.set_pet_anims_4leg(ID_KAMINEKO)
_G.wpets.set_pet_anims_4leg(ID_KAMINEKONORMAL)
_G.wpets.set_pet_anims_4leg(ID_NEKO1)
_G.wpets.set_pet_anims_4leg(ID_NEKO2)
_G.wpets.set_pet_anims_4leg(ID_NEKO3)
_G.wpets.set_pet_anims_4leg(ID_NEKO4)

-- GENERIC SFX FOR NEKOS
local nekosfx_spawn = 'petMaya_spawn.ogg'
local nekosfx_happy = 'petMaya_happy.ogg'
local nekosfx_vanish = 'petMaya_vanish.ogg'
local nekosfx_step = 'petMaya_step.ogg'

--SET SFX
_G.wpets.set_pet_sounds(ID_MINICHIYO, {
	spawn = 'petChiyo_spawn.ogg',
	happy = 'petChiyo_happy.ogg',
	vanish = 'petChiyo_vanish.ogg',
	step = 'petChiyo_step.ogg',
})
_G.wpets.set_pet_sounds(ID_PETCHIYOCHICHI, {
	spawn = 'petChiyochichi_spawn.ogg',
	happy = 'petChiyochichi_happy.ogg',
	vanish = 'petChiyochichi_vanish.ogg',
	step = nil,
})
_G.wpets.set_pet_sounds(ID_TADAKICHISAN, {
	spawn = 'petTadakichi_spawn.ogg',
	happy = 'petTadakichi_happy.ogg',
	vanish = 'petTadakichi_vanish.ogg',
	step = 'petTadakichi_step.ogg',
})
_G.wpets.set_pet_sounds(ID_MAYA, {
	spawn = nekosfx_spawn,
	happy = nekosfx_happy,
	vanish = nekosfx_vanish,
	step = nekosfx_step,
})
_G.wpets.set_pet_sounds(ID_KAMINEKO, {
	spawn = nekosfx_spawn,
	happy = nekosfx_happy,
	vanish = nekosfx_vanish,
	step = nekosfx_step,
})
_G.wpets.set_pet_sounds(ID_KAMINEKONORMAL, {
	spawn = nekosfx_spawn,
	happy = nekosfx_happy,
	vanish = nekosfx_vanish,
	step = nekosfx_step,
})
_G.wpets.set_pet_sounds(ID_NEKO1, {
	spawn = nekosfx_spawn,
	happy = nekosfx_happy,
	vanish = nekosfx_vanish,
	step = nekosfx_step,
})
_G.wpets.set_pet_sounds(ID_NEKO2, {
	spawn = nekosfx_spawn,
	happy = nekosfx_happy,
	vanish = nekosfx_vanish,
	step = nekosfx_step,
})
_G.wpets.set_pet_sounds(ID_NEKO3, {
	spawn = nekosfx_spawn,
	happy = nekosfx_happy,
	vanish = nekosfx_vanish,
	step = nekosfx_step,
})
_G.wpets.set_pet_sounds(ID_NEKO4, {
	spawn = nekosfx_spawn,
	happy = nekosfx_happy,
	vanish = nekosfx_vanish,
	step = nekosfx_step,
})

