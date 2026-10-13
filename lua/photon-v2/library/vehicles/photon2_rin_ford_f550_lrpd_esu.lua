if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2014 Ford F550 LRPD ESU"
VEHICLE.Vehicle		= "f550_rescue_sm"
VEHICLE.Category 	= "Photon 2: Lake Rin Police Dept."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Rescue",
				SubMaterials = {
					{ Id = 2, Material = "rin/lrpd2/f550/esu" }
				},
			},
		}
	},
	{
		Category = "Front Lightbar",
		Options = {
			{
				Option = "Federal Signal Valor",
				Components = {
					{
						Component = "photon_fedsig_valor_51_lrpd",
						Position = Vector( 0, 35, 95.6 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.04,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {
									NO_DVI_F = "ON",
									NO_DVI_R = "ON",
								}
							}
						}
					},
				}
			}
		}
	},
	{
		Category = "Rear Lightbar",
		Options = {
			{
				Option = "Whelen Freedom Mini",
				Components = {
					{
						Component = "photon_whelen_freedommini_lrpd",
						Position = Vector( 0, -155.5, 109.4 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Inputs = {
							["Emergency.SceneForward"] = {
								["ON"] = {}
							},
						}
					},
				}
			}
		}
	},
	{
		Category = "Left Lights",
		Options = {
			{
				Option = "Whelen 900 LED",
				Components = {
					{
						Component = "creeper_whelen_900_led_lrpd",
						Position = Vector( -55.5, -42.5, 94 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
					},
					{
						Component = "creeper_whelen_900_led_lrpd",
						Position = Vector( -55.5, -144, 94 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Phase = 180,
					},
				}
			}
		}
	},
	{
		Category = "Right Lights",
		Options = {
			{
				Option = "Whelen 900 LED",
				Components = {
					{
						Component = "creeper_whelen_900_led_lrpd",
						Position = Vector( 55.5, -42.5, 94 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1,
						Phase = 180,
					},
					{
						Component = "creeper_whelen_900_led_lrpd",
						Position = Vector( 55.5, -144, 94 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1,
					},
				}
			}
		}
	},
	{
		Category = "Rear Lights",
		Options = {
			{
				Option = "Whelen 900 LED",
				Components = {
					{
						Component = "creeper_whelen_900_led_lrpd",
						Position = Vector( -39, -167.5, 80 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
					},
					{
						Component = "creeper_whelen_900_led_lrpd",
						Position = Vector( 39, -167.5, 80 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						Phase = 180,
					},
					{
						Name = "Federal Signal MB1",
						Component = "photon_fedsig_mb1",
						Position = Vector( 0, -169, 97 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
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
						Component = "photon_par46_left",
						Position = Vector( -39.5, 76, 74 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_par46_right",
						Position = Vector( 39.5, 76, 74 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Inputs = {
							-- Clear the default illumination mode
							["Emergency.SceneForward"] = { ["ON"] = {} },
						}
					}
				}
				
			},
		}
	},
	{
		Category = "Pushbar Equipment",
		Options = {
			{
				Option = "Pushbar Equipment",
				Components = {
					{
						Name = "@siren",
						Component = "siren_prototype",
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 5, 161, 19.6 ),
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
						},
						Inputs = { 
							["Emergency.SirenParkKill"] = { ["PARK"] = {} }
						}
					},
					{
						Inherit = "@siren",
						Position = Vector( -5, 161, 19.6 ),
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
						Position = Vector( -24.5, 163, 30.8 ),
						BodyGroups = {
							["bracket"] = 0,
							["mount"] = 0,
						},
						Angles = Angle( 180, 0, 0 ),
						Scale = 1,
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
						Position = Vector( 24.2, 163, 30.8 ),
						BodyGroups = {
							["bracket"] = 0,
							["mount"] = 0,
						},
						Angles = Angle( 180, 0, 0 ),
						Scale = 1,
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
				}
			},
		}
	},
	{
		Category = "Left Scene Lights",
		Options = {
			{
				Option = "Left Scene Lights",
				Components = {
					{
						Component = "samm_illum_bar",
						Position = Vector( -56.75, -42, 100 ),
						Angles = Angle( 0, 90, -10 ),
						Scale = 1,
						Inputs = {
							["Emergency.SceneRight"] = {
								["ON"] = {}
							},
							["Emergency.SceneForward"] = {
								["ON"] = {}
							},
						}
					},
					{
						Component = "samm_illum_bar",
						Position = Vector( -56.75, -92, 100 ),
						Angles = Angle( 0, 90, -10 ),
						Scale = 1,
						Inputs = {
							["Emergency.SceneRight"] = {
								["ON"] = {}
							},
							["Emergency.SceneForward"] = {
								["ON"] = {}
							},
						}
					},
					{
						Component = "samm_illum_bar",
						Position = Vector( -56.75, -143, 100 ),
						Angles = Angle( 0, 90, -10 ),
						Scale = 1,
						Inputs = {
							["Emergency.SceneRight"] = {
								["ON"] = {}
							},
							["Emergency.SceneForward"] = {
								["ON"] = {}
							},
						}
					},
				}
			},
		}
	},
	{
		Category = "Right Scene Lights",
		Options = {
			{
				Option = "Right Scene Lights",
				Components = {
					{
						Component = "samm_illum_bar",
						Position = Vector( 56.75, -42, 100 ),
						Angles = Angle( 0, -90, -10 ),
						Scale = 1,
						Inputs = {
							["Emergency.SceneLeft"] = {
								["ON"] = {}
							},
							["Emergency.SceneForward"] = {
								["ON"] = {}
							},
						}
					},
					{
						Component = "samm_illum_bar",
						Position = Vector( 56.75, -92, 100 ),
						Angles = Angle( 0, -90, -10 ),
						Scale = 1,
						Inputs = {
							["Emergency.SceneLeft"] = {
								["ON"] = {}
							},
							["Emergency.SceneForward"] = {
								["ON"] = {}
							},
						}
					},
					{
						Component = "samm_illum_bar",
						Position = Vector( 56.75, -143, 100 ),
						Angles = Angle( 0, -90, -10 ),
						Scale = 1,
						Inputs = {
							["Emergency.SceneLeft"] = {
								["ON"] = {}
							},
							["Emergency.SceneForward"] = {
								["ON"] = {}
							},
						}
					},
				}
			},
		}
	},
	{
		Category = "Tail Lights",
		Options = {
			{
				Option = "Tail Lights",
				Components = {
					{
						Component = "creeper_whelen_600_btt",
						Position = Vector( -39, -167.7, 55 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
					},
					{
						Component = "creeper_whelen_600_turn_left",
						Position = Vector( -39, -167.7, 48 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
					},
					{
						Component = "creeper_whelen_600_rev",
						Position = Vector( -39, -167.7, 41 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
					},
					{
						Component = "creeper_whelen_600_btt",
						Position = Vector( 39, -167.7, 55 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
					},
					{
						Component = "creeper_whelen_600_turn_right",
						Position = Vector( 39, -167.7, 48 ),
						Angles = Angle( 180, 180, 0 ),
						Scale = 1,
					},
					{
						Component = "creeper_whelen_600_rev",
						Position = Vector( 39, -167.7, 41 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
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
				BodyGroups = {
					{ BodyGroup = "grille", Value = 1 },
					{ BodyGroup = "bumper", Value = 0 },
				},	
				Props = {
					{
						Model = "models/supermighty/props/nypd_esu_bumper.mdl",
						Position = Vector( 0.3, 155, 28),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.8, 0.97, 0.9),
						Color = Color(0, 0, 0),
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -167.8, 31 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 25.4, 162.95, 56.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, 5, 92.8),
						Angles = Angle( 0, 30, 0 ),
						Scale = 1,
						BodyGroups = {
							["feet"] = 1,
						},
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -90, 104.75),
						Angles = Angle( 0, 30, 0 ),
						Scale = 1,
						BodyGroups = {
							["feet"] = 1,
						},
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 82, 69.7),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necmdt.mdl",
						Position = Vector( 0, 74, 60 ),
						Angles = Angle( -5, 270, 0 ),
						Scale = 0.8,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			}
		}
	},
}
