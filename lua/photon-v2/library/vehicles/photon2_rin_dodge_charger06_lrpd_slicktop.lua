if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2006 Dodge Charger LRPD Slicktop"
VEHICLE.Vehicle		= "06charger_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Police Dept."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Traffic Enforcement",
				SubMaterials = {
					{ Id = 3, Material = "rin/lrpd2/charger06/traffic_slick" }
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
						Position = Vector( 0, 26.5, 62.6 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.1,
						Options = {
							Width = 4,
							Angle = 12
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {All = "CVPI"},
								["MODE2"] = {All = "SWEEP_CVPI"},
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					}
				}
			},
		}
	},
	{
		Category = "Pushbar",
		Options = {
			{
				Option = "Pushbar",
				Components = {
					{
						Name = "@siren",
						Component = "siren_prototype",
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 12, 127, 23 ),
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
						Position = Vector( -12, 127, 23 ),
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
						Name = "@pushbar_laf150",  --LEFT FRONT FLASHER
						Component = "oss_laf150_lrpd",
						Position = Vector( -10, 126.8, 29.15 ),
						BodyGroups = {
							["bracket"] = 0,
							["mount"] = 0,
						},
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.8,
						SubMaterials = {
							[1] = "schmal/photon/fedsig_legend/dome_r",
							[2] = "schmal/photon/fedsig_legend/dome_r"
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
								["MODE2"] = {Light = "SINGLE"},
								["MODE3"] = {Light = "QUAD"},
							},
						}
					},
					{
						Inherit = "@pushbar_laf150", --RIGHT FRONT FLASHER
						Position = Vector( 10, 126.8, 29.15 ),
						Angles = Angle( 0, 0, 0 ),
						Phase = 180,
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( 18.8, 126.2, 25 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
								["MODE2"] = {Light = "SINGLE"},
								["MODE3"] = {Light = "QUAD"},
							},
						}
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( -18.8, 126.2, 25 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
								["MODE2"] = {Light = "SINGLE"},
								["MODE3"] = {Light = "QUAD"},
							},
						}
					},
				}
			},
		}
	},
	{
		Category = "Rear Deck Lighting",
		Options = {
            {
				Option = "Federal Signal X-Stream",
				Components = {
					{
						Component = "photon_fedsig_xstream_single_lrpd",
						Position = Vector( -21, -70, 57.5  ),
						Angles = Angle( 0, 270, 180 ),
						Scale = 1,
						BodyGroups = {
							["shroud"] = 1,
							["mount"] = 2,
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
								["MODE2"] = {Light = "SINGLE"},
								["MODE3"] = {Light = "QUAD"},
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_xstream_single_lrpd",
						Position = Vector( -13.3, -70, 57.5  ),
						Angles = Angle( 0, 270, 180 ),
						Scale = 1,
						Phase = 180,
						States = { "R" },
						BodyGroups = {
							["shroud"] = 1,
							["mount"] = 2,
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
								["MODE2"] = {Light = "SINGLE"},
								["MODE3"] = {Light = "QUAD"},
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_xstream_single_lrpd",
						Position = Vector( 21, -70, 57.5  ),
						Angles = Angle( 0, 270, 180 ),
						Scale = 1,
						Phase = 180,
						BodyGroups = {
							["shroud"] = 1,
							["mount"] = 2,
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
								["MODE2"] = {Light = "SINGLE"},
								["MODE3"] = {Light = "QUAD"},
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_xstream_single_lrpd",
						Position = Vector( 13.3, -70, 57.5  ),
						Angles = Angle( 0, 270, 180 ),
						Scale = 1,
						States = { "A" },
						BodyGroups = {
							["shroud"] = 1,
							["mount"] = 2,
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
								["MODE2"] = {Light = "SINGLE"},
								["MODE3"] = {Light = "QUAD"},
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_xstream_single_lrpd",
						Position = Vector( -3.7, -53, 63  ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Phase = 180,
						BodyGroups = {
							["shroud"] = 1,
							["mount"] = 0,
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
								["MODE2"] = {Light = "SINGLE"},
								["MODE3"] = {Light = "QUAD"},
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_xstream_single_lrpd",
						Position = Vector( 3.7, -53, 63  ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						BodyGroups = {
							["shroud"] = 1,
							["mount"] = 0,
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
								["MODE2"] = {Light = "SINGLE"},
								["MODE3"] = {Light = "QUAD"},
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_whe_500_lrpd",
						Position = Vector( 0, -70, 54 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 0.9,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
				Props = {
					{
						Model = "models/schmal/antenna_gps.mdl",
						Position = Vector( -18.7, -71, 47.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 2),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_gps.mdl",
						Position = Vector( 18.7, -71, 47.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 2),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			},
		}
	},
    {
		Category = "Wheels",
		Options = {
			{
				Option = "Hubcaps",
				BodyGroups = {
					{ BodyGroup = "wheels_front", Value = 1 },
					{ BodyGroup = "wheels_rear", Value = 1 },
				},
			},
			{
				Option = "Hubcaps Black",
				BodyGroups = {
					{ BodyGroup = "wheels_front", Value = 2 },
					{ BodyGroup = "wheels_rear", Value = 2 },
				},
			},
			{
				Option = "Steelies",
				BodyGroups = {
					{ BodyGroup = "wheels_front", Value = 0 },
					{ BodyGroup = "wheels_rear", Value = 0 },
				},
			},
		}
	},
    {
		Category = "Spotlights",
		Options = {
			{
				Option = "Pillar Spotlights",
				Components = {
					{
						Component = "photon_par46_left",
						Position = Vector( -36, 35, 52 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_par46_right",
						Position = Vector( 36, 35, 52 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Inputs = {
							-- Clear the default illumination mode
							["Emergency.SceneForward"] = { ["ON"] = {} },
						}
					}
				},
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
						Position = Vector( 6.5, 17, 40 ),
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
						Model = "models/supermighty/setina/setina_impala_pushbar.mdl",
						Position = Vector( 0, 123.5, 22.7 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = Vector( 1, 1.1, 1.1 ),
					},
                    {
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 7.5, 27.9, 60.1 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
                    {
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( -0.2, 14.1, 26.5 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 16.8, 28 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 11.4, 26.1 ),
						Angles = Angle( 0, 0, -69 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 0, 4, 0 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 1.5, 0 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -30, 69.7),
						Angles = Angle( 0, 0, 4 ),
						Scale = 1
					},
                    {
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -104, 52),
						Angles = Angle( 0, 0, 5.5 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -120.7, 25.3 ),
						Angles = Angle( -10, -90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_unmarked_rear",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 124.3, 17.3 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 125, 17.3 ),
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