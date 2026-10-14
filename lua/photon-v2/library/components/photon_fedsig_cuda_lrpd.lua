if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()
local sequence = Photon2.SequenceBuilder.New

COMPONENT.Author = "anemolis72"

COMPONENT.Credits = {
	Model = "GTA5",
	Code = "anemolis72"
}

COMPONENT.Title = [[Federal Signal Cuda LRPD]]
COMPONENT.Category = "Interior"
COMPONENT.Model = "models/anemolis/props/trioptic/trioptic3.mdl"

COMPONENT.States = {
	[1] = "B",
}

local s = 1.6

COMPONENT.Templates = {
	["2D"] = {
		main = {
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/anemolis_trioptic_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/anemolis_trioptic.png").MaterialName,
			Width = 4.2,
			Height = 4.45,
			Ratio = .4,
			Scale = .4,
			ForwardVisibilityOffset = -0.1,
			ForwardBloomOffset = 0.1,
			-- LightMatrix = { Vector(s, 0, 0), Vector(-s, 0, 0),  },
			-- LightMatrixScaleMultiplier = 0.6
		},
	}
}

COMPONENT.StateMap = "[1] 1"

COMPONENT.Elements = {
	[1] = { "main", Vector(0, 1.62, .63 ), Angle(0, 0, 0) },
}

COMPONENT.Segments = {
	["Light"] = {
		Frames = {
			[1] = "1",
			[2] = "1",
		},
		Sequences = {
			["ON"] = {

			},
			["SLOW"] = {1,1,1,1,0,0,0,0},
			["SINGLE"] = {1,1,0,0,},
			["QUAD"] = sequence():TripleFlash(0, 1):Stretch(1)
		}
	},
	["DVI"] = {
		Frames = {
			[0] = "[~B*0.5] 1",
			[1] = "1:~B",
		},
		Sequences = {
			["ON"] = sequence():Sequential(0, 1):Stretch(8)
		}
	},
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = {
			DVI = "ON"
		},
		["MODE2"] = {
			Light = "SINGLE"
		},
		["MODE3"] = {
			Light = "QUAD"
		}
	},
	["Emergency.Marker"] = {
		["ON"] = {
			Light = "ON"
		}
	}
	-- ["Virtual.Siren"] = {
	-- 	["T1"] = {
	-- 		Light = "ON"
	-- 	}
	-- }
}