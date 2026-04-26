if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2013 Chevrolet Caprice LRPD Unmarked"
VEHICLE.Vehicle		= "13caprice_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Police Dept."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.SubMaterials = {
	[15] = "photon/common/blank"
}

VEHICLE.Equipment = {
	{
		Category = "Paint",
		Options = {
            {
				Option = "Prussian Steel Metallic",
				Properties = {
					Skin = 0,
					Color = Color(78,88,84)
				}
			},
            {
				Option = "Karma Blue Metallic",
				Properties = {
					Skin = 0,
					Color = Color(18,39,66)
				}
			},
            {
				Option = "Hugo Blue Metallic",
				Properties = {
					Skin = 0,
					Color = Color(2,9,33)
				}
			},
            {
				Option = "Mirage Glow Gold Metallic",
				Properties = {
					Skin = 0,
					Color = Color(161,153,131)
				}
			},
            {
				Option = "Red Hot",
				Properties = {
					Skin = 0,
					Color = Color(209,0,0)
				}
			},
            {
				Option = "Phantom Black",
				Properties = {
					Skin = 0,
					Color = Color(0,0,0)
				}
			},
            {
				Option = "Heron White",
				Properties = {
					Skin = 0,
					Color = Color(255,255,255)
				}
			},
            {
				Option = "Alto Grey",
				Properties = {
					Skin = 0,
					Color = Color(65,67,63)
				}
			},
            {
				Option = "Nitrate Silver",
				Properties = {
					Skin = 0,
					Color = Color(177,177,177)
				}
			},
		}
	},
	{
		Category = "Standard",
		Options = {
			{
				Option = "Standard",
				Components = {
					{
						Component = "photon_standard_chevcap13",
						Segments = {
							["ReverseFlasherLRPD"] = {
								Frames = {
									[1] = "[B] 12",
									[2] = "[B] 13",
									[3] = "[W] 12",
									[4] = "[W] 13"
								},
								Sequences = {
									STAGE3 = sequence():TripleFlash( 1, 2 ):TripleFlash( 3, 4 )
								}
							}
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {},
								["MODE3"] = {
									HighBeams = "WIGWAG",
									ReverseFlasherLRPD = "STAGE3"
								}
							}
						}
					}
				}
			}
		}
	},
	{
		Category = "Wheels",
		Options = {
			{
				Option = "Hubcaps",
				BodyGroups = {
					{ BodyGroup = "hubcaps", Value = 1 },
				},
			},
			{
				Option = "Steelies",
				BodyGroups = {
					{ BodyGroup = "hubcaps", Value = 0 },
				},
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
						Position = Vector( 0, 11, 62 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.1,
						Options = {
							Width = 3.5,
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
						Position = Vector( 0, -78, 56.7 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
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
		Category = "Grille",
		Options = {
			{
				Option = "Grille",
				Components = {
					{
						Name = "@siren",
						Component = "siren_prototype",
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 11.5, 100, 16.5 ),
						Angles = Angle( 0, 270, 180 ),
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
						},
						Inputs = { 
							["Emergency.SirenParkKill"] = { ["PARK"] = {} }
						}
					},
					{
						Inherit = "@siren",
						Position = Vector( -11.5, 100, 16.5 ),
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
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( 10, 100, 32 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( -10, 100, 32 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
                        Phase = 180,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( 29, 99.3, 16.3 ),
						Angles = Angle( -3, -37, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( -29, 99.3, 16.3 ),
						Angles = Angle( 3, 37, 0 ),
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
		Category = "Side Lights",
		Options = {
			{
				Option = "Side Lights",
				Components = {
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( 41.2, 46, 37.7 ),
						Angles = Angle( -4.5, 272, 5 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( -41.2, 46, 37.7 ),
						Angles = Angle( 4.5, 88, 5 ),
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
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				Components = {
					{
						Component = "photon_pan_toughbookcf30",
						Position = Vector( 8, 13, 45 ),
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
						Position = Vector( 1.5, 8.1, 30.5 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( 1.5, 10.8, 31.8 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 1.5, 5.4, 30 ),
						Angles = Angle( 0, 0, -69 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/anmradio/ANMWhelenMic.mdl",
						Position = Vector( 5.5, 7, 30 ),
						Angles = Angle( 0, 180, 0 ),
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
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 7, 14.5, 62 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				    {
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 1.5, -2, 4 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
                    {
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 0, -103, 52.5),
						Angles = Angle( -2, 90, 0 ),
						Scale = 1,
						Color = Color(0, 0, 0)
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -120.5, 26 ),
						Angles = Angle( -2, -90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_unmarked_rear",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 109.9, 18.9 ),
						Angles = Angle( -0.7, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_unmarked_front",
						},
					},
				}
			}
		}
	},
	{
		Category = "Windows",
		Options = {
			{
				Option = "Window",
				Props = {
					{
						Model = "models/schmal/chevcap13_windows.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "schmal/chevcap13/police_modulate"
						}
					}
				}
			},
		}
	},
}