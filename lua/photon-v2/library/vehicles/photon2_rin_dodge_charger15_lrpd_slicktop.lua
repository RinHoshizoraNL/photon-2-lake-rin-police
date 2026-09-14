if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2015 Dodge Charger LRPD Slicktop"
VEHICLE.Vehicle		= "15charger_fm2_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Police Dept."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			
			{
				Option = "Patrol",
				SubMaterials = {
					{ Id = 4, Material = "rin/lrpd2/charger15/patrol_slick" }
				},
				BodyGroups = {
					{ BodyGroup = "pushbar", Value = 1 }
				},
				Props = {
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 0, -103, 56.5),
						Angles = Angle( -4, 90, 0 ),
						Scale = 1,
						Color = Color(0, 0, 0)
					},
				}
			},
			{
				Option = "Traffic Enforcement",
				SubMaterials = {
					{ Id = 4, Material = "rin/lrpd2/charger15/traffic_slick" }
				},
				BodyGroups = {
					{ BodyGroup = "pushbar", Value = 2 }
				},
				Props = {
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 0, -103, 56.5),
						Angles = Angle( -4, 90, 0 ),
						Scale = 1,
						Color = Color(0, 0, 0)
					},
				}
			},
			{
				Option = "Special Operations",
				SubMaterials = {
					{ Id = 4, Material = "rin/lrpd2/charger15/special_ops" }
				},
				BodyGroups = {
					{ BodyGroup = "pushbar", Value = 2 }
				},
				Props = {
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 0, -103, 56.5),
						Angles = Angle( -4, 90, 0 ),
						Scale = 1,
						Color = Color(0, 0, 0)
					},
				}
			},
		}
	},
	{
		Category = "Wheels",
		Options = {
			{
				Option = "RWD Hubcaps Black",
				BodyGroups = {
					{ BodyGroup = "wheels_front", Value = 2 },
					{ BodyGroup = "wheels_rear", Value = 2 },
				},
			},
			{
				Option = "RWD Hubcaps",
				BodyGroups = {
					{ BodyGroup = "wheels_front", Value = 1 },
					{ BodyGroup = "wheels_rear", Value = 1 },
				},
			},
			{
				Option = "RWD Steelies",
				BodyGroups = {
					{ BodyGroup = "wheels_front", Value = 0 },
					{ BodyGroup = "wheels_rear", Value = 0 },
				},
			},
			{
				Option = "AWD Hubcaps",
				BodyGroups = {
					{ BodyGroup = "wheels_front", Value = 4 },
					{ BodyGroup = "wheels_rear", Value = 4 },
				},
			},
			{
				Option = "AWD Hubcaps Black",
				BodyGroups = {
					{ BodyGroup = "wheels_front", Value = 5 },
					{ BodyGroup = "wheels_rear", Value = 5 },
				},
			},
			{
				Option = "AWD Steelies",
				BodyGroups = {
					{ BodyGroup = "wheels_front", Value = 3 },
					{ BodyGroup = "wheels_rear", Value = 3 },
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
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_xstream_single_lrpd",
						Position = Vector( -18, -57, 67.6  ),
						Angles = Angle( 0, 268, 3 ),
						Scale = 1,
						BodyGroups = {
							["shroud"] = 1,
							["mount"] = 2,
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_xstream_single_lrpd",
						Position = Vector( 18, -57, 67.6  ),
						Angles = Angle( 0, 272, -3 ),
						Scale = 1,
						Phase = 180,
						BodyGroups = {
							["shroud"] = 1,
							["mount"] = 2,
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
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
						Position = Vector( 11, 125, 24.5 ),
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
						}
					},
					{
						Inherit = "@siren",
						Position = Vector( -11, 125, 24.5 ),
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
						Component = "oss_laf150_lrpd",
						Position = Vector( -10, 125, 31.75 ),
						BodyGroups = {
							["bracket"] = 0,
							["mount"] = 0,
						},
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						Phase = 180,
						SubMaterials = {
							[1] = "schmal/photon/fedsig_legend/dome_r",
							[2] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "oss_laf150_lrpd",
						Position = Vector( 10, 125, 31.75 ),
						BodyGroups = {
							["bracket"] = 0,
							["mount"] = 0,
						},
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[1] = "schmal/photon/fedsig_legend/dome_r",
							[2] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( 17.5, 124, 31 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( -17.5, 124, 31 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
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
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( 32, 110, 18 ),
						Angles = Angle( 0, -30, -5 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( -32, 110, 18 ),
						Angles = Angle( 0, 30, -5 ),
						Scale = 1,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
				}
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
						Component = "photon_whe_par46_left",
						Position = Vector( -34.5, 28, 58 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_whe_par46_right",
						Position = Vector( 34.5, 28, 58 ),
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
				BodyGroups = {
					{ BodyGroup = "badge", Value = 2 },
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
					{
						Name = "Federal Signal MB1 Controller",
						Component = "photon_fedsig_mb1_controller",
						Position = Vector( 0, 2, 29 ),
						Angles = Angle( 0, 0, 21 ),
						Scale = 1,
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
						Position = Vector( 7, 20, 68 ),
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
						Model = "models/anmbrotherpocketjet633/ANMBrotherPocketJet633.mdl",
						Position = Vector( 0.5, -1, 32 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.7,
						SubMaterials = {
							[0] = "rin/lrpd2/props/printer",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/anmkustomsignalsgoldeneagleii/ANMGoldenEagleRadarFull.mdl",
						Position = Vector( 0.5, 30, 55.5 ),
						Angles = Angle( -6, 270, -9.7 ),
						Scale = 0.7,
						SubMaterials = {
							[0] = "rin/lrpd2/props/radar",
						},
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
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 0, 4.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/supermighty/photon/2015_charger_window_bars.mdl",
						Position = Vector( 0, -37, 58.5 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( -20, -110, 55.5),
						Angles = Angle( -3, 0, 4.5 ),
						Scale = 1
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 20, -110, 55.5),
						Angles = Angle( 3, 0, 4.5 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -126.7, 30 ),
						Angles = Angle( -10, -90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_unmarked_rear",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 118.2, 23 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 118.9, 23 ),
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