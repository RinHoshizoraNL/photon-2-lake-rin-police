if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2012 Chevrolet Impala LRPD"
VEHICLE.Vehicle		= "sm_chev_impalappv"
VEHICLE.Category 	= "Photon 2: Lake Rin Police Dept."
VEHICLE.Author		= "Rin Hoshizora"

VEHICLE.SubMaterials = {
	[0] = "sentry/13caprice/black",
	[2] = "sentry/13caprice/black",
	[3] = "sentry/shared/env_cubemap_model",
    [4] = "sentry/13caprice/black",
    [8] = "sentry/13caprice/int_chrome",
    [17] = "sentry/shared/glass",
    [20] = "sentry/13caprice/rim"
}

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Patrol",
				SubMaterials = {
					{ Id = 19, Material = "rin/lrpd2/impala12/patrol" }
				}
			},
            {
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 19, Material = "rin/lrpd2/impala12/supervisor" }
				}
			}
        }
	},
	{
		Category = "Pushbar",
		Options = {
			{
				Option = "Pushbar",
                Props = {
				    {
						Model = "models/supermighty/setina/setina_impala_pushbar.mdl",
						Position = Vector( 0, 124, 26.2 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
					}
				},
				Components = {
					{
						Name = "@siren",
						Component = "siren_prototype",
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 11.5, 128, 26.5 ),
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
						Position = Vector( -11.5, 128, 26.5 ),
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
						Position = Vector( -9, 127, 32.65 ),
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
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
								["MODE2"] = {Light = "SINGLE"},
								["MODE3"] = {Light = "QUAD"},
							},
						}
					},
					{
						Component = "oss_laf150_lrpd",
						Position = Vector( 9, 127, 32.65  ),
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
						Position = Vector( 17.2, 127, 28 ),
						Angles = Angle( 0, 270, 0 ),
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
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( -17.2, 127, 28 ),
						Angles = Angle( 0, 90, 0 ),
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
				}
			}
        }
	},
	{
		Category = "ALPR",
		Options = {
			{
				Option = "None",
			},
			{
				Option = "ALPR",
			    Props = {
					{
						Model = "models/anmgenetacautovusharpx/ANMGenetacAutoVuSharpX.mdl",
						Position = Vector( 28.2, -100, 61.2),
						Angles = Angle( 0.5, 235, -5 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/lrpd2/props/alpr"
						},
						BodyGroups = {
							["wire"] = 2,
							["lens cover"] = 1,
						},
					},
					{
						Model = "models/anmgenetacautovusharpx/ANMGenetacAutoVuSharpX.mdl",
						Position = Vector( -28.2, -100, 61.2),
						Angles = Angle( 0.5, -55, 5 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/lrpd2/props/alpr"
						},
						BodyGroups = {
							["wire"] = 0,
							["lens cover"] = 1,
						},
					},
				}
			},
		}
	},
    {
		Category = "Lightbar",
		Options = {
			{
				Option = "Federal Signal Legend",
				Components = {
					{
						Component = "photon_fedsig_legend_lrpd",
						Position = Vector( 0, -12.5, 79.5 ),
						Angles = Angle( 1.5, 90, 0 ),
						Scale = 0.88,
						SubMaterials = {
						[6] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
				}
			}
		}
	},
	{
		Category = "Rear Deck",
		Options = {
            {
				Option = "FS MB1",
				Components = {
					{
						Name = "Federal Signal MB1",
						Component = "photon_fedsig_mb1",
						Position = Vector( 0, -76.5, 60.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_xstream_single_lrpd",
						Position = Vector( -14, -78, 60 ),
						Angles = Angle( 0, 270, 180 ),
						Scale = 1,
						BodyGroups = {
							["shroud"] = 1,
							["mount"] = 1,
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
						Position = Vector( 14, -78, 60 ),
						Angles = Angle( 0, 270, 180 ),
						Scale = 1,
						Phase = 180,
						BodyGroups = {
							["shroud"] = 1,
							["mount"] = 1,
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
						Position = Vector( -35.5, 35, 58 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_par46_right",
						Position = Vector( 35.5, 35, 58 ),
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
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				Components = {
					{
						Component = "photon_pan_toughbookcf30",
						Position = Vector( 6.5, 20, 43 ),
						Angles = Angle( 0, 31, 0 ),
						Scale = 1,
						Options = {
							Pole = 2,
							Base = -60,
							Screen = "rin/lrpd2/props/laptop_screen_lrpd",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
                    {
						Name = "Federal Signal MB1 Controller",
						Component = "photon_fedsig_mb1_controller",
						Position = Vector( 0, 12, 29 ),
						Angles = Angle( 0, 0, 21 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
                BodyGroups = {
					{ BodyGroup = "Trunk Trim", Value = 1 },
					{ BodyGroup = "Rear Door Trim", Value = 0 }
				},
				Props = {
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 9, 5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
                        RenderGroup = RENDERGROUP_OPAQUE,
					},
                    {
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 0, 8, 4 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
                        RenderGroup = RENDERGROUP_OPAQUE,
					},
                    {
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( 0, 18.1, 30.5 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 20.7, 32 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 15.4, 30 ),
						Angles = Angle( 0, 0, -69 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 7, 24, 69 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 0, -61, 71.4 ),
						Angles = Angle( 8, 90, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/anmkustomsignalsgoldeneagleii/ANMGoldenEagleRadarFull.mdl",
						Position = Vector( 0.5, 45, 52.5 ),
						Angles = Angle( -3, 270, 0 ),
						Scale = 0.7,
						SubMaterials = {
							[0] = "rin/lrpd2/props/radar",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -30, 76.1),
						Angles = Angle( 0, 0, 2.5 ),
						Scale = 1
					},
                    {
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 0, -105, 59),
						Angles = Angle( -3.5, 90, 0 ),
						Scale = 1,
						Color = Color(255, 255, 255)
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -122.2, 32.5 ),
						Angles = Angle( -9, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
                    {
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 124, 23 ),
						Angles = Angle( 2, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 124.7, 22.9 ),
						Angles = Angle( 2, 90, 0 ),
						Scale = 0.98,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
				}
			}
		}
	},
}