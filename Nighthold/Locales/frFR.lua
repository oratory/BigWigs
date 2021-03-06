local L = BigWigs:NewBossLocale("Skorpyron", "frFR")
if not L then return end
if L then
	L.blue = "Bleu"
	L.red = "Rouge"
	L.green = "Vert"
	L.mode = "Mode %s"
end

L = BigWigs:NewBossLocale("Chronomatic Anomaly", "frFR")
if L then
	L.affected = "Affecté"
	L.totalAbsorb = "Absorption totale"
end

L = BigWigs:NewBossLocale("Trilliax", "frFR")
if L then
	L.yourLink = "Vous êtes lié(s) avec %s"
	L.yourLinkShort = "Lié(e) avec %s"
	L.imprint = "Double"
end

L = BigWigs:NewBossLocale("Tichondrius", "frFR")
if L then
	L.addsKilled = "Adds tués"
	--L.gotEssence = "Got Essence"

	L.adds_desc = "Délais et alertes concernant l'apparition des renforts."
	L.adds_yell1 = "Serviteurs ! Ici, tout de suite !"
	L.adds_yell2 = "Montrez-leur comment on se bat !"
end

L = BigWigs:NewBossLocale("Krosus", "frFR")
if L then
	L.leftBeam = "Faisceau de gauche"
	L.rightBeam = "Faisceau de droite"

	L.goRight = "> ALLEZ À DROITE >"
	L.goLeft = "< ALLEZ À GAUCHE <"

	L.smashingBridge = "Destruction du pont"
	L.smashingBridge_desc = "Heurtoirs détruisant le pont. Vous pouvez utiliser cette option comme mise en évidence ou pour activer un compte à rebours."

	--L.removedFromYou = "%s removed from you" -- "Searing Brand removed from YOU!"
end

L = BigWigs:NewBossLocale("Star Augur Etraeus", "frFR")
if L then
	L.yourSign = "Votre signe"
	L.with = "avec"
	L[205429] = "|T1391538:15:15:0:0:64:64:4:60:4:60|t|cFFFFDD00Crabe|r"
	L[205445] = "|T1391537:15:15:0:0:64:64:4:60:4:60|t|cFFFF0000Loup|r"
	L[216345] = "|T1391536:15:15:0:0:64:64:4:60:4:60|t|cFF00FF00Chasseur|r"
	L[216344] = "|T1391535:15:15:0:0:64:64:4:60:4:60|t|cFF00DDFFDragon|r"

	L.nameplate_requirement = "Cette fonctionnalité est actuellement uniquement supportée par KuiNameplates. Mythique uniquement."

	L.custom_off_icy_ejection_nameplates = "Afficher {206936} sur les barres d'info des unités amicales" -- Icy Ejection
	L.custom_off_icy_ejection_nameplates_desc = L.nameplate_requirement

	L.custom_on_fel_ejection_nameplates = "Afficher {205649} sur les barres d'info des unités amicales" -- Fel Ejection
	L.custom_on_fel_ejection_nameplates_desc = L.nameplate_requirement

	L.custom_on_gravitational_pull_nameplates = "Afficher {214335} sur les barres d'info des unités amicales" -- Gravitational Pull
	L.custom_on_gravitational_pull_nameplates_desc = L.nameplate_requirement

	L.custom_on_grand_conjunction_nameplates = "Afficher {205408} sur les barres d'info des unités amicales" -- Grand Conjunction
	L.custom_on_grand_conjunction_nameplates_desc = L.nameplate_requirement
end

L = BigWigs:NewBossLocale("Grand Magistrix Elisande", "frFR")
if L then
	L.elisande = "Elisande"

	L.ring_yell = "Que le torrent du temps vous emporte !"
	L.orb_yell = "Le temps est parfois… explosif."

	L.fastTimeZone = "Zone de temps accéléré"
end

L = BigWigs:NewBossLocale("Gul'dan", "frFR")
if L then
	L[211152] = "(E) %s" -- (E) Eye of Gul'dan
	L.gains = "Gul'dan obtient %s"
	--L.p4_mythic_start_yell = "Time to return the demon hunter's soul to his body... and deny the Legion's master a host!"

	--L.nightorb_desc = "Summons a Nightorb, killing it will spawn a Time Zone."

	--L.manifest_desc = "Summons a Soul Fragment of Azzinoth, killing it will spawn a Demonic Essence."
end

L = BigWigs:NewBossLocale("Nighthold Trash", "frFR")
if L then
	--[[ Skorpyron to Trilliax ]]--
	L.torm = "Torm le Brutal"
	L.fulminant = "Fulminant"
	L.pulsauron = "Pulsauron"

	--[[ Chronomatic Anomaly to Trilliax ]]--
	L.sludgerax = "Bourberax"

	--[[ Trilliax to Aluriel ]]--
	L.karzun = "Kar'zun"
	L.guardian = "Gardien doré"
	L.battle_magus = "Magus de bataille de la Garde crépusculair"
	L.chronowraith = "Chronâme en peine"
	L.protector = "Protecteur du palais Sacrenuit"

	--[[ Aluriel to Etraeus ]]--
	L.jarin = "Astrologue Jarin"

	--[[ Aluriel to Telarn ]]--
	L.weaver = "Tisserand de la Garde crépusculaire"
	L.archmage = "Archimage shal’dorei"
	L.manasaber = "Sabre-de-mana domestiqué"

	--[[ Aluriel to Krosos ]]--
	L.infernal = "Infernal incendiaire"

	--[[ Aluriel to Tichondrius ]]--
	L.watcher = "Guetteur des abîmes"
end

