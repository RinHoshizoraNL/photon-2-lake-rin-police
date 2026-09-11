if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2021 Dodge Durango LRPD"
VEHICLE.Vehicle		= "21durango_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Police Dept."
VEHICLE.Author		= "Rin Hoshizora"

VEHICLE.SubMaterials = {
	[17] = "photon/common/blank"
}

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Patrol",
				Props = {
					{
						Name = "@durango_hull",
						Model = "models/schmal/dodur21_hull.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/lrpd2/durango/patrol",
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
						Position = Vector( 29, 8, 83.8),
						Angles = Angle( -13, 235, 0.5 ),
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
						Position = Vector( -29, 8, 83.8),
						Angles = Angle( -13, -55, -0.5 ),
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
						Position = Vector( 23.6, -90, 87.2),
						Angles = Angle( -4, 140, 1 ),
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
						Position = Vector( -23.6, -90, 87.2),
						Angles = Angle( -4, 40, -1 ),
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
						Position = Vector( 0, -10, 86.3),
						Angles = Angle( 2.5, 90, 0 ),
						Scale = 1,
						BodyGroups = {
							["feet"] = 1,
						},
						Bones = {
							["valor_51_feet_left"] =	{ Vector( 0, 0, -1.1 ), Angle( 0, 0, 0 ), 1 },
							["valor_51_feet_right"] =	{ Vector( 0, 0, -1.1 ), Angle( 0, 0, 0 ), 1 },
							["valor_51_mount_left"] =	{ Vector( 0.6, 0, 0 ), Angle( 0, 0, 0 ), 1 },
							["valor_51_mount_right"] =	{ Vector( -0.6, 0, 0 ), Angle( 0, 0, 0 ), 1 },
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
						Position = Vector( 17, -12, 85.2 ),
						Angles = Angle( -2.5, -90, 0 ),
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
				Option = "Alloys",
				Props = {
					{
						Model = "models/schmal/dodur21_wheels.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Bones = {
							["wheel_fl"] = { 
								Position = Vector( -2.7, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_fl" }
							},
							["wheel_fr"] = { 
								Position = Vector( -2.7, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_fr" }
							},
							["wheel_rl"] = { 
								Position = Vector( -2.7, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_rl" }
							},
							["wheel_rr"] = { 
								Position = Vector( -2.7, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_rr" }
								-- Follow = { Bone = "door_fl" }
							},
						},
						AutoWheels = { Offset = Vector( -2.7, 0, 0 ) },
						SubMaterials = {
							[0] = "sentry/21durango/black_chrome"
						}
					}
				},
				SubMaterials = {
					[20] = "photon/common/blank"
				}
			},
			{
				Option = "Steelies",
				SubMaterials = {
					[20] = "sentry/21durango/black_chrome"
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
						Model = "models/schmal/setina_pushbar_durango.mdl",
						Position = Vector( 0, 118, 32 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1,
						BodyGroups = {
							["Fender_wrap"] = 1,
						},
					}
				},
				Components = {
					{
						Name = "@siren",
						Component = "siren_prototype",
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 11.5, 125.5, 35.7 ),
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
						Position = Vector( -11.5, 125.5, 35.7 ),
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
						Position = Vector( 11.5, 123.1, 47.3 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						Phase = 180,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( -11.5, 123.1, 47.3 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( 20.6, 123.5, 34 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( -20.6, 123.5, 34 ),
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
						Position = Vector( 38.2, -84, 65.1 ),
						Angles = Angle( 0, -87, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( -38.2, -84, 65.1 ),
						Angles = Angle( 0, 93, 0 ),
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
		Category = "Rear Interior Lighting",
		Options = {
            {
				Option = "FS MB1",
				Components = {
					{
						Name = "Federal Signal MB1",
						Component = "photon_fedsig_mb1",
						Position = Vector( 0, -110, 74 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_xstream_single_lrpd",
						Position = Vector( -24.3, -110, 75.2  ),
						Angles = Angle( 0, 260, 4 ),
						Scale = 1,
						BodyGroups = {
							["shroud"] = 1,
							["mount"] = 2,
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_xstream_single_lrpd",
						Position = Vector( 24.3, -110, 75.2  ),
						Angles = Angle( 0, 280, -2 ),
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
		Category = "Spotlights",
		Options = {
			{
				Option = "Whelen PAR46",
				Components = {
					{
						Component = "photon_whe_par46_left",
						Position = Vector( -37, 35, 64 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.1,
					},
					{
						Component = "photon_whe_par46_right",
						Position = Vector( 37, 35, 64 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.1,
					},
				}
			}
		}
	},
	{
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				Components = {
					{
						Name = "Federal Signal MB1 Controller",
						Component = "photon_fedsig_mb1_controller",
						Position = Vector( 0, 16, 40 ),
						Angles = Angle( 0, 0, 25 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_pan_toughbookcf30",
						Position = Vector( 7, 15.5, 50 ),
						Angles = Angle( 0, 31, 0 ),
						Scale = 1,
						Options = {
							Pole = 2,
							Base = -60,
							Screen = "rin/lrpd2/props/laptop_screen_lrpd",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					}
				},
				Props = {
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 10, 22, 77 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 3.5, 13),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector(1.05, 1, 1.1),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( -0.2, 11.3, 37 ),
						Angles = Angle( -65, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( 1.5, 29, 62.2 ),
						Angles = Angle( 4, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 7.5, 35.6 ),
						Angles = Angle( 0, 0, -65 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -129, 49.7 ),
						Angles = Angle( -25, 270, 0 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 116, 29 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 116.7, 29 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( -22, -75, 84.6),
						Angles = Angle( -0.5, 90, -3.5 ),
						Scale = 1
					},
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 22, -75, 84.6),
						Angles = Angle( -0.5, 90, 3.5 ),
						Scale = 1
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( -4.2, -40, 85.2),
						Angles = Angle( -1, 0, -1 ),
						Scale = 1
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 29.5, -11, 86.9),
						Angles = Angle( 0, 0, -2 ),
						Scale = 1
					},
				}
			}
		}
	},
}