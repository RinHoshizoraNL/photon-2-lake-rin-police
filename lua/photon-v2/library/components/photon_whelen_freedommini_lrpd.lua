if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()
local sequence = Photon2.SequenceBuilder.New

COMPONENT.Author = "GoodMannSamm"

COMPONENT.Credits = {
	Model = "SuperMighty",
	Code = "Samm"
}

COMPONENT.Title = [[Whelen Freedom Mini LRPD]]
COMPONENT.Category = "Lightbar"
COMPONENT.Model = "models/supermighty/whelen_liberty/whelen_freedom_mini.mdl"

COMPONENT.Preview = {
	Position = Vector(),
	Angles = Angle( 0, 180, 0 ),
	Zoom = 1
}

COMPONENT.SubMaterials = {
	[2] = "models/supermighty/photon/liberty_refreshed/glass_outer",
}
COMPONENT.Templates = {
	["2D"] = {
		Primary = {
			Width 	= 10.9,
			Height	= 12,
			Shape = "sprites_apac/emv/whelen_lin6_corner",
			Detail = "sprites_apac/emv/whelen_lin6_corner",
			Scale = 1
		},
		Corner = {
			Width = 16.9,
			Height = 14.3,
			Shape = "sprites_apac/emv/whelen_lin6_corner",
			Detail = "sprites_apac/emv/whelen_lin6_corner",
		},
		Takedown = {
			Width 	= 7.4,
			Height	= 7,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_6x2_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_6x2_detail.png").MaterialName,
			Scale = 1
		},
		Half = {
			Width 	= 4.4,
			Height	= 4.4,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_half_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_half_detail.png").MaterialName,
		},
		Alley = {
			Width 	= 3.5,
			Height	= 3.5,
			Shape = "sprites/emv/emv_whelen_tri",
			Detail = "sprites/emv/emv_whelen_tri",
		},
	},
	["Projected"] = {
		TakedownIllumination = {
			Brightness = 2
		},
		AlleyIllumination = {}
	}
}

COMPONENT.ElementStates = {
	["2D"] = {
		["R1"] = {
			Inherit = "R",
			Intensity = 1,
			IntensityGainFactor = 10,
			IntensityLossFactor = 10,
			IntensityTransitions = true
		},
		["B1"] = {
			Inherit = "B",
			Intensity = 1,
			-- Alternate data format concept
			Transitions = {
				Intensity = { Gain = 10, Loss = 10 }
			},
			IntensityGainFactor = 10,
			IntensityLossFactor = 10,
			IntensityTransitions = true
			
		},
		["R0"] = {
			Inherit = "R1",
			Intensity = 0,
		},
		["B0"] = {
			Inherit = "B1",
			Intensity = 0,
		}
	}
}

COMPONENT.StateMap = "[B] 1 3 5 6 7 8 9 10 11 12 [R] 13 14 [A] 15 16 [W] 2 4 17 18 19 20"

COMPONENT.ElementGroups = {
	["Left"] = { 1,5,9,13,
				 2,6,10,14, },
	["LeftU"] = { 1,5,9,17,21,25, },
	["LeftL"] = { 2,6,10,18,22,26, },
	["Right"] = { 3,7,11,15,
				  4,8,12,16, },
	["RightU"] = { 3,7,11,19,23,27, },
	["RightL"] = { 4,8,12,20,24,28, },
}

COMPONENT.Elements = {
	--front
	[1] = { "Primary", Vector( 7.8, 3.79, .95 ), Angle( 0, -90, 0 ) },
	[2] = { "Primary", Vector( 7.8, 3.79, -1.05 ), Angle( 0, -90, 0 ) },
	[3] = { "Primary", Vector( 7.8, -3.79, .95 ), Angle( 0, -90, 0 ) },
	[4] = { "Primary", Vector( 7.8, -3.79, -1.05 ), Angle( 0, -90, 0 ) },

	--corner FD
	[5] = { "Corner", Vector( 5.1, 13.4, .95 ), Angle( 0, -58, 0 ), },
	[6] = { "Corner", Vector( 5.1, 13.4, -1.05 ), Angle( 0, -58, 0 ) },

	--corner FP
	[7] = { "Corner", Vector( 5.1, -13.4, .95 ), Angle( 0, -122, 0 ) },
	[8] = { "Corner", Vector( 5.1, -13.4, -1.05 ), Angle( 0, -122, 0 ) },

	--corner RD
	[9] = { "Corner", Vector( -5.21, 13.4, .95 ), Angle( 0, 58, 0 ) },
	[10] = { "Corner", Vector( -5.21, 13.4, -1.05 ), Angle( 0, 58, 0 ) },

	--corner RP
	[11] = { "Corner", Vector( -5.21, -13.4, .95 ), Angle( 0, 122, 0 ) },
	[12] = { "Corner", Vector( -5.21, -13.4, -1.05 ), Angle( 0, 122, 0 ) },

	--rear
	[13] = { "Primary", Vector( -7.8, 3.79, .95 ), Angle( 0, 90, 0 ) },
	[14] = { "Primary", Vector( -7.8, 3.79, -1.05 ), Angle( 0, 90, 0 ) },
	[15] = { "Primary", Vector( -7.8, -3.79, .95 ), Angle( 0, 90, 0 ) },
	[16] = { "Primary", Vector( -7.8, -3.79, -1.05 ), Angle( 0, 90, 0 ) },

	--alley L
	[17] = { "Alley", Vector( 0, 17.98, .82 ), Angle( 0, 0, 0 ) },
	[18] = { "Alley", Vector( 0, 17.98, -1.05 ), Angle( 0, 0, 0 ) },

	--alley r
	[19] = { "Alley", Vector( 0, -17.98, .82 ), Angle( 0, 180, 0 ) },
	[20] = { "Alley", Vector( 0, -17.98, -1.05 ), Angle( 0, 180, 0 ) },
}

COMPONENT.Segments = {
	All = {
		Frames = {
			[1] = "Left Right",
			[2] = "1 5 6 9 10",
			[3] = "3 7 8 11 12",
			[4] = "1 5 6 9 10 15 16",
			[5] = "3 7 8 11 12 13 14",
		},
		Sequences = {
			["ON"] = { 1 },
			["MODE1"] = { 2,2,2,2,2,3,3,3,3,3 },
			["MODE2"] = { 4,4,4,5,5,5 },
			["MODE3"] = sequence():TripleFlash( 5, 4 )
		}
	},
	LeftAlley = {
		Frames = {
			[1] = "17 18",
			[2] = "17 18",
		},
		Sequences = {
			["ON"] = { 1 },
			["TRIPLE_FLASH"] = sequence():TripleFlash( 2, 0 ),
		}
	},
	RightAlley = {
		Frames = {
			[1] = "19 20",
			[2] = "19 20"
		},
		Sequences = {
			["ON"] = { 1 },
			["TRIPLE_FLASH"] = sequence():TripleFlash( 0, 2 )
		}
	},
	Takedown = {
		Frames = {
			[1] = "2 4",
		},
		Sequences = {
			["ON"] = { 1 },
		}
	},
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = {
			All = "MODE1"
		},
		["MODE2"] = {
			All = "MODE2"
		},
		["MODE3"] = {
			All = "MODE3",
			LeftAlley = "TRIPLE_FLASH",
			RightAlley = "TRIPLE_FLASH",
		}
	},
	["Emergency.SceneForward"] = {
		["ON"] = {
			Takedown = "ON"
		}
	},
	["Emergency.SceneLeft"] = {
		["ON"] = {
			LeftAlley = "ON"
		}
	},
	["Emergency.SceneRight"] = {
		["ON"] = {
			RightAlley = "ON"
		}
	},
}