local contents = {}
local function Add(data)
	table.insert(contents, data)
end

local function Clear()
	for id, _ in ipairs(contents) do
		contents[id] = nil
	end
end

local function AddHeader(name)
	Add({
		type = "header",
		text = name
	})
end

local function AddModel(name, path, wide, tall)
	if not wide then wide = 134 end
	if not tall then tall = 70 end

	Add({
		type = "model",
		model = path,
		wide = wide,
		tall = tall,
		nicename = name
	})
end

hook.Add("PopulatePropMenu", "Anime's Prop Pack", function()
	Clear()


	AddHeader("Vehicle Specific")
	AddHeader("   └ 2015-2019 Tahoe")
	AddModel("Westin Elite XD", "models/anmwestinelitexd/ANMWestinEliteXD.mdl")
	AddModel("Golden Eagle Radar", "models/anmkustomsignalsgoldeneagleii/ANMGoldenEagleRadar_19Tahoe.mdl")

	AddHeader("   └ 2011-2014 Dodge Charger")
	AddModel("Westin Elite XD", "models/anm14chargerwestinelite/ANM14ChargerWestinElite.mdl")

	AddHeader("Consoles")
	AddHeader("   └ Presets")
	AddModel("Whelen Havis", "models/anmhavis_whelen/ANMHavis_Whelen.mdl")
	AddHeader("   └ Radios")
	AddModel("Motorola O2", "models/anmradio/ANMMotorolaO2.mdl")
	AddModel("Motorola TLK150", "models/anmradio/ANMMotorolaTLK150.mdl")
	AddHeader("   └ Printer")
	AddModel("PocketJet 633", "models/anmbrotherpocketjet633/ANMBrotherPocketJet633.mdl")
	
	AddHeader("Radar")
	AddHeader("   └ KustomSignals Golden Eagle")
	AddModel("Basic Setup", "models/anmkustomsignalsgoldeneagleii/ANMGoldenEagleRadarFull.mdl")
	AddModel("Rear Mount", "models/anmkustomsignalsgoldeneagleii/ANMRearRadar_Mount.mdl")
	AddModel("Rear Radar", "models/anmkustomsignalsgoldeneagleii/ANMRearRadar_Unit.mdl")
	AddModel("Manual", "models/anmkustomsignalsgoldeneagleii/ANMGoldenEagle_Manual.mdl")

	AddHeader("Surface Mount Lights")
	AddHeader("   └ Whelen")
	AddModel("Whelen Vertex", "models/anmwhelenvertexbody/ANMWhelenVertexBody.mdl")

	AddHeader("Antennas")
	AddModel("AviWest Quad", "models/anmaviwest/ANMAviWest_Quad.mdl")

	AddHeader("Plate Reader")
	AddModel("GenTac AutoVu Sharp", "models/anmgenetacautovusharpx/ANMGenetacAutoVuSharpX.mdl")
	
	AddHeader("Misc")
	AddModel("Coffee Cup", "models/anmgeneric/ANMGeneric_Coffee.mdl")
	AddModel("Whelen Mic", "models/anmradio/ANMWhelenMic.mdl")
	AddModel("Setina Trunk Locker", "models/anmcargostoragebox/ANM_CargoStorageBox.mdl")


	spawnmenu.AddPropCategory("Anime's Props", "Anime's Props", contents, "icon16/car.png")
end)