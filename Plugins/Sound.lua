----------------------------------
--      Module Declaration      --
----------------------------------

local plugin = BigWigs:New("Sounds", "$Revision$")
if not plugin then return end

------------------------------
--      Are you local?      --
------------------------------

local media = LibStub("LibSharedMedia-3.0")
local mType = media.MediaType and media.MediaType.SOUND or "sound"
local db = nil

local sounds = {
	Long = "BigWigs: Long",
	Info = "BigWigs: Info",
	Alert = "BigWigs: Alert",
	Alarm = "BigWigs: Alarm",
	Victory = "BigWigs: Victory",
}
local L = LibStub("AceLocale-3.0"):GetLocale("BigWigs:Plugins")

--------------------------------------------------------------------------------
-- Options
--

plugin.defaultDB = {
	defaultonly = false,
	sound = true,
	media = {
		Long = "BigWigs: Long",
		Info = "BigWigs: Info",
		Alert = "BigWigs: Alert",
		Alarm = "BigWigs: Alarm",
		Victory = "BigWigs: Victory",
	},
}

plugin.pluginOptions = {
	type = "group",
	name = L["Sounds"],
	desc = L["Options for sounds."],
	args = {
		default = {
			type = "toggle",
			name = L["Default only"],
			desc = L["Use only the default sound."],
			get = function(info) return plugin.db.profile.defaultonly end,
			set = function(info, v) plugin.db.profile.defaultonly = v end,
			order = 1,
			width = "full",
		},
	}
}

------------------------------
--      Initialization      --
------------------------------

local function shouldDisable() return plugin.db.profile.defaultonly end

function plugin:OnRegister()
	db = self.db.profile

	media:Register(mType, "BigWigs: Long", "Interface\\AddOns\\BigWigs\\Sounds\\Long.mp3")
	media:Register(mType, "BigWigs: Info", "Interface\\AddOns\\BigWigs\\Sounds\\Info.mp3")
	media:Register(mType, "BigWigs: Alert", "Interface\\AddOns\\BigWigs\\Sounds\\Alert.mp3")
	media:Register(mType, "BigWigs: Alarm", "Interface\\AddOns\\BigWigs\\Sounds\\Alarm.mp3")
	media:Register(mType, "BigWigs: Victory", "Interface\\AddOns\\BigWigs\\Sounds\\Victory.mp3")
	media:Register(mType, "BigWigs: Victory Long", "Interface\\AddOns\\BigWigs\\Sounds\\VictoryLong.mp3")
	media:Register(mType, "BigWigs: Victory Classic", "Interface\\AddOns\\BigWigs\\Sounds\\VictoryClassic.mp3")

	-- this needs to be updated on the SM3 callback
	local list = media:List(mType)

	local function get(info)
		return db.media[info[#info]]
	end

	local function set(info, value)
		local sound = info[#info]
		if IsControlKeyDown() then
			PlaySoundFile(media:Fetch(mType, list[value]))
		else
			db.media[sound] = list[value]
		end
	end

	for k in pairs(sounds) do
		local n = L[k] or k
		self.pluginOptions.args[k] = {
			type = "select",
			name = n,
			desc = L["Set the sound to use for %q.\n\nCtrl-Click a sound to preview."]:format(n),
			order = 2,
			get = get,
			set = set,
			disabled = shouldDisable,
			values = list,
			width = "full",
		}
	end
end

function plugin:OnEnable()
	if not db.sound then
		BigWigs:ToggleModuleActive(self, false)
		return
	end

	self:RegisterEvent("BigWigs_Message")
	self:RegisterEvent("BigWigs_Sound")
end

local function play(sound)
	if type(sound) == "string" and not db.defaultonly then
		local s = db.media[sound] and media:Fetch(mType, db.media[sound]) or media:Fetch(mType, sound)
		if type(s) == "string" then
			PlaySoundFile(s)
			return
		end
	end
	PlaySound("RaidWarning")
end

function plugin:BigWigs_Message(text, color, noraidsay, sound, broadcastonly)
	if not text or sound == false or broadcastonly or not db.sound then return end
	play(sound)
end

function plugin:BigWigs_Sound(sound)
	if not db.sound or sound == false then return end
	play(sound)
end

