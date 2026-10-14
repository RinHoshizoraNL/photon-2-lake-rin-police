if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2005 Chevrolet Impala LRPD"
VEHICLE.Vehicle		= "ctv_impala_2000"
VEHICLE.Category 	= "Photon 2: Lake Rin Police Dept."
VEHICLE.Author		= "Rin Hoshizora"

VEHICLE.SubMaterials = {
	[7] = "sentry/13caprice/black",
	[11] = "sentry/shared/env_cubemap_model",
	[18] = "rin/lrpd2/impala05/leather_seats",--leather_seats
	[19] = "rin/lrpd2/impala05/seats_stuff",--seats_stuff
	[20] = "rin/lrpd2/impala05/dashboard",
	[21] = "rin/lrpd2/impala05/plastic_leather",--plastic_leather
	[24] = "rin/lrpd2/impala05/interior",
	[27] = "sentry/shared/glass",
	[28] = "sentry/shared/glass",
}

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Patrol",
				SubMaterials = {
					{ Id = 16, Material = "rin/lrpd2/impala05/patrol" }
				}
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
            {
				Option = "Patlite AXS-12",
				Components = {
					{
                        Component = "patlite_axs12",
                        Position = Vector( 0, -2, 70.5 ),
                        Angles = Angle( -1, -90, 0 ),
                        Scale = 1.3,
						States = {
							[1] = "B",
							[2] = "B",
							[3] = "B",
							[4] = "B",
						},
                        Options = {
                            FeetWidthOffset = 1,
                            FeetTilt = -2,
                        },
						SubMaterials = {
							[12] = "sentry/props/glass/blue"
						},
                    },
					{
						Component = "koito_autocover_lrpd",
						Position = Vector( 9, 130.5, 27 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.9,
					},
					{
						Component = "koito_autocover_lrpd",
						Position = Vector( -9, 130.5, 27 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.9,
						Phase = 180,
					},
					{
						Component = "koito_flasher_lrpd",
						Position = Vector( 18.5, -55, 58 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[3] = "schmal/photon/fedsig_legend/dome_r",
							[0] = "sentry/props/koitoflasher/plastic_r",
						},
						BodyGroups = {
							["mount"] = 1,
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "koito_flasher_lrpd",
						Position = Vector( -18.5, -55, 58 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.9,
						Phase = 90,
						SubMaterials = {
							[3] = "schmal/photon/fedsig_legend/dome_r"
						},
						BodyGroups = {
							["mount"] = 1,
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_whe_500_lrpd",
						Position = Vector( 0, -56, 53 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 0.9,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
				Props = {
					{
						Model = "models/schmal/antenna_gps.mdl",
						Position = Vector( -18.7, -56, 48),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 2),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_gps.mdl",
						Position = Vector( 18.7, -56, 48),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 2),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			},
			{
				Option = "Whelen Liberty",
				Components = {
					{
                        Component = "photon_whe_liberty_48_lrpd",
                        Position = Vector( 0, -4, 70 ),
                        Angles = Angle( 1.5, 90, 0 ),
                        Scale = 0.93,
						Bones = {
							["foot_l"] =	{ Vector( -2, 0, 0 ), Angle( 0, 0, 0 ), 1 },
							["foot_r"] =	{ Vector( 2, 0, 0 ), Angle( 0, 0, 0 ), 1 },
							["strap_l"] =	{ Vector( -0.45, 0, 0.1 ), Angle( 0, 0, 0 ), 1 },
							["strap_r"] =	{ Vector( 0.45, 0, 0.1 ), Angle( 0, 0, 0 ), 1 },
						},
					},
					{
						Name = "@pushbar_laf150",  
						Component = "oss_laf150_lrpd",
						Position = Vector( 10, 131.8, 28 ),
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
						Inherit = "@pushbar_laf150", 
						Position = Vector( -10, 131.8, 28 ),
						Angles = Angle( 0, 0, 0 ),
						Phase = 180,
					},
					{
						Component = "photon_fedsig_cuda_lrpd",
						Position = Vector( -18.5, -55.7, 57.3  ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.2,
						Phase = 180,
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
						Component = "photon_fedsig_cuda_lrpd",
						Position = Vector( 18.5, -55.7, 57.3  ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.2,
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
						Position = Vector( 0, -56, 53 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 0.9,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
				Props = {
					{
						Model = "models/schmal/antenna_gps.mdl",
						Position = Vector( -18.7, -56, 48),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 2),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_gps.mdl",
						Position = Vector( 18.7, -56, 48),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 2),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			},
		}
	},
	{
		Category = "Siren",
		Options = {
			{
				Option = "Patlite SAP-500E (US Spec)",
				Components = {
					{
						Name = "@siren",
						Component = "siren_prototype",
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 11, 131, 21 ),
						Angles = Angle( 0, 270, 180 ),
						Scale = 0.9,
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
						Position = Vector( -11, 131, 21 ),
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
						Component = "photon_par46_left",
						Position = Vector( -36, 40.5, 52 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_par46_right",
						Position = Vector( 36, 40.5, 52 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Inputs = {
							["Emergency.SceneForward"] = { ["ON"] = {} },
						}
					}
				},
			},
		}
	},
	{
		Category = "Wheels",
		Options = {
			{
				Option = "Hubcaps",
				BodyGroups = {
					{ BodyGroup = "rim options", Value = 0 },
				},
			},
			{
				Option = "Steelies",
				BodyGroups = {
					{ BodyGroup = "rim options", Value = 1 },
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
						Position = Vector( 5, 28.5, 35 ),
						Angles = Angle( 0, 31, 0 ),
						Scale = 1,
						Options = {
							Pole = 2,
							Base = -60,
							Screen = "rin/lrpd2/props/laptop_screen_lrpd",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
                },
                Props = {
					{
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 9, 29.5, 60),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 15, 2 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
                        RenderGroup = RENDERGROUP_OPAQUE,
					},
                    {
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( -1.1, 38.7, 25.3 ),
						Angles = Angle( -15, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -1, 39, 27.5 ),
						Angles = Angle( -5, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( -1, 37.5, 23.2 ),
						Angles = Angle( 0, 0, -25 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/anmkustomsignalsgoldeneagleii/ANMGoldenEagleRadarFull.mdl",
						Position = Vector( 0.5, 49, 47.35 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 0.7,
						SubMaterials = {
							[0] = "rin/lrpd2/props/radar",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -113.8, 26.8 ),
						Angles = Angle( -5.8, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
                    {
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 127.7, 20 ),
						Angles = Angle( 2, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 128.5, 20 ),
						Angles = Angle( 2, 90, 0 ),
						Scale = 0.98,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/schmal/chevcap13_bumper.mdl",
						Position = Vector( 0, 131.5, 24 ),
						Angles = Angle(0, 270, 0),
						Scale = Vector( 1, 1.05, 1),
						BodyGroups = {
							["wrap"] = 0,
						},
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -25, 69),
						Angles = Angle( 0, 0, 2 ),
						Scale = 1
					},
                    {
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -93, 51.7),
						Angles = Angle( 0, 0, 2 ),
						Scale = 1
					},
				}
			}
		}
	},
}