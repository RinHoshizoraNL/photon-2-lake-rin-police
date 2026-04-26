if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2016 Ford Explorer LRPD"
VEHICLE.Vehicle		= "sm16fpiu"
VEHICLE.Category 	= "Photon 2: Lake Rin Police Dept."
VEHICLE.Author		= "Rin Hoshizora"

VEHICLE.SubMaterials = {
	[5] = "photon/common/blank",
	[28] = "photon/common/blank",
}

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Patrol",
				SubMaterials = {
					{ Id = 15, Material = "rin/lrpd2/explorer16/patrol" }
				},
                BodyGroups = {
					{ BodyGroup = "pushbar", Value = 1 },
                    { BodyGroup = "rear seats", Value = 0 },
				},
                Props = {
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( -18.7, -75, 84.2),
						Angles = Angle( -4, 90, -2 ),
						Scale = 1,
						Color = Color(255, 255, 255)
					},
                    {
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 18.7, -75, 84.2),
						Angles = Angle( -4, 90, 2 ),
						Scale = 1,
						Color = Color(255, 255, 255)
					},
                    {
						Model = "models/schmal/sm_fpiu16_glass.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, -90, 0 ),
						SubMaterials = {
							[1] = "schmal/liveries/sm_fpiu16/lvmpd_modulate",
							[2] = "rin/lrpd2/explorer16/lrpd_glass",
						}
					}
				}
			},
			{
				Option = "K-9 Unit Bocchi",
				SubMaterials = {
					{ Id = 15, Material = "rin/lrpd2/explorer16/k9" },
				},
                BodyGroups = {
					{ BodyGroup = "pushbar", Value = 1 },
                    { BodyGroup = "rear seats", Value = 1 },
				},
                Props = {
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( -18.7, -75, 84.2),
						Angles = Angle( -4, 90, -2 ),
						Scale = 1,
						Color = Color(255, 255, 255)
					},
                    {
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 18.7, -75, 84.2),
						Angles = Angle( -4, 90, 2 ),
						Scale = 1,
						Color = Color(255, 255, 255)
					},
                    {
						Model = "models/schmal/sm_fpiu16_glass.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, -90, 0 ),
						SubMaterials = {
							[1] = "schmal/liveries/sm_fpiu16/lvmpd_modulate",
							[2] = "rin/lrpd2/explorer16/lrpd_glass_k9",
						}
					}
				}
			},
			{
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 15, Material = "rin/lrpd2/explorer16/patrol" }
				},
                BodyGroups = {
					{ BodyGroup = "pushbar", Value = 1 },
                    { BodyGroup = "rear seats", Value = 0 },
				},
                Props = {
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( -18.7, -75, 84.2),
						Angles = Angle( -4, 90, -2 ),
						Scale = 1,
						Color = Color(255, 255, 255)
					},
                    {
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 18.7, -75, 84.2),
						Angles = Angle( -4, 90, 2 ),
						Scale = 1,
						Color = Color(255, 255, 255)
					},
                    {
						Model = "models/schmal/sm_fpiu16_glass.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, -90, 0 ),
						SubMaterials = {
							[1] = "schmal/liveries/sm_fpiu16/lvmpd_modulate",
							[2] = "rin/lrpd2/explorer16/lrpd_glass_supervisor",
						}
					}
				}
			},
            {
				Option = "Special Operations",
				SubMaterials = {
					{ Id = 15, Material = "rin/lrpd2/explorer16/special_ops" }
				},
                BodyGroups = {
					{ BodyGroup = "pushbar", Value = 3 },
                    { BodyGroup = "rear seats", Value = 0 },
				},
                Props = {
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( -18.7, -75, 84.2),
						Angles = Angle( -4, 90, -2 ),
						Scale = 1,
						Color = Color(0, 0, 0)
					},
                    {
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 18.7, -75, 84.2),
						Angles = Angle( -4, 90, 2 ),
						Scale = 1,
						Color = Color(0, 0, 0)
					},
                    {
						Model = "models/schmal/sm_fpiu16_glass.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, -90, 0 ),
						SubMaterials = {
							[1] = "schmal/liveries/sm_fpiu16/lvmpd_modulate",
							[2] = "rin/lrpd2/explorer16/lrpd_glass_spl",
						}
					}
				}
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
						Position = Vector( 28.4, 13.5, 84.9),
						Angles = Angle( -8, 235, 0 ),
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
						Position = Vector( -28.4, 13.5, 84.9),
						Angles = Angle( -8, -55, 0 ),
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
						Position = Vector( 25.7, -82, 86.65),
						Angles = Angle( -6, 140, 0 ),
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
						Position = Vector( -25.7, -82, 86.65),
						Angles = Angle( -6, 40, 0 ),
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
		Category = "Lightbar",
		Options = {
			{
				Option = "Federal Signal Valor",
				Components = {
					{
						Component = "photon_fedsig_valor_51_lrpd",
						Position = Vector( 0, -8.5, 87.2 ),
						Angles = Angle( 1.5, 90, 0 ),
						Scale = 1,
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
						Position = Vector( 17, -11, 85.9 ),
						Angles = Angle( -1.5, -90, 0 ),
						Scale = 0.15
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
					{ BodyGroup = "wheels", Value = 1 },
				},
			},
			{
				Option = "Steelies",
				BodyGroups = {
					{ BodyGroup = "wheels", Value = 0 },
				},
			},
		}
	},
    {
		Category = "Pushbar Bullshit",
		Options = {
			{
				Option = "Pushbar",
				Components = {
					{
						Name = "@siren",
						Component = "siren_prototype",
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 14, 124, 30.2 ),
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
						Position = Vector( -14, 124, 30.2 ),
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
						Position = Vector( -12, 124, 37.35 ),
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
						Component = "oss_laf150_lrpd",
						Position = Vector( 12, 124, 37.35 ),
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
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( 21.7, 123, 36 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( -21.7, 123, 36 ),
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
		Category = "Rear Quarter Windows",
		Options = {
			{
				Option = "Rear Quarter Windows",
				Components = {
				    {
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( 38.5, -87, 65 ),
						Angles = Angle( 1, -95, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( -38.5, -87, 65 ),
						Angles = Angle( -1, 95, 0 ),
						Scale = 1,
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
		Category = "Rear Lighting",
		Options = {
            {
				Option = "FS MB1",
				Components = {
					{
						Name = "Federal Signal MB1",
						Component = "photon_fedsig_mb1",
						Position = Vector( 0, -102, 72.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				    {
						Component = "photon_sos_ford96t_lrpd",
						Position = Vector( 0, -104, 78.7),
						Angles = Angle( 0, -90, 0 ),
						Bones = {
							["ford_96t_left"] = { Vector( 0, -17, 0 ), Angle( -1, -11.5, 0 ) },
							["ford_96t_right"] = { Vector( 0, 17, 0 ), Angle( 1, 11.5, 0 ) },
						}
					},
				},
			},

		}
	},
	{
		Category = "Spotlights",
		Options = {
			{
				Option = "PAR46 LED",
				Components = {
					{
						Component = "photon_whe_par46_left",
						Position = Vector( -39, 41, 62 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.1,
					},
					{
						Component = "photon_whe_par46_right",
						Position = Vector( 39, 41, 62 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.1,
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
					{ BodyGroup = "bobblehead", Value = 6 },
				},
                Components = {
					{
						Name = "Federal Signal MB1 Controller",
						Component = "photon_fedsig_mb1_controller",
						Position = Vector( 0, 11, 35 ),
						Angles = Angle( 0, 0, 32 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_pan_toughbookcf30",
						Position = Vector( 7.8, 21.5, 48 ),
						Angles = Angle( 0, 31, 0 ),
						Scale = 0.9,
						Options = {
							Pole = 0,
							Base = -60,
							Screen = "rin/lrpd2/props/laptop_screen_lrpd",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -120.5, 50 ),
						Angles = Angle( -18, 270, 00 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 118.8, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.06,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -45, 85.6),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1
					},
                    {
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 27.5, -5.5, 87.8),
						Angles = Angle( 0, 0, -2 ),
						Scale = 1
					},
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 0, -80, 80.5),
						Angles = Angle( -3, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( 0, 15, 36.5 ),
						Angles = Angle( -58, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 40, 58.85 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 17.5, 39 ),
						Angles = Angle( 0, 0, -58 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 8, 30, 75.2 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			}
		}
	},
}