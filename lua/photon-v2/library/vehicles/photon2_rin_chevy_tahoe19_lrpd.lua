if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2019 Chevrolet Tahoe LRPD"
VEHICLE.Vehicle		= "19tahoe_sgm"
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
					{ Id = 21, Material = "rin/lrpd2/tahoe19/patrol" }
				},
			},
			{
				Option = "K-9 Unit Miku",
				SubMaterials = {
					{ Id = 21, Material = "rin/lrpd2/tahoe19/k9" }
				},
			},
			{
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 21, Material = "rin/lrpd2/tahoe19/supervisor" }
				},
			},
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
						Position = Vector( 28, 10, 88.8),
						Angles = Angle( -8, 235, -1.5 ),
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
						Position = Vector( -28, 10, 88.8),
						Angles = Angle( -8, -55, 1.5 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/lrpd2/props/alpr"
						},
						BodyGroups = {
							["wire"] = 0,
							["lens cover"] = 1,
						},
					},
					{
						Model = "models/anmgenetacautovusharpx/ANMGenetacAutoVuSharpX.mdl",
						Position = Vector( 24.8, -92.5, 89.5),
						Angles = Angle( -5, 140, 1 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/lrpd2/props/alpr"
						},
						BodyGroups = {
							["wire"] = 0,
							["lens cover"] = 1,
						},
					},
					{
						Model = "models/anmgenetacautovusharpx/ANMGenetacAutoVuSharpX.mdl",
						Position = Vector( -24.8, -92.5, 89.5),
						Angles = Angle( -5, 40, -1 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/lrpd2/props/alpr"
						},
						BodyGroups = {
							["wire"] = 2,
							["lens cover"] = 1,
						},
					},
				}
			},
		}
	},
	{
		Category = "Trim Package",
		Options = {
			{
				Option = "SSV",
				BodyGroups = {
					{ BodyGroup = "mirrors", Value = 1 },
					{ BodyGroup = "grille", Value = 0 },
					{ BodyGroup = "wheels", Value = 1 },
				},
			},
			{
				Option = "PPV",
				BodyGroups = {
					{ BodyGroup = "mirrors", Value = 1 },
					{ BodyGroup = "grille", Value = 0 },
					{ BodyGroup = "wheels", Value = 0 },
				},
			},
			{
				Option = "Civilian A",
				BodyGroups = {
					{ BodyGroup = "mirrors", Value = 2 },
					{ BodyGroup = "grille", Value = 1 },
					{ BodyGroup = "wheels", Value = 2 },
				},
			},
			{
				Option = "Civilian B",
				BodyGroups = {
					{ BodyGroup = "mirrors", Value = 2 },
					{ BodyGroup = "grille", Value = 1 },
					{ BodyGroup = "wheels", Value = 5 },
				},
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
			{
				Option = "Federal Signal Valor",
				Components = {
					{
						Component = "photon_fedsig_valor_51_lrpd",
						Position = Vector( 0, -6, 89.7 ),
						Angles = Angle( 1, 90, 0 ),
						Scale = 1,
						BodyGroups = {
							["feet"] = 1,
						},
						Bones = {
							["valor_51_feet_left"] =	{ Vector( 0, 0, -1 ), Angle( 0, 0, 0 ), 1 },
							["valor_51_feet_right"] =	{ Vector( 0, 0, -1 ), Angle( 0, 0, 0 ), 1 },
							["valor_51_mount_left"] =	{ Vector( -0.6, 0, 0 ), Angle( 0, 0, 0 ), 1 },
							["valor_51_mount_right"] =	{ Vector( 0.6, 0, 0 ), Angle( 0, 0, 0 ), 1 },
						}
					},
				}
			}
		}
	},
	{
		Category = "Lightbar Equipment",
		Options = {
			{
				Option = "Federal Signal Opticom",
				Components = {
					{
						Component = "photon_fedsig_opticom795",
						Position = Vector( 17, -9, 88.5 ),
						Angles = Angle( -1, -90, 0 ),
						Scale = 0.15
					}
				}
			}
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
						Position = Vector( 17, 126.5, 32 ),
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
						Position = Vector( -17, 126.5, 32 ),
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
						Position = Vector( -14, 126, 37.95 ),
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
						Position = Vector( 14, 126, 37.95 ),
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
						Position = Vector( 24.4, 126, 37.95 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( -24.4, 126, 37.95 ),
						Angles = Angle( 0, 90, 0 ),
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
		Category = "Front Bumper",
		Options = {
			{
				Option = "Front Bumper",
				Components = {
				    {
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( 36, 112, 21.8 ),
						Angles = Angle( 0, -30, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( -36, 112, 21.8 ),
						Angles = Angle( 0, 30, 0 ),
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
		Category = "Rear Quarter Windows",
		Options = {
			{
				Option = "Rear Quarter Windows",
				Components = {
				    {
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( 40, -95, 63 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( -40, -95, 63 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			},
		}
	},
	{
		Category = "Rear Interior Lighting",
		Options = {
            {
				Option = "FS MB1",
				Components = {
					{
						Name = "Federal Signal MB1",
						Component = "photon_fedsig_mb1",
						Position = Vector( 0, -110, 75.65 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( 22.2, -110, 77.5 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( -22.2, -110, 77.5 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
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
						Component = "photon_whe_par46_left",
						Position = Vector( -37, 40.5, 68 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_whe_par46_right",
						Position = Vector( 37, 40.5, 68 ),
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
					{ BodyGroup = "pushbar", Value = 1 },
					{ BodyGroup = "windowbars", Value = 1 },
					{ BodyGroup = "partition", Value = 0 },
					{ BodyGroup = "lightbar", Value = 1 },
					{ BodyGroup = "console", Value = 1 },
					{ BodyGroup = "ions", Value = 1 },
					{ BodyGroup = "dominator", Value = 1 },
					{ BodyGroup = "keychain", Value = 0 },
					{ BodyGroup = "partition", Value = 1 },
				},
				Components = {
					{
						Name = "Federal Signal MB1 Controller",
						Component = "photon_fedsig_mb1_controller",
						Position = Vector( 0, 12.1, 39 ),
						Angles = Angle( 0, 0, 21 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
				Props = {
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 7, 28, 80.5 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/anmkustomsignalsgoldeneagleii/ANMGoldenEagleRadarFull.mdl",
						Position = Vector( 0.5, 44, 65.9 ),
						Angles = Angle( 1, 270, 0 ),
						Scale = 0.7,
						SubMaterials = {
							[0] = "rin/lrpd2/props/radar",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 29, -6.5, 90.2),
						Angles = Angle( 0, 0, -1 ),
						Scale = 1
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( -4, -35, 88.4),
						Angles = Angle( -1, 0, 0 ),
						Scale = 1
					},
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( -21.2, -70, 87.5),
						Angles = Angle( -1, 90, -3.5 ),
						Scale = 1
					},
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 21.2, -70, 87.5),
						Angles = Angle( -1, 90, 3.5 ),
						Scale = 1
					},
					{
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 0, 8, 14),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( -0.2, 18.05, 40.7 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 20.8, 42 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 15.35, 40.1 ),
						Angles = Angle( 0, 0, -69 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necmdt.mdl",
						Position = Vector( 0, 27.7, 49 ),
						Angles = Angle( -5, 270, 0 ),
						Scale = 0.8,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -123.1, 47 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 123.5, 22.1 ),
						Angles = Angle( 4, 90, 0 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
				}
			}
		}
	},
}