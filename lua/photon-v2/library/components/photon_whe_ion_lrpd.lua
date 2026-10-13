local COMPONENT = Photon2.LibraryComponent()
local sequence = Photon2.SequenceBuilder.New

COMPONENT.Name = "photon_whe_ion_lrpd"
COMPONENT.Title = "Whelen Ion LRPD"
COMPONENT.Category = "Perimeter"
COMPONENT.Credits = {
	Model = "Sentry",
	Code = "Schmal"
}

COMPONENT.Preview = {
	Position = Vector(),
	Angles = Angle( 0, 90, 0 ),
	Zoom = 3
}

COMPONENT.Model = "models/sentry/props/ion_photon.mdl"

local size = 6

COMPONENT.Templates = {
	["2D"] = {
		Light = {
			Width  = size,
			Height = size/4,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/whe_ion_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/whe_ion_shape.png").MaterialName,
			Scale = 1.2,
			Ratio = 1.2
		}
	}
}

COMPONENT.States = {
	[1] = "B",
	[2] = "B",
	[3] = "B"
}

COMPONENT.StateMap = "[1/2/3] 1"

COMPONENT.Elements = {
	[1] = { "Light", Vector( 0, 0.6, 0 ), Angle( 0, 0, 0 ) }
}

COMPONENT.ElementGroups = {
	Light = { 1 }
}

COMPONENT.Segments = {
	Light = {
		Frames = {
			[1] = "Light",
			[2] = "[2] Light",
			[3] = "[3] Light",
			[4] = "[OFF] Light"
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
}

Photon2.RegisterComponent( COMPONENT )

--[[
		SURFACE MOUNT VARIANT
--]]

COMPONENT = Photon2.LibraryComponent()

COMPONENT.Name = "photon_whe_ion_surface_lrpd"

COMPONENT.WorkshopRequirements = {
	[2932505261] = "Anemolis Prop Pack"
}

COMPONENT.Author = "Photon"
COMPONENT.Title = "Whelen Ion LRPD (Surface)"
COMPONENT.Base = "photon_whe_ion_lrpd"
COMPONENT.Credits = {
	Model = "Mighty/SGM/Anemolis",
	Code = "Schmal"
}
COMPONENT.Category = "Perimeter"
COMPONENT.Model = "models/anemolis/props/anemolis_surfaceion.mdl"

COMPONENT.Preview = {
	Position = Vector(),
	Angles = Angle( 0, 90, 0 ),
	Zoom = 3
}


COMPONENT.Elements = {
	[1] = { "Light", Vector( 0, 1.8, 0 ), Angle( 0, 0, 0 ) }
}

Photon2.RegisterComponent( COMPONENT )

COMPONENT = Photon2.LibraryComponent()
COMPONENT.Title = "Whelen Ion LRPD (Surface Bracket)"
COMPONENT.Name = "photon_whe_ion_surface_bracket_lrpd"
COMPONENT.Base = "photon_whe_ion_surface_lrpd"
COMPONENT.Model = "models/anemolis/props/anemolis_lsurfaceion.mdl"

COMPONENT.Elements = {
	[1] = { "Light", Vector( 0, 1.8, 0 ), Angle( 0, 0, 0 ) }
}

Photon2.RegisterComponent( COMPONENT )
