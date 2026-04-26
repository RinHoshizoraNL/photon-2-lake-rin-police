if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2015 Dodge Charger SRT LRPD Unmarked"
VEHICLE.Vehicle		= "15charger_hellcat_fm2_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Police Dept."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Paint",
		Options = {
            {
				Option = "F8 Green Metallic",
				Properties = {
					Skin = 0,
					Color = Color(48,69,28)
				}
			},
            {
				Option = "Sublime Green Metallic",
				Properties = {
					Skin = 0,
					Color = Color(46,187,0)
				}
			},
            {
				Option = "Blue Streak Pearl",
				Properties = {
					Skin = 0,
					Color = Color(0,32,130)
				}
			},
            {
				Option = "Jazz Blue Pearl",
				Properties = {
					Skin = 0,
					Color = Color(4,7,58)
				}
			},
            {
				Option = "Surf Blue Pearl",
				Properties = {
					Skin = 0,
					Color = Color(22,118,174)
				}
			},
            {
				Option = "Viper Race Yellow",
				Properties = {
					Skin = 0,
					Color = Color(255,191,0)
				}
			},
            {
				Option = "Redline Red Tricoat",
				Properties = {
					Skin = 0,
					Color = Color(153,0,0)
				}
			},
            {
				Option = "Passion Red Pearl",
				Properties = {
					Skin = 0,
					Color = Color(64,2,0)
				}
			},
            {
				Option = "Hemi Orange Metallic",
				Properties = {
					Skin = 0,
					Color = Color(255,76,0)
				}
			},
            {
				Option = "Granite Crystal Metallic",
				Properties = {
					Skin = 0,
					Color = Color(54,59,56)
				}
			},
            {
				Option = "Billet Silver Metallic",
				Properties = {
					Skin = 0,
					Color = Color(167,176,177)
				}
			},
            {
				Option = "Ivory Tricoat Pearl",
				Properties = {
					Skin = 0,
					Color = Color(255,250,237)
				}
			},
            {
				Option = "Bright White",
				Properties = {
					Skin = 0,
					Color = Color(255,255,255)
				}
			},
            {
				Option = "Pitch Black",
				Properties = {
					Skin = 0,
					Color = Color(0,0,0)
				}
			},
        }
	},
	{
		Category = "Siren",
		Options = {
			{
				Option = "Patlite SAP-500E (LRPD Spec)",
				Components = {
					{
						Name = "@siren",
						Component = "siren_prototype",
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 12, 109.5, 17.5 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "sentry/cvpi_hd/black"
						},
						Siren = "patlite_sap500e",
						Templates = {
							["Sound"] = { 
								Tone = {
									DSP = 0,
									Pitch = 100
								}
							}
						}
					},
					{
						Inherit = "@siren",
						Position = Vector( -12, 109.5, 17.5 ),
						Siren = "patlite_sap500e",
						Inputs = {
							["Emergency.Siren"] = {
                        		["T1"] = {},
                        		["T2"] = {},
                        		["T3"] = {},
                        		["T4"] = {},
                        		["T5"] = {},
                        		["T6"] = {},
                        		["T7"] = {},
                        		["T8"] = {},
                        	},
                        	["Emergency.Siren2"] = {
                        		["T1"] = { Siren = "T1" },
                        		["T2"] = { Siren = "T2" },
                        		["T3"] = { Siren = "T3" },
                        		["T4"] = { Siren = "T4" },
                        		["T5"] = { Siren = "T5" },
                        		["T6"] = { Siren = "T6" },
                        		["T7"] = { Siren = "T7" },
                        		["T8"] = { Siren = "T8" },
                        	},
                        	["Emergency.SirenOverride"] = {
                        		["AIR"] = {},
                        		["MAN"] = {},
                        	},
                        	["Virtual.SirenOverride"] = {
                        		["MANOVRD"] = {}
                        	}
                        }
					}
				}
			}
		}
	},
    {
		Category = "Grille",
		Options = {
			{
				Option = "Grille",
				Components = {
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( 12, 113.5, 35.7 ),
						Angles = Angle( -1, -8, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( -12, 113.5, 35.7 ),
						Angles = Angle( 1, 8, 0 ),
						Scale = 1,
                        Phase = 180,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
					},
				}
			},
		}
	},
	{
		Category = "Front Bumper",
		Options = {
			{
				Option = "Front Bumper",
				Components = {
				    {
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( 37, 107.2, 18 ),
						Angles = Angle( 0, -36, -14 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( -37, 107.2, 18 ),
						Angles = Angle( 0, 36, -14 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
					},
				}
			},
		}
	},
    {
		Category = "Visor Light",
		Options = {
			{
				Option = "Spectralux ILS",
				Components = {
					{
						Component = "photon_fedsig_ils_lrpd",
						Position = Vector( 0, 16, 67 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.1,
						Options = {
							Width = 4,
							Angle = 10
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					}
				}
			},
		}
	},
    {
		Category = "Rear Deck Lighting",
		Options = {
            {
				Option = "Signalmaster",
				Components = {
					{
						Component = "photon_fedsig_cn_signalmaster_lrpd",
						Position = Vector( 0, -84, 58 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						BodyGroups = {
							["mount"] = 1,
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE2"] = {All = "CVPI_LR"},
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
			},
        }
	},
    {
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				BodyGroups = {
					{ BodyGroup = "badge", Value = 0 },
				},
				Components = {
					{
						Component = "photon_pan_toughbookcf30",
						Position = Vector( 6.5, 12, 45 ),
						Angles = Angle( 0, 31, 0 ),
						Scale = 0.9,
						Options = {
							Pole = 0,
							Base = -60,
							-- You can change the screen material by using this option:
							Screen = "rin/lrpd2/props/laptop_screen_lrpd",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
				Props = {
					{
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( -0.2, 8.1, 30.5 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 10.8, 31.8 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 5.4, 30 ),
						Angles = Angle( 0, 0, -69 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 7, 25, 66 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( -8, -58, 68.5 ),
						Angles = Angle( 0, 88, -2 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/anmradio/ANMWhelenMic.mdl",
						Position = Vector( -5.8, 23, 44 ),
						Angles = Angle( 0, 180, -42 ),
						Scale = 1,
						BodyGroups = {
							["wire"] = 1,
						},
						SubMaterials = {
							[1] = "rin/lrpd2/props/mic",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 0, -2, 4 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
                    {
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 0, -108, 56.1),
						Angles = Angle( -4.5, 90, 0 ),
						Scale = 1,
						Color = Color(0, 0, 0)
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -127.2, 30 ),
						Angles = Angle( -10, -90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_unmarked_rear",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 119.8, 23 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 120.5, 23 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_unmarked_front",
						},
					},
				}
			}
		}
	},
}