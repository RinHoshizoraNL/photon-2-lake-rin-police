if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2018 Ford F150 LRPD SRG"
VEHICLE.Vehicle		= "smfordresponder"
VEHICLE.Category 	= "Photon 2: Lake Rin Police Dept."
VEHICLE.Author		= "Rin Hoshizora"

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Strategic Response Group",
				SubMaterials = {
					{ Id = 29, Material = "rin/lrpd2/f150/srg" }
				},
			},
		}
	},
	{
		Category = "Body",
		Options = {
			{
				Option = "Box",
				Props = {
					{
						Model = "models/samm/bedbox1/bedbox1dia.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0.2, 270, 0 ),
						Scale = Vector( 1, 0.85, 1 ),
						SubMaterials = {
							[0] = "rin/lrpd2/props/black",
							[1] = "rin/lrpd2/props/black",
							[3] = "rin/lrpd2/props/black",
						},
					},
				},
				Components = {
					{
						Component = "photon_fedsig_cn_signalmaster_lrpd",
						Position = Vector( 0, -123, 95 ),
						Angles = Angle( -1, 270, 0 ),
						Scale = 1,
						BodyGroups = {
							["mount"] = 1,
						},
					},
					{
						Component = "samm_illum_bar",
						Position = Vector( -41.9, -85, 89.4 ),
						Angles = Angle( 1.5, 90, -10 ),
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
						Position = Vector( 41.9, -85, 89.4 ),
						Angles = Angle( -1.5, -90, -10 ),
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
				},
			},
			{
				Option = "Bedcap",
				BodyGroups = {
					{ BodyGroup = "bed", Value = 2 },
				},
				Components = {
					{
						Component = "photon_fedsig_cn_signalmaster_lrpd",
						Position = Vector( 0, -120, 87 ),
						Angles = Angle( -1, 270, 180 ),
						Scale = 1,
						BodyGroups = {
							["mount"] = 0,
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
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
						Position = Vector( 0, 43, 84 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.1,
						Options = {
							Width = 7,
							Angle = 12
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					}
				}
			},
		}
	},
	{
		Category = "Trim Package",
		Options = {
			{
				Option = "Base",
				BodyGroups = {
					{ BodyGroup = "wheels", Value = 2 },
					{ BodyGroup = "grille", Value = 0 },
					{ BodyGroup = "front bumper", Value = 1 },
					{ BodyGroup = "rear bumper", Value = 0 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "responder badge", Value = 0 },
				},
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
						Position = Vector( 13, 138, 34.5 ),
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
						Position = Vector( -13, 138, 34.5 ),
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
						Position = Vector( -13, 138, 41.6 ),
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
						Position = Vector( 13, 138, 41.6 ),
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
						Position = Vector( 21.5, 138, 41 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( -21.5, 138, 41 ),
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
		Category = "Spotlights",
		Options = {
			{
				Option = "Spotlights",
				Components = {
					{
						Component = "photon_whe_par46_left",
						Position = Vector( -37, 57, 71 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.1
					},
					{
						Component = "photon_whe_par46_right",
						Position = Vector( 37, 57, 71 ),
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
				Components = {
					{
						Component = "photon_pan_toughbookcf30",
						Position = Vector( 8.5, 38, 60 ),
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
				BodyGroups = {
					{ BodyGroup = "partition", Value = 0 },
					{ BodyGroup = "center console", Value = 0 },
					{ BodyGroup = "towbar", Value = 1 },
					{ BodyGroup = "pushbar", Value = 1 },
				},
				Props = {
					{
						Model = "models/supermighty/props/f150_pb8_wraps.mdl",
						Position = Vector( 0, -1.5, 0 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 0.95
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, 5, 92.1),
						Angles = Angle( 0, 0, -1.5 ),
						Scale = 1
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -37, 92),
						Angles = Angle( 0, 0, 8 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -131.2, 34 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 134, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 134.7, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( 0, 32.4, 48.2 ),
						Angles = Angle( -56, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( 0, 35.3, 50.6 ),
						Angles = Angle( -56, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 28, 46.2 ),
						Angles = Angle( 0, 0, -56 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 10.5, 46.5, 85 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/smf15018_glass.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
					}
				}
			}
		}
	},
}