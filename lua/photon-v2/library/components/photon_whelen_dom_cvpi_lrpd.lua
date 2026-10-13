local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Name = "photon_whelen_dom_cvpi_lrpd"
COMPONENT.Title = "Whelen Dominator CVPI LRPD"
COMPONENT.Author = "DatedGore44/anemolis72"
COMPONENT.Credits = {
	Model = "SGM",
	Code = "DatedGore44/anemolis72"
}

COMPONENT.States = {
	[1] = "R",
	[2] = "B",
	[3] = "A",
	[4] = "A"
}

COMPONENT.Category = "Interior"
COMPONENT.Model = "models/sentry/props/dominator8_cv.mdl"

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Preview = {
	Position = Vector( 0, 0, -2),
	Angles = Angle( 0, -90, 0 ),
	Zoom = 1.8
}

COMPONENT.Templates = {
	["2D"] = {
		Light = {
			Width 	= 3.7,
			Height	= 1.85,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/whe_dominator_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/whe_dominator_shape.png").MaterialName,
			Scale = 1.25,
			ForwardBloomOffset = 0.1,
			ForwardVisibilityOffset = -0.3
		},
	},
	["Projected"] = {
		Illumination = {
			Material = "photon/flashlight/led_linear.png",
			Brightness = 1.5,
			FOV = 90
		}
	}
}

COMPONENT.StateMap = "[A] 5 6 7 8 1 2 3 4"

COMPONENT.Elements = {
	[1] = { "Light", Vector( -7.14, 0, 0 ), Angle( 0, 180, 0 ) },
	[2] = { "Light", Vector( 7.14, 0, 0 ), Angle( 0, 180, 0 ) },
	[3] = { "Light", Vector( -12.17, 0, 0 ), Angle( 0, 180, 0 ) },
	[4] = { "Light", Vector( 12.17, 0, 0 ), Angle( 0, 180, 0 ) },
	[5] = { "Light", Vector( -17.2, 0, 0 ), Angle( 0, 180, 0 ) },
	[6] = { "Light", Vector( 17.2, 0, 0 ), Angle( 0, 180, 0 ) },
	[7] = { "Light", Vector( -22.23, 0, 0 ), Angle( 0, 180, 0 ) },
	[8] = { "Light", Vector( 22.23, 0, 0 ), Angle( 0, 180, 0 ) },
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	Traffic = {
		Frames = {
			[1] = "8",
			[2] = "8 6",
			[3] = "8 6 4",
			[4] = "8 6 4 2",
			[5] = "8 6 4 2 1",
			[6] = "8 6 4 2 1 3",
			[7] = "8 6 4 2 1 3 5",
			[8] = "8 6 4 2 1 3 5 7",
			[9] = "6 4 2 1 3 5 7",
			[10] = "4 2 1 3 5 7",
			[11] = "2 1 3 5 7",
			[12] = "1 3 5 7",
			[13] = "3 5 7",
			[14] = "5 7",
			[15] = "7",
			[16] = "1 2",
			[17] = "1 2 3 4",
			[18] = "1 2 3 4 5 6",
			[19] = "1 2 3 4 5 6 7 8",
			[20] = "3 4 5 6 7 8",
			[21] = "5 6 7 8",
			[22] = "7 8",
		},
		Sequences = {
			["LEFT"] = { 1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15,0,15,0,15,0,15,0 },
			["RIGHT"] = { 15,15,14,14,13,13,12,12,11,11,10,10,9,9,8,8,7,7,6,6,5,5,4,4,3,3,2,2,1,1,0,1,0,1,0,1,0 },
			["OUT"] = { 16,16,17,17,18,18,19,19,20,20,21,21,22,22,0,22,0,22,0,22,0 },
		}
	},
}


COMPONENT.Inputs = {
	["Emergency.Directional"] = {
		["LEFT"] = { Traffic = "LEFT" },
		["RIGHT"] = { Traffic = "RIGHT" },
		["CENOUT"] = { Traffic = "OUT" }
	},
}

Photon2.RegisterComponent( COMPONENT )