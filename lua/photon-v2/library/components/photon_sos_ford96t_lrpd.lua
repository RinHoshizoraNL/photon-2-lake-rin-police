if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "Photon"

COMPONENT.Credits = {
	Model = "Schmal",
	Code = "Schmal"
}

COMPONENT.Title = [[Ford 96T LRPD Rear Spoiler Light]]
COMPONENT.Category = "Special"
COMPONENT.Model = "models/schmal/ford_96t.mdl"

COMPONENT.Templates = {
	["2D"] = {
		Light = {
			Width = 2.75,
			Height = 1.3525,
			Detail = PhotonMaterial.GenerateLightQuad( "photon/lights/ford96t_detail.png" ).MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad( "photon/lights/ford96t_shape.png" ).MaterialName,
			VisibilityRadius = 0.1
		}
	}
}

COMPONENT.States = {
	[1] = "R",
	[2] = "B",
	[3] = "A"
}

COMPONENT.Elements = {
	[1] = { "Light", Vector( 5.92, -1.25, -.02 ), Angle( 0, 180, 0 ), BoneParent = 0 },
	[2] = { "Light", Vector( -5.92, -1.25, -.02 ), Angle( 0, 180, 0 ), BoneParent = 1 },

	[3] = { "Light", Vector( 2.95, -1.25, -.02 ), Angle( 0, 180, 0 ), BoneParent = 0 },
	[4] = { "Light", Vector( -2.95, -1.25, -.02 ), Angle( 0, 180, 0 ), BoneParent = 1 },
	
	[5] = { "Light", Vector( -0, -1.25, -.02 ), Angle( 0, 180, 0 ), BoneParent = 0 },
	[6] = { "Light", Vector( -0, -1.25, -.02 ), Angle( 0, 180, 0 ), BoneParent = 1 },
	
	[7] = { "Light", Vector( -2.95, -1.25, -.02 ), Angle( 0, 180, 0 ), BoneParent = 0 },
	[8] = { "Light", Vector( 2.95, -1.25, -.02 ), Angle( 0, 180, 0 ), BoneParent = 1 },
	
	[9] = { "Light", Vector( -5.92, -1.25, -.02 ), Angle( 0, 180, 0 ), BoneParent = 0 },
	[10] = { "Light", Vector( 5.92, -1.25, -.02 ), Angle( 0, 180, 0 ), BoneParent = 1 },
}

COMPONENT.StateMap = "[1] 1 9 [2] 3 4 5 6 7 8 [3] 2 10"  

COMPONENT.SubMaterials = {
	-- [1] = "photon/common/blank"
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	["All"] = {
		Frames = {
			[1] = "1 2 3 4 5 6 7 8 9 10",
			[2] = "1 3 5 7 9",
			[3] = "2 4 6 8 10",
			[4] = "2 4 5 7 9",
			[5] = "1 3 6 8 10",
			[6] = "1",
			[7] = "1 3",
			[8] = "1 3 5",
			[9] = "1 3 5 7",
			[10] = "1 3 5 7 9",
			[11] = "3 5 7 9",
			[12] = "5 7 9",
			[13] = "7 9",
			[14] = "9",
			[15] = "2",
			[16] = "2 4",
			[17] = "2 4 6",
			[18] = "2 4 6 8",
			[19] = "2 4 6 8 10",
			[20] = "4 6 8 10",
			[21] = "6 8 10",
			[22] = "8 10",
			[23] = "10",
			[24] = "3 5 7 2 10",
			[25] = "4 6 8 1 9",
		},
		Sequences = {
			["ON"] = { 1 },
			["LRPD_FLASH"] = sequence():TripleFlash( 25, 24 ),
			["LRPD_CRUISE"] = sequence():Alternate( 4, 5, 7 ),
			["LRPD_SWEEP"] = { 6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23 },
		}
	},
	["DVI"] = {
		Frames = {
			[0] = "[~R*0.5] 1 9 [~B*0.5] 3 4 5 6 7 8 [~A*0.5] 2 10",
			[1] = "1:~R 2:~A",
			[2] = "3:~B 4:~B",
			[3] = "5:~B 6:~B",
			[4] = "7:~B 8:~B",
			[5] = "9:~R 10:~A",
		},
		Sequences = {
			["ON"] = sequence():Sequential(1, 5):Stretch(8)
		}
	},
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = {
			DVI = "ON"
		},
		["MODE2"] = {
			All = "LRPD_SWEEP"
		},
		["MODE3"] = {
			All = "LRPD_FLASH"
		}
	},
}