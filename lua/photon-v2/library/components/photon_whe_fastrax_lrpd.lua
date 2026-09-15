if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()
local sequence = Photon2.SequenceBuilder.New

COMPONENT.Author = "Photon"

COMPONENT.Credits = {
	Model = "SGM",
	Code = "Schmal"
}

COMPONENT.Title = [[Whelen Fastrax LRPD]]
COMPONENT.Category = "Lightbar"
COMPONENT.Model = "models/sentry/props/fasttrax.mdl"

COMPONENT.SubMaterials = {
	[0] = "sentry/props/fasttrax/4",
	[1] = "sentry/props/fasttrax/4",
	[4] = "sentry/props/fasttrax/4",
	[5] = "sentry/props/fasttrax/2",
	[6] = "sentry/props/fasttrax/4",
}

COMPONENT.Preview = {
	Position = Vector( 0, 0, -2.5 ),
	Angles = Angle( 0, 0, 0 ),
	Zoom = 0.8
}

local red = { r = 255, g = 0, b = 0 }
local blue = { r = 0, g = 0, b = 255 }
local amber = { r = 255, g = 0, b = 0 }

local bScale = 0.66

-- these colors will probably be migrated into the default light states as strobe/halogen variations

local strobeStates = {
	["R"] = {
		Blend = PhotonColor( 255, 0, 0 ),
		SourceFillColor = PhotonColor( 255, 0, 128 ):Negative(true):Blend( red ):GetBlendColor(),
		GlowColor = PhotonColor( 255, 64, 128 ):Negative(true):Blend(red):Scale(0.6):GetBlendColor(),
		SubtractiveMid = PhotonColor( 0, 0, 255 ):Negative(true):Blend(red):Scale(0.6):GetBlendColor(),
		SourceDetailColor = PhotonColor( 255,255,96 ):Blend(red):GetBlendColor(), 
		InnerGlowColor = PhotonColor(255, 64, 64):Blend(red):Scale( 0.6 ):GetBlendColor(),
		ShapeGlowColor = PhotonColor(255, 25, 25):Blend(red):GetBlendColor()
	},
	["B"] = {
		Blend = PhotonColor( 0, 0, 255 ),
		-- inverted
		SourceFillColor = PhotonColor(255,0,255):Negative(true):Blend( blue ):GetBlendColor(),
		-- inverted
		GlowColor = PhotonColor(48, 0, 255):Negative(true):Blend(blue):Scale(0.6):GetBlendColor(), --*
		-- inverted
		SubtractiveMid = PhotonColor( 0, 0, 255 ):Negative(true):Blend(blue):Scale(0.6):GetBlendColor(), --*
		InnerGlowColor = PhotonColor(0, 64, 255):Blend(blue):Scale( bScale ):GetBlendColor(),--*
		SourceDetailColor = PhotonColor(128,255,255):Blend(blue):GetBlendColor(), --*
		ShapeGlowColor = PhotonColor(0, 0, 255):Blend(blue):GetBlendColor(), --*
	},
}

local halogenStates = {
	["A"] = {
		SourceDetailColor = PhotonColor(255,255,128):Blend(amber):GetBlendColor(), 
		SourceFillColor = PhotonColor(200,64,0):Blend(amber):GetBlendColor(),
		GlowColor = PhotonColor( 255, 100, 0 ):Blend(amber):GetBlendColor(), --*
		InnerGlowColor = PhotonColor( 255, 128, 0 ):Blend(amber):GetBlendColor(),
		ShapeGlowColor = PhotonColor( 255, 128, 0 ):Blend(amber):GetBlendColor(),
	},
}

COMPONENT.Templates = {
	["2D"] = {
		["Strobe"] = {
			Width = 6,
			Height = 7,
			Scale = 1.5,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/edge_strobe_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/edge_strobe_shape.png").MaterialName,
			States = strobeStates,
		},
		["Alley"] = {
			Width = 2.9,
			Height = 2.9,
			Scale = 1.1,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/edge_alley_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/edge_alley_shape.png").MaterialName,
			IntensityGainFactor = 8,
			IntensityLossFactor = 8,
			DeactivationState = "~OFF",
			States = halogenStates
		},
	},
	["Projected"] = {
		["Illum"] = {
			HorizontalFOV = 60,
			VerticalFOV = 60,
			NearZ = 200,
			FarZ = 800,
			Brightness = 0.6,
			DeactivationState = "~OFF",
		}
	}
}

COMPONENT.States = {
	[1] = "B",
	[2] = "R",
	[3] = "A",
	[4] = "~A"
}

COMPONENT.StateMap = "[1] 1 2 5 6 7 8 [2] 3 [3] 4 [~SW] 9 10"

COMPONENT.Elements = {
	[1] = { "Strobe", Vector( -3.3, -70, 64.2 ), Angle( 0, 176, 1 ) },
	[2] = { "Strobe", Vector( 3.3, -70, 64.2 ), Angle( 0, 184, -1 ) },
	[3] = { "Strobe", Vector( -9.75, -69.6, 64.1 ), Angle( 0, 176, 1 ) },
	[4] = { "Strobe", Vector( 9.75, -69.6, 64.1 ), Angle( 0, 184, -1 ) },

	[5] = { "Strobe", Vector( -16.25, -69, 63.85 ), Angle( 0, 171, 3 ) },
	[6] = { "Strobe", Vector( 16.25, -69, 63.85 ), Angle( 0, 189, -3 ) },
	[7] = { "Strobe", Vector( -22.8, -67.6, 63.2 ), Angle( 0, 168, 5 ) },
	[8] = { "Strobe", Vector( 22.8, -67.6, 63.2 ), Angle( 0, 192, -5 ) },

	[9] = { "Alley", Vector( -27.45, -63.6, 64.27 ), Angle( 0, 90, 0 ) },
	[10] = { "Alley", Vector( 27.45, -63.6, 64.27 ), Angle( 0, 270, 0 ) },
	
}

COMPONENT.Segments = {
	All = {
		Frames = {
			[1] = "1 2 3 4 5 6 7 8 9 10",
			[2] = "1",
			[3] = "2",
			[4] = "3",
			[5] = "4",
			[6] = "5",
			[7] = "6",
			[8] = "7",
			[9] = "8",
			[10] = "7 4",
			[11] = "8 3",
		},
		Sequences = {
			["ON"] = { 1 },
			["MODE1"] = { 10,0,10,0,11,0,11,0 },
			["MODE2"] = { 2,0,2,0,3,0,3,0,4,0,4,0,5,0,5,0,6,0,6,0,7,0,7,0,8,0,8,0,9,0,9,0 }
		},
	},
	Center = {
		Frames = {
			[1] = "1 2 3 4",
			[2] = "2 3",
			[3] = "1 4",
		},
		Sequences = {
			["ON"] = { 1 },
			["MODE3"] = sequence():Add( 0, 0, 2, 0, 2, 0, 2, 0, 0, 3, 0, 3, 0, 3 ):SetTiming( 1/31 )
		},
	},
	Corners = {
		Frames = {
			[1] = "5 6 7 8",
			[2] = "5 6",
			[3] = "7 8",
		},
		Sequences = {
			["ON"] = { 1 },
			["MODE3"] = sequence():Add( 2, 0, 2, 0, 2, 0, 0, 0, 0, 3, 0, 3, 0, 3, 0, 0, 0, 0 ):SetTiming( 1/30 )
		},
	},
	AlleyLeft = {
		Frames = {
			[1] = "9",
		},
		Sequences = {
			["ON"] = { 1 },
		},
	},
	AlleyRight = {
		Frames = {
			[1] = "10",
		},
		Sequences = {
			["ON"] = { 1 },
		},
	},
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = {
			["All"] = "MODE1",
		},
		["MODE2"] = {
			["All"] = "MODE2",
		},
		["MODE3"] = {
			["Center"] = "MODE3",
			["Corners"] = "MODE3",
		}
	},
	["Emergency.SceneLeft"] = {
		["ON"] = {
			["AlleyLeft"] = "ON",
		}
	},
	["Emergency.SceneRight"] = {
		["ON"] = {
			["AlleyRight"] = "ON",
		}
	},
}