
if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2020 Ford Explorer LRPD"
VEHICLE.Vehicle		= "20fpiu_new_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Police Dept."
VEHICLE.Author		= "Rin Hoshizora"


VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Patrol",
				SubMaterials = {
					{ Id = 20, Material = "rin/lrpd2/explorer20/patrol" }
				},
				Props = {
				    {
						Model = "models/schmal/sgm_fpiu20_win.mdl",
						Position = Vector(),
						Angles = Angle(0, 0, 0),
						SubMaterials = {
							[1] = "rin/lrpd2/explorer20/lrpd_glass"
						}
					}
				},
			},
			{
				Option = "K-9 Unit Riko",
				SubMaterials = {
					{ Id = 20, Material = "rin/lrpd2/explorer20/k9" }
				},
				Props = {
				    {
						Model = "models/schmal/sgm_fpiu20_win.mdl",
						Position = Vector(),
						Angles = Angle(0, 0, 0),
						SubMaterials = {
							[1] = "rin/lrpd2/explorer20/lrpd_glass_k9"
						}
					}
				},
			},
			{
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 20, Material = "rin/lrpd2/explorer20/supervisor" }
				},
				Props = {
				    {
						Model = "models/schmal/sgm_fpiu20_win.mdl",
						Position = Vector(),
						Angles = Angle(0, 0, 0),
						SubMaterials = {
							[1] = "rin/lrpd2/explorer20/lrpd_glass_supervisor"
						}
					}
				},
			},
			{
				Option = "Little Tokyo Community Officer",
				SubMaterials = {
					{ Id = 20, Material = "rin/lrpd2/explorer20/patrol" }
				},
				Props = {
				    {
						Model = "models/schmal/sgm_fpiu20_win.mdl",
						Position = Vector(),
						Angles = Angle(0, 0, 0),
						SubMaterials = {
							[1] = "rin/lrpd2/explorer20/lrpd_glass_little_tokyo"
						}
					}
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
						Position = Vector( 29, 8, 85.9),
						Angles = Angle( -10, 235, 0 ),
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
						Position = Vector( -29, 8, 85.9),
						Angles = Angle( -10, -55, 0 ),
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
						Position = Vector( 29, -92.5, 85.3),
						Angles = Angle( -8, 140, 0 ),
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
						Position = Vector( -29, -92.5, 85.3),
						Angles = Angle( -8, 40, 0 ),
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
		Category = "Wheels",
		Options = {
			{
				Option = "Hubcaps",
				BodyGroups = {
					{ BodyGroup = "hubcaps", Value = 0 },
				},
			},
			{
				Option = "Steelies",
				BodyGroups = {
					{ BodyGroup = "hubcaps", Value = 1 },
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
						Position = Vector( 0, -11, 88.5 ),
						Angles = Angle( 2, 90, 0 ),
						Scale = 1.04,
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
						Position = Vector( 19, -14, 87.3 ),
						Angles = Angle( -2, -90, 0 ),
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
				Option = "Patlite LP5",  
				Components = {
					{
						Name = "@siren",
						Component = "siren_prototype",
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 12, 125.2, 37.5 ),
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
						Position = Vector( -12, 125.2, 37.5 ),
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
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( 11, 121.2, 50.2 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						Phase = 180,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( -11, 121.2, 50.2 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( 21.4, 124.5, 37.95 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( -21.4, 124.5, 37.95 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
				},
			},

		}
	},
	{
		Category = "Corner Hide a Ways",
		Options = {
            {
				Option = "Corner Hide a Ways",  
				Components = {
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( 41.6, 91, 51.3 ),
						Angles = Angle( -2, -74, 5 ),
						Scale = 0.7,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
                        RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( -41.6, 91, 51.3 ),
						Angles = Angle( 2, 74, 5 ),
						Scale = 0.7,
						Phase = 180,
                        SubMaterials = {
							[5] = "sentry/shared/glass"
						},
                        RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
			},
        }
	},
	{
		Category = "Standard",
		Options = {
			{
				Option = "Standard Lighting",
				Components = {
					{
						Component = "photon_standard_sgmfpiu20",
						States = { "B", "B" },
						Inputs = {
							["Emergency.Marker"] = { ON = {} }
						},
						Features = {
							ParkMode = { "Emergency.Warning", "MODE2" },
						}
					}
				}
			}
		}
	},
	{
		Category = "Spotlights",
		Options = {
			{
				Option = "Spotlights",
				Components = {
					{
						Component = "photon_whe_par46_left",
						Position = Vector( -39.4, 37, 63 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.1,
					},
					{
						Component = "photon_whe_par46_right",
						Position = Vector( 39.4, 37, 63 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.1,
					}
				},
			}
		}
	},
	{
		Category = "Rear Quarter Windows",
		Options = {
			{
				Option = "Rear Quarter Windows",
				Components = {
				    {
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( 38, -95, 64.5 ),
						Angles = Angle( -1, -98, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( -38, -95, 64.5 ),
						Angles = Angle( 1, 98, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			},
		}
	},
	{
		Category = "Rear Lighting",
		Options = {
            {
				Option = "FS MB1",
				Components = {
					{
						Name = "Federal Signal MB1",
						Component = "photon_fedsig_mb1",
						Position = Vector( 0, -107, 73.7 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				    {
						Component = "photon_sos_ford96t_lrpd",
						Position = Vector( 0, -110.4, 78.1 ),
						Angles = Angle( 0, -90, 0 ),
						Bones = {
							["ford_96t_left"] = { Vector( 0, -20.9, 0 ), Angle( 0, -13.635, 0 ) },
							["ford_96t_right"] = { Vector( 0, 20.9, 0 ), Angle( 0, 13.635, 0 ) },
						}
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
					{ BodyGroup = "foglights", Value = 1 },
					{ BodyGroup = "console", Value = 1 },
					{ BodyGroup = "laptop", Value = 1 },
					{ BodyGroup = "pushbar", Value = 1 },
				},
				Components = {
					{
						Name = "Federal Signal MB1 Controller",
						Component = "photon_fedsig_mb1_controller",
						Position = Vector( 0, 10.6, 39 ),
						Angles = Angle( 0, 0, 21 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
				SubMaterials = {
					{ Id = 3, Material = "photon/common/blank" },
					-- { Id = 1, Material = "photon/common/blank" },
				},
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -126.67, 49 ),
						Angles = Angle( -12, 270, 00 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 120, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 120.7, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 29, -7.7, 88.9),
						Angles = Angle( 0, 0, -1.5 ),
						Scale = 1
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -50, 85.8),
						Angles = Angle( 0, 0, 1 ),
						Scale = 1
					},
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 0, 8.5, 84.3),
						Angles = Angle( 10.5, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 0, 6.5, 14),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( -0.2, 16.55, 40.7 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 19.3, 42 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 13.85, 40.1 ),
						Angles = Angle( 0, 0, -69 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necmdt.mdl",
						Position = Vector( 0, 26.5, 53 ),
						Angles = Angle( -5, 270, 0 ),
						Scale = 0.8,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 10.5, 20, 79 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/anmkustomsignalsgoldeneagleii/ANMGoldenEagleRadarFull.mdl",
						Position = Vector( 0.5, 38, 62.8 ),
						Angles = Angle( -1, 270, 0 ),
						Scale = 0.8,
						SubMaterials = {
							[0] = "rin/lrpd2/props/radar",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			}
		}
	},
}
