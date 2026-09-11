if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "Sk3leCreeper"

COMPONENT.Title = "Whelen L31 Series LRPD"
COMPONENT.Model = "models/creeper/photon/whelen_l31.mdl"
COMPONENT.Category = "Beacon"

COMPONENT.SubMaterials = {
	[10] = "schmal/photon/fedsig_legend/dome_r",
}

local amber = { r = 255, g = 128, b = 0 }

COMPONENT.Templates = {
    ["2D"] = {
        l312d = {
            Detail = PhotonMaterial.GenerateLightQuad("creeper/whelen_l31/2d_detail_curved.png").MaterialName,
            Width = 5.28,
            Height = 5.28,
            Scale = 1.0,
        },
    },
    ["Mesh"] = {
        l31 = {
            Model = "models/creeper/photon/whelen_l31_light.mdl",
            DrawMaterial = "creeper/whelen_l31/l31_light1",
        },
        l31flat = {
            Model = "models/creeper/photon/whelen_l31_flat_light.mdl",
            DrawMaterial = "creeper/whelen_l31/l31_flat",
        },
    },
}

local igfac = 5
local ilfac = 5

COMPONENT.ElementStates = {
    ["Mesh"] = {
        ["~OFF"] = {
            Intensity = 0,
            IntensityGainFactor = igfac,
            IntensityLossFactor = ilfac,
            IntensityTransitions = true
        },
        ["~R"] = {
            Inherit = "R",
            IntensityTransitions = true,
            Intensity = 1,
            IntensityGainFactor = igfac,
            IntensityLossFactor = ilfac,
        },
        ["~A"] = {
            Inherit = "A",
            IntensityTransitions = true,
            Intensity = 1,
            BloomColor = PhotonColor( 255, 110, 15 ):Blend( amber ):Scale(0.5):GetBlendColor(),
            DrawColor = PhotonColor( 255, 180, 80 ):Blend( amber ):GetBlendColor(),
            IntensityGainFactor = igfac,
            IntensityLossFactor = ilfac,
        },
        ["A"] = {
            Inherit = "A",
            BloomColor = PhotonColor( 255, 110, 15 ):Blend( amber ):Scale(0.5):GetBlendColor(),
            DrawColor = PhotonColor( 255, 180, 80 ):Blend( amber ):GetBlendColor(),
        },
        ["~B"] = {
            Inherit = "B",
            IntensityTransitions = true,
            Intensity = 1,
            IntensityGainFactor = igfac,
            IntensityLossFactor = ilfac,
        },
        ["~W"] = {
            Inherit = "W",
            IntensityTransitions = true,
            Intensity = 1,
            IntensityGainFactor = igfac,
            IntensityLossFactor = ilfac,
        },
        ["~G"] = {
            Inherit = "G",
            IntensityTransitions = true,
            Intensity = 1,
            IntensityGainFactor = igfac,
            IntensityLossFactor = ilfac,
        },
    },
}

COMPONENT.StateMap = "[1] 1 2 3 4 5 6 7 8 9"

COMPONENT.States = {
    [1] = "B",
}
--2.24162
COMPONENT.Elements = {
    [1] = { "l31", Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "creeper/whelen_l31/l31_light1", },
    [2] = { "l31", Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "creeper/whelen_l31/l31_light2",},
    [3] = { "l31", Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "creeper/whelen_l31/l31_light3",},
    [4] = { "l31", Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "creeper/whelen_l31/l31_light4",},
    [5] = { "l31flat", Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "creeper/whelen_l31/l31_light1",},
    [6] = { "l31flat", Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "creeper/whelen_l31/l31_light2",},
    [7] = { "l31flat", Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "creeper/whelen_l31/l31_light3",},
    [8] = { "l31flat", Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "creeper/whelen_l31/l31_light4",},
    [9] = { "l31", Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "creeper/shared/ledlight", DrawMaterial = "creeper/shared/ledlight"},
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
    Lights = {
        FrameDuration = 1/30,
        Frames = {
            --STROBE
            [1] = "1 4 5 8",
            [2] = "2 3 6 7",
            [3] = "1 2 3 4 5 6 7 8 9",
            [4] = "1 5",
            [5] = "2 6",
            [6] = "3 7",
            [7] = "4 8",
            --DVI
            [8] = "[~OFF] 1 2 3 4 5 6 7 8 9",
            [9] = "1 4 5 8 [~OFF] 2 3 6 7",
            [10] = "2 3 6 7 [~OFF] 1 4 5 8",
        },
        Sequences = {
            ["code"] = { 3 },

        ["code:_SP_SF60_DVI"] = sequence():SetTiming(1/10):Steady(9, 4):Steady(8, 1):Steady(10, 4):Steady(8, 1),
        ["code:_SP_SF75_DVI"] = sequence():SetTiming(2/25):Steady(9, 4):Steady(8, 1):Steady(10, 4):Steady(8, 1),

        ["code:_F_SF60_DVI"] = sequence():SetTiming(1/5):Steady(3, 2):Steady(8, 3),
        ["code:_F_SF75_DVI"] = sequence():SetTiming(2/25):Steady(3, 4):Steady(8, 6),
  
        ["code:_F_ROT50"] = sequence():SetTiming(3/10):Sequential(4, 7),
        ["code:_F_ROT75"] = sequence():SetTiming(2/10):Sequential(4, 7),
        ["code:_F_ROT118"] = sequence():SetTiming(16/125):Sequential(4, 7),
        ["code:_F_ROT250"] = sequence():SetTiming(3/50):Sequential(4, 7),

        ["code:_F_SA75"] = sequence():SetTiming(1/33):Steady(3, 1):Off(1):Steady(3, 1):Off(1):Steady(3, 1):Off(1):Steady(3, 1):Off(1):Steady(3, 8):Off(16),

        ["code:_F_CF75"] = sequence():SetTiming(1/50):Steady(3, 4):Off(1):Steady(3, 4):Off(1):Steady(3, 4):Off(1):Steady(3, 4):Off(21),

        ["code:_F_CA75"] = sequence():SetTiming(7/200):Steady(3, 2):Off(1):Steady(3, 2):Off(1):Steady(3, 8):Off(14),

        ["code:_F_CA150"] = sequence():SetTiming(7/400):Steady(3, 2):Off(1):Steady(3, 2):Off(1):Steady(3, 8):Off(14),

        ["code:_F_SF60"] = sequence():SetTiming(1/5):Steady(3, 2):Off(3),

        ["code:_F_SF75"] = sequence():SetTiming(2/25):Steady(3, 4):Off(6),

        ["code:_F_SF90"] = sequence():SetTiming(8/125):Steady(3, 4):Off(6),

        ["code:_F_SF120"] = sequence():SetTiming(12/125):Steady(3, 2):Off(3),

        ["code:_F_SF150"] = sequence():SetTiming(1/25):Steady(3, 4):Off(6),

        ["code:_F_SF300"] = sequence():SetTiming(1/40):Steady(3, 3):Off(5),

        ["code:_F_ACTSCAN"] = sequence():SetTiming(1/50):
        Steady(1, 8):Off(4):Steady(1, 8):Steady(2, 8):Off(4):Steady(2, 8): --DF75
        Steady(1, 8):Off(4):Steady(1, 8):Steady(2, 8):Off(4):Steady(2, 8):
        Steady(1, 4):Off(1):Steady(2, 4):Off(1): --SF300
        Steady(1, 4):Off(1):Steady(2, 4):Off(1):
        Steady(1, 4):Off(1):Steady(2, 4):Off(1):
        Steady(1, 4):Off(1):Steady(2, 4):Off(1):
        Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):
        Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):
        Steady(1, 4):Off(1):Steady(2, 4):Off(1): --SF150
        Steady(1, 4):Off(1):Steady(2, 4):Off(5):
        Steady(3, 2):Off(1):Steady(3, 2):Off(1):Steady(3, 2):Off(1):Steady(3, 2):Off(1):Steady(3, 12):Off(16):
        Steady(3, 2):Off(1):Steady(3, 2):Off(1):Steady(3, 2):Off(1):Steady(3, 2):Off(1):Steady(3, 12):Off(16),

        ["code:_F_ACTFLASH"] = sequence():SetTiming(1/50):
        Steady(3, 4):Off(1):Steady(3, 4):Off(1):Steady(3, 4):Off(1):Steady(3, 4):Off(21):
        Steady(3, 4):Off(1):Steady(3, 4):Off(1):Steady(3, 4):Off(1):Steady(3, 4):Off(21):
        Steady(3, 4):Off(6):
        Steady(3, 4):Off(6):
        Steady(3, 4):Off(6):
        Steady(3, 4):Off(6),

        ["code:_F_DF75"] = sequence():SetTiming(1/25):Steady(3, 4):Off(2):Steady(3, 4):Off(10),

        ["code:_F_DF120"] = sequence():SetTiming(1/20):Steady(3, 2):Off(1):Steady(3, 2):Off(5),

        ["code:_F_DF150"] = sequence():SetTiming(1/50):Steady(3, 4):Off(2):Steady(3, 4):Off(10),

        ["code:_F_TF75"] = sequence():SetTiming(1/40):Steady(3, 4):Off(1):Steady(3, 5):Off(1):Steady(3, 5):Off(16),

        ["code:_F_TF120"] = sequence():SetTiming(3/200):Steady(3, 4):Off(1):Steady(3, 5):Off(1):Steady(3, 5):Off(16),

        ["code:_F_PP75"] = sequence():SetTiming(2/25):Steady(3, 3):Off(1):Steady(3, 1):Off(5),

        ["code:_F_PP120"] = sequence():SetTiming(1/20):Steady(3, 3):Off(1):Steady(3, 1):Off(5),

        ["code:_F_LB75"] = sequence():SetTiming(1/50):Steady(3, 3):Off(1):Steady(3, 3):Off(1):Steady(3, 3):Off(1):Steady(3, 3):Off(1):Steady(3, 3):Off(20),

        --------------SPLIT

        ["code:_SP_SA75"] = sequence():SetTiming(1/33):Steady(1, 1):Off(1):Steady(1, 1):Off(1):Steady(1, 1):Off(1):Steady(1, 1):Off(1):Steady(1, 8):Steady(2, 1):Off(1):Steady(2, 1):Off(1):Steady(2, 1):Off(1):Steady(2, 1):Off(1):Steady(2, 8),

        ["code:_SP_CF75"] = sequence():SetTiming(1/50):Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1),

        ["code:_SP_CA75"] = sequence():SetTiming(7/200):Steady(1, 2):Off(1):Steady(1, 2):Off(1):Steady(1, 8):Steady(2, 2):Off(1):Steady(2, 2):Off(1):Steady(2, 8),

        ["code:_SP_CA150"] = sequence():SetTiming(7/400):Steady(1, 2):Off(1):Steady(1, 2):Off(1):Steady(1, 8):Steady(2, 2):Off(1):Steady(2, 2):Off(1):Steady(2, 8),

        ["code:_SP_SF60"] = sequence():SetTiming(1/10):Steady(1, 4):Off(1):Steady(2, 4):Off(1),

        ["code:_SP_SF75"] = sequence():SetTiming(2/25):Steady(1, 4):Off(1):Steady(2, 4):Off(1),

        ["code:_SP_SF90"] = sequence():SetTiming(8/125):Steady(1, 4):Off(1):Steady(2, 4):Off(1),

        ["code:_SP_SF120"] = sequence():SetTiming(6/125):Steady(1, 4):Off(1):Steady(2, 4):Off(1),

        ["code:_SP_SF150"] = sequence():SetTiming(1/25):Steady(1, 4):Off(1):Steady(2, 4):Off(1),

        ["code:_SP_SF300"] = sequence():SetTiming(1/40):Steady(1, 3):Off(1):Steady(2, 3):Off(1),

        ["code:_SP_ACTFLASH"] = sequence():SetTiming(1/50):
        Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):
        Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):
        Steady(1, 4):Off(1):Steady(2, 4):Off(1):
        Steady(1, 4):Off(1):Steady(2, 4):Off(1):
        Steady(1, 4):Off(1):Steady(2, 4):Off(1):
        Steady(1, 4):Off(1):Steady(2, 4):Off(1),

        ["code:_SP_DF75"] = sequence():SetTiming(1/25):Steady(1, 4):Off(2):Steady(1, 4):Steady(2, 4):Off(2):Steady(2, 4),

        ["code:_SP_DF120"] = sequence():SetTiming(1/20):Steady(1, 2):Off(1):Steady(1, 2):Steady(2, 2):Off(1):Steady(2, 2),

        ["code:_SP_DF150"] = sequence():SetTiming(1/50):Steady(1, 4):Off(2):Steady(1, 4):Steady(2, 4):Off(2):Steady(2, 4),

        ["code:_SP_TF75"] = sequence():SetTiming(1/40):Steady(1, 4):Off(1):Steady(1, 5):Off(1):Steady(1, 5):Steady(2, 4):Off(1):Steady(2, 5):Off(1):Steady(2, 5),

        ["code:_SP_TF120"] = sequence():SetTiming(3/200):Steady(1, 4):Off(1):Steady(1, 5):Off(1):Steady(1, 5):Steady(2, 4):Off(1):Steady(2, 5):Off(1):Steady(2, 5),

        ["code:_SP_PP75"] = sequence():SetTiming(2/25):Steady(1, 3):Off(1):Steady(1, 1):Steady(2, 3):Off(1):Steady(2, 1),

        ["code:_SP_PP120"] = sequence():SetTiming(1/20):Steady(1, 3):Off(1):Steady(1, 1):Steady(2, 3):Off(1):Steady(2, 1),

        ["code:_SP_LB75"] = sequence():SetTiming(1/50):Steady(1, 3):Off(1):Steady(1, 3):Off(1):Steady(1, 3):Off(1):Steady(1, 3):Off(1):Steady(1, 3):Steady(2, 3):Off(1):Steady(2, 3):Off(1):Steady(2, 3):Off(1):Steady(2, 3):Off(1):Steady(2, 3),
        }
    },
}

COMPONENT.Inputs = {
    ["Emergency.Warning"] = {
        ["MODE1"] = {
            Lights = "code:_F_ROT118",
        },
        ["MODE2"] = {
            Lights = "code:_F_ROT118",
        },
        ["MODE3"] = {
            Lights = "code:_F_ROT250",
        }
    },
}
