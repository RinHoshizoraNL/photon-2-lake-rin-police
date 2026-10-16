if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2012 Dodge Charger LRPD"
VEHICLE.Vehicle		= "12charger_fm7_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Police Dept."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

local WHEEL_X		= -1

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Patrol",
				SubMaterials = {
					{ Id = 23, Material = "rin/lrpd2/charger12/patrol" }
				},
				Props = {
				    {
						Model = "models/schmal/chevcap13_pushbar.mdl",
						Position = Vector( 0, 127, 26 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = Vector( 1, 1.1, 1.1 ),
						BodyGroups = {
							["wrap"] = 0,
						},
					},
				},
			},
			{
				Option = "Expressway Patrol",
				SubMaterials = {
					{ Id = 23, Material = "rin/lrpd2/charger12/traffic" }
				},
				Props = {
				    {
						Model = "models/schmal/chevcap13_pushbar.mdl",
						Position = Vector( 0, 127, 26 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = Vector( 1, 1.1, 1.1 ),
						BodyGroups = {
							["wrap"] = 1,
						},
					},
				},
			},
			{
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 23, Material = "rin/lrpd2/charger12/supervisor" }
				},
				Props = {
				    {
						Model = "models/schmal/chevcap13_pushbar.mdl",
						Position = Vector( 0, 127, 26 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = Vector( 1, 1.1, 1.1 ),
						BodyGroups = {
							["wrap"] = 0,
						},
					},
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
						Component = "photon_fedsig_valor_44_lrpd",
						Position = Vector( 0, -5, 75.5 ),
						Angles = Angle( 1, 90, 0 ),
						Scale = 1,
						BodyGroups = {
							["feet"] = 1,
						},
						Bones = {
							["valor_44_feet_left"] =	{ Vector( 0, 0, -1.4 ), Angle( 0, 0, 0 ), 1 },
							["valor_44_feet_right"] =	{ Vector( 0, 0, -1.4 ), Angle( 0, 0, 0 ), 1 },
							["valor_44_mount_left"] =	{ Vector( 1, 0, 0 ), Angle( 0, 0, 0 ), 1 },
							["valor_44_mount_right"] =	{ Vector( -1, 0, 0 ), Angle( 0, 0, 0 ), 1 },
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {
									NO_DVI_F = "ON",
									NO_DVI_R = "ON",
								}
							}
						},
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
						Position = Vector( 17, -8, 74.3 ),
						Angles = Angle( 0, -90, 0 ),
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
						Position = Vector( 11.5, 127, 23.5 ),
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
						Position = Vector( -11.5, 127, 23.5 ),
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
						Position = Vector( -9, 127.5, 30 ),
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
							},
						}
					},
					{
						Component = "oss_laf150_lrpd",
						Position = Vector( 9, 127.5, 30  ),
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
							},
						}
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( 17.5, 126.5, 30 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
							},
						}
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( -17.5, 126.5, 30 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
							},
						}
					},
				}
			},
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
						Position = Vector( 0, -71, 58.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_xstream_single_lrpd",
						Position = Vector( -14, -72, 58 ),
						Angles = Angle( 0, 270, 180 ),
						Scale = 1,
						BodyGroups = {
							["shroud"] = 1,
							["mount"] = 1,
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_xstream_single_lrpd",
						Position = Vector( 14, -72, 58 ),
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
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
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
						Position = Vector( 29, -100, 57.6),
						Angles = Angle( 0, 235, -7 ),
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
						Position = Vector( -29, -100, 57.6),
						Angles = Angle( 0, -55, 7 ),
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
		Category = "Spotlights",
		Options = {
			{
				Option = "Pillar Spotlights",
				Components = {
					{
						Component = "photon_whe_par46_left",
						Position = Vector( -34.5, 32, 58 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_whe_par46_right",
						Position = Vector( 34.5, 32, 58 ),
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
					{ BodyGroup = "spotlight_l", Value = 1 },
					{ BodyGroup = "spotlight_r", Value = 1 },
					{ BodyGroup = "lightbar", Value = 0 },
					{ BodyGroup = "vertex", Value = 1 },
					{ BodyGroup = "interiorlights", Value = 1 },
					{ BodyGroup = "pushbar", Value = 1 },
					{ BodyGroup = "dodgebanner", Value = 1 },
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
						Position = Vector( -0.2, 11.3, 36 ),
						Angles = Angle( -71, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 14.1, 37 ),
						Angles = Angle( -71, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 8.7, 35.5 ),
						Angles = Angle( 0, 0, -71 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 9, 24.3, 67.9 ),
						Angles = Angle( 8, 264.8, -2 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 0, -54, 68 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/anmbrotherpocketjet633/ANMBrotherPocketJet633.mdl",
						Position = Vector( 0.5, 2, 38 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.7,
						SubMaterials = {
							[0] = "rin/lrpd2/props/printer",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/anmkustomsignalsgoldeneagleii/ANMGoldenEagleRadarFull.mdl",
						Position = Vector( 0.5, 32, 55.6 ),
						Angles = Angle( -5, 270, -9.2 ),
						Scale = 0.7,
						SubMaterials = {
							[0] = "rin/lrpd2/props/radar",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/anmradio/ANMWhelenMic.mdl",
						Position = Vector( -6.2, 27.5, 45 ),
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
						Position = Vector( 0, -0.5, 10 ),
						Angles = Angle( 0, 0, -4 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 5, 4.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -30, 73.7),
						Angles = Angle( 0, 0, 4 ),
						Scale = 1
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 25.7, -5.6, 76),
						Angles = Angle( 0, 0, -1 ),
						Scale = 1
					},
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 0, -103, 55.8),
						Angles = Angle( -4.2, 90, 0 ),
						Scale = 1,
						Color = Color(255, 255, 255)
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -121.4, 29.4 ),
						Angles = Angle( -6, -90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 122.2, 20.4 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 123, 20.4 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
				}
			}
		}
	},
	{
		Category = "Wheels",
		Options = {
			{
				Option = "Hub Caps",
				Bones = {
					{ Bone = "fl_wheel", Scale = 0, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
					{ Bone = "fr_wheel", Scale = 0, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
					{ Bone = "bl_wheel", Scale = 0, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
					{ Bone = "br_wheel", Scale = 0, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
				},
				Props = {
					{
						Model = "models/lilranbay/vehicle_wheels/charger12_wheels.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						BodyGroups = {
							["wheels"] = 1,
						},
						Bones = {
							["bone_wheel_front_left"] = { 
								Position = Vector( -2.5, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_fl" }
							},
							["bone_wheel_front_right"] = { 
								Position = Vector( -2.5, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_fr" }
							},
							["bone_wheel_rear_left"] = { 
								Position = Vector( -2.5, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_rl" }
							},
							["bone_wheel_rear_right"] = { 
								Position = Vector( -2.5, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_rr" }
							}
						}
					}
				}
			},
		}
	}
}