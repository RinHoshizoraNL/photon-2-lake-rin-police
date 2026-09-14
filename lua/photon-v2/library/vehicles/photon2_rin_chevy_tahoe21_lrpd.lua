if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2021 Chevrolet Tahoe LRPD"
VEHICLE.Vehicle		= "21tahoe_sgm"
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
					{ Id = 20, Material = "rin/lrpd2/tahoe21/patrol" }
				},
			},
			{
				Option = "K-9 Unit Rina",
				SubMaterials = {
					{ Id = 20, Material = "rin/lrpd2/tahoe21/k9" }
				},
			},
			{
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 20, Material = "rin/lrpd2/tahoe21/supervisor" }
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
						Position = Vector( 0, -6, 94),
						Angles = Angle( 2, 90, 0 ),
						Scale = 0.985,
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
						Position = Vector( 17, -8, 92.7 ),
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
				Option = "Pushbar",
				Props = {
				    {
						Model = "models/schmal/setina_pushbar_durango.mdl",
						Position = Vector( 0, 117.5, 36 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 1, 1.2 ),
						BodyGroups = {
							["Fender_wrap"] = 1,
						}
					}
				},
				Components = {
					{
						Name = "@siren",
						Component = "siren_prototype",
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 11.5, 124.5, 39.9 ),
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
						Position = Vector( -11.5, 124.5, 39.9 ),
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
						Position = Vector( 11.5, 122.7, 54.2 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( -11.5, 122.7, 54.2 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						Phase = 180,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( 20.6, 123, 37.95 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( -20.6, 123, 37.95 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/glass"
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
						Position = Vector( 42, 102, 35.5 ),
						Angles = Angle( 92, 0, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( -42, 102, 35.5 ),
						Angles = Angle( 88, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/glass"
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
						Position = Vector( 38.2, -95, 68.9 ),
						Angles = Angle( 1, -89, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( -38.2, -95, 68.9 ),
						Angles = Angle( -1, 91, 0 ),
						Scale = 1,
						Phase = 180,
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
						Position = Vector( 0, -112, 78.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				    {
						Component = "photon_sos_ford96t_lrpd",
						Position = Vector( 0, -115, 84.3),
						Angles = Angle( 0, -90, 0 ),
						Bones = {
							["ford_96t_left"] = { Vector( 0, -20, 0 ), Angle( 0, -11.5, 0 ) },
							["ford_96t_right"] = { Vector( 0, 20, 0 ), Angle( 0, 11.5, 0 ) },
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
				Option = "Pillar Spotlights",
				Components = {
					{
						Component = "photon_whe_par46_left",
						Position = Vector( -36.5, 38, 72 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_whe_par46_right",
						Position = Vector( 36.5, 38, 72 ),
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
						Name = "Federal Signal MB1 Controller",
						Component = "photon_fedsig_mb1_controller",
						Position = Vector( 0, 12.1, 41 ),
						Angles = Angle( 0, 0, 21 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
				Props = {
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 10, 29.5, 83 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -35, 91.5),
						Angles = Angle( 0, 30, 0 ),
						Scale = 1,
						BodyGroups = {
							["feet"] = 1,
						},
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 27.3, -3, 94.3),
						Angles = Angle( 0, 0, -2 ),
						Scale = 1
					},
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( -12, -90, 90.2),
						Angles = Angle( -2.5, 90, -1.5 ),
						Scale = 1
					},
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 12, -90, 90.2),
						Angles = Angle( -2.5, 90, 1.5 ),
						Scale = 1
					},
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 3.5, 17),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector(1.05, 1, 1.1),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 0, 8, 16),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( -0.2, 18.05, 42.7 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 20.8, 44 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 15.35, 42.1 ),
						Angles = Angle( 0, 0, -69 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necmdt.mdl",
						Position = Vector( 0, 27.7, 60 ),
						Angles = Angle( -5, 270, 0 ),
						Scale = 0.8,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -125.3, 52.5 ),
						Angles = Angle( -11, 270, 0 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 117, 29 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 117.7, 29 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
				}
			}
		}
	},
}