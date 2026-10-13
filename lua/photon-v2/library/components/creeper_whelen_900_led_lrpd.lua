if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "Sk3leCreeper"

COMPONENT.Title = [[Whelen 900 Series LRPD Super-LED]]
COMPONENT.Model = "models/creeper/photon/whelen_900_superled.mdl"

COMPONENT.Category = "Perimeter"

COMPONENT.Templates = {
    ["2D"] = {
        w900_u = {
            Detail = "creeper/whelen_900_led/2d_upper",
            Width = 11.1552,
            Height = 11.1552,
            Scale = 1.0,
        },
        w900_l = {
            Detail = "creeper/whelen_900_led/2d_lower",
            Width = 11.1552,
            Height = 11.1552,
            Scale = 1.0,
        },
    },
    ["Mesh"] = {
        w900_mU = {
            Model = "models/creeper/photon/whelen_900_super_light.mdl",
            DrawMaterial = "creeper/whelen_900_led/superled_light_upper",
        },
        w900_mL = {
            Model = "models/creeper/photon/whelen_900_super_light.mdl",
            DrawMaterial = "creeper/whelen_900_led/superled_light_lower",
        },
    },
}

COMPONENT.ElementStates = {
    ["Mesh"] = {
        ["A"] = {
            Inherit = "A",
            Intensity = 0.5,
        },
    }
}

COMPONENT.StateMap = "[1] 1 2 [2] 3 4"

COMPONENT.States = {
    [1] = "B",
    [2] = "B",
}

COMPONENT.Elements = {
    [1] = { "w900_u", Vector( 0, 1.1, 1.79262 ), Angle( 0, 0, 0 )},
    [2] = { "w900_mU", Vector( 0, 0.0, 0 ), Angle( 0, 0, 0 ), "creeper/whelen_900_led/superled_light_upper"},
    [3] = { "w900_l", Vector( 0, 1.1, -1.79262 ), Angle( 0, 0, 0 )},
    [4] = { "w900_mL", Vector( 0, 0.0, 0 ), Angle( 0, 0, 0 ), "creeper/whelen_900_led/superled_light_lower"},
}
local sequence = Photon2.SequenceBuilder.New
COMPONENT.Segments = {
    ["Light"] = {
        Frames = {
            [1] = "[1] 1 2",
            [2] = "[2] 3 4",
            [3] = "[1] 1 2 3 4",
        },
        Sequences = {
            ["code"] = { 3 },

            ["SLOW"] = sequence():Flash(0, 3):Stretch(5),

			["SINGLE"] = sequence():Flash(0, 3):Stretch(3),

			["QUAD"] = sequence():TripleFlash(0, 3):Stretch(1),

            ["code:_F_CA150"] = sequence():SetTiming(7/400):Steady(3, 2):Off(1):Steady(3, 2):Off(1):Steady(3, 8):Off(14),

            ["code:_F_PP75"] = sequence():SetTiming(2/25):Steady(3, 3):Off(1):Steady(3, 1):Off(5),

            ["code:_F_PP120"] = sequence():SetTiming(1/20):Steady(3, 3):Off(1):Steady(3, 1):Off(5),

            ["LRPD3"] = { 3,3,3,0,0,0,0,3,3,3,0,0,0,3,0,3,0,3,0,3,0},

        }
    },
    ["DVI"] = {
		Frames = {
			[0] = "[~B*0.5] 1 2 3 4",
			[1] = "1:~B 2:~B 3:~B 4:~B",
		},
		Sequences = {
			["ON"] = sequence():Sequential(0, 1):Stretch(8)
		}
	},
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = {
			Light = "SLOW"
		},
		["MODE2"] = {
			Light = "SINGLE"
		},
		["MODE3"] = {
			Light = "LRPD3"
		}
	},
}