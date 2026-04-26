if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()
local sequence = Photon2.SequenceBuilder.New

COMPONENT.Author = "Photon"

COMPONENT.Credits = {
	Model = "Cj24, Schmal",
	Code = "Schmal"
}

COMPONENT.Title = [[Federal Signal CN SignalMaster LRPD]]
COMPONENT.Category = "Traffic"
COMPONENT.Model = "models/schmal/fedsig_cn_signalmaster.mdl"

COMPONENT.Preview = {
	Position = Vector( 0, 0, -0.5 ),
	Angles = Angle( 0, 180, 0 ),
	Zoom = 1.2
}

COMPONENT.DefineOptions = {

}

COMPONENT.Templates = {
	["2D"] = {
		Primary = {
			Width 		= 5.2,
			Height		= 2,
			Detail 		= PhotonMaterial.GenerateLightQuad("photon/lights/fs_valor_detail.png").MaterialName,
			Shape 		= PhotonMaterial.GenerateLightQuad("photon/lights/fs_valor_shape.png").MaterialName,
			Scale 		= 1.2,
			Ratio 		= 2,
			VisibilityRadius = 0.5
		},
	},
	["Projected"] = {
		TakedownIllumination = {
			Material = "photon/flashlight/led_linear.png",
			Brightness = 1.5,
			FOV = 45
		},
	}
}

COMPONENT.States = {
	[1] = "R",
	[2] = "B",
	[3] = "W"
}

COMPONENT.StateMap = "[B] 1 2 5 6 7 8 [R] 3 [A] 4"

COMPONENT.Elements = {
	[1] = { "Primary", Vector( 1.7, -2.28, 0 ), Angle( 0, -90, 0 ) },
	[2] = { "Primary", Vector( 1.7, 2.28, 0 ), Angle( 0, -90, 0 ) },

	[3] = { "Primary", Vector( 1.7, -6.35, 0 ), Angle( 0, -90, 0 ) },
	[4] = { "Primary", Vector( 1.7, 6.35, 0 ), Angle( 0, -90, 0 ) },

	[5] = { "Primary", Vector( 1.7, -10.45, 0 ), Angle( 0, -90, 0 ) },
	[6] = { "Primary", Vector( 1.7, 10.45, 0 ), Angle( 0, -90, 0 ) },

	[7] = { "Primary", Vector( 1.7, -14.52, 0 ), Angle( 0, -90, 0 ) },
	[8] = { "Primary", Vector( 1.7, 14.52, 0 ), Angle( 0, -90, 0 ) },
}

COMPONENT.Segments = {
	All = {
		Frames = {
			[1] = "1 2 3 4 5 6 7 8",
			[2] = "7 3 2 6",
			[3] = "5 1 4 8",
			[4] = "[1] 7 3 [2] 2 6",
			[5] = "[1] 5 1 [2] 4 8",
			[6] = "[2] 7 3 [1] 2 6",
			[7] = "[2] 5 1 [1] 4 8",
			[8] = "7 8",
			[9] = "5 6 7 8",
			[10] = "3 4 5 6 7 8",
			[11] = "1 2 3 4 5 6 7 8",
			[12] = "1 2 3 4 5 6",
			[13] = "1 2 3 4",
			[14] = "1 2",
			[15] = "1",
			[16] = "1 3",
			[17] = "1 3 5",
			[18] = "1 3 5 7",
			[19] = "2",
			[20] = "2 4",
			[21] = "2 4 6",
			[22] = "2 4 6 8"
		},
		Sequences = {
			["ON"] = { 1 },
			["CVPI"] = { 8,8,9,9,10,10,11,11,12,12,13,13,14,14,13,13,12,12,11,11,10,10,9,9,8,8, },
			["CVPI_FAST"] = { 8,9,10,11,12,13,14,13,12,11,10,9,8 },
			["CVPI_LR"] = { 15,16,17,18,19,20,21,22 },
			["MIX_2FH"] = sequence():FlashHold( { 2, 3 }, 2, 4 ),
			["MIX_2FH_2C"] = sequence():FlashHold( { 4, 5, 6, 7 }, 2, 4 ),
			["OFF"] = { 0 }
		}
	},
	Corners = {
		Frames = {
			[1] = "5 7",
			[2] = "6 8",
		},
		Sequences = {
			["ON"] = { 1 },
			["MODE2"] = sequence():Flash(1, 2, 1):Stretch(3),
			["MODE3"] = sequence():TripleFlash( 1, 2 ):Do( 2 ),
			["OFF"] = { 0 }
		}
	},
	Center = {
		Frames = {
			[1] = "1 2",
			[2] = "1 2 3 4",
			[3] = "3 4",
		},
		Sequences = {
			["ON"] = { 1 },
			["MODE3"] = { 1,1,0,1,1,0,2,2,0,3,3,0, },
			["ALT"] = { 1,1,1,3,3,3 },
			["OFF"] = { 0 }
		}
	},
	Traffic = {
		Frames = {
			[1] = "[A] 8",
			[2] = "[A] 8 6",
			[3] = "[A] 8 6 4",
			[4] = "[A] 8 6 4 2",
			[5] = "[A] 8 6 4 2 1",
			[6] = "[A] 8 6 4 2 1 3",
			[7] = "[A] 8 6 4 2 1 3 5",
			[8] = "[A] 8 6 4 2 1 3 5 7",
			[9] = "[A] 6 4 2 1 3 5 7",
			[10] = "[A] 4 2 1 3 5 7",
			[11] = "[A] 2 1 3 5 7",
			[12] = "[A] 1 3 5 7",
			[13] = "[A] 3 5 7",
			[14] = "[A] 5 7",
			[15] = "[A] 7",
			[16] = "[A] 1 2 ",
			[17] = "[A] 1 2 3 4 ",
			[18] = "[A] 1 2 3 4 5 6",
			[19] = "[A] 1 2 3 4 5 6 7 8",
			[20] = "[A] 3 4 5 6 7 8 ",
			[21] = "[A] 5 6 7 8 ",
			[22] = "[A] 7 8 ",
		},
		Sequences = {
			["ON"] = { 1 },
			["LEFT"] = { 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,15,0,15,15,0,15,15,0 },
			["RIGHT"] = { 15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,1,0,1,1,0,1,1,0 },
			["OUT"] = { 16,16,17,17,18,18,19,19,20,20,21,21,22,22,0,22,0,22,0 },
			["OFF"] = { 0 }
		}
	},
	["DVI"] = {
		Frames = {
			[0] = "[~R*0.5] 3 [~B*0.5] 1 2 5 6 7 8 [~A*0.5] 4",
			[1] = "1:~B 2:~B",
			[2] = "3:~R 4:~A",
			[3] = "5:~B 6:~B",
			[4] = "7:~B 8:~B",
		},
		Sequences = {
			["ON"] = sequence():Sequential(1, 4):Stretch(8)
		}
	},
	["SignalMaster"] = Photon2.SegmentBuilder.SignalMaster( 7, 5, 3, 1, 2, 4, 6, 8 ),

}

COMPONENT.Patterns = {
	["MIX_DOUBLE_FLASH"] = { { "All", "MIX_2FH" } },
	["MIX_2FH_2C"] = { { "All", "MIX_2FH_2C" } },
	["OFF"] = { { "All", "OFF" } },
	
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = {
			DVI = "ON",
		},
		["MODE2"] = {
			Corners = "MODE2",
		},
		["MODE3"] = {
			Corners = "MODE3",
			Center = "ALT",
		},
	},
	["Emergency.Directional"] = {
		["LEFT"] = { Traffic = "LEFT" },
		["RIGHT"] = { Traffic = "RIGHT" },
		["CENOUT"] = { Traffic = "OUT" }
	},
	["Emergency.Cut"] = {
		["REAR"] = "OFF"
	},
}