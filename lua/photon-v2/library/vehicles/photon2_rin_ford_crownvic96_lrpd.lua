if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1996 Ford Crown Victoria LRPD"
VEHICLE.Vehicle		= "96cvpi_sgm"
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
					{ Id = 6, Material = "rin/lrpd2/crownvic96/patrol" }
				},
				Props = {
					{
						Model = "models/schmal/chevcap13_bumper.mdl",
						Position = Vector( 0, 126, 24 ),
						Angles = Angle(0, 270, 0),
						Scale = Vector( 1, 1.05, 1),
						BodyGroups = {
							["wrap"] = 0,
						},
					},
				},
			},
			{
				Option = "K-9 Unit",
				SubMaterials = {
					{ Id = 6, Material = "rin/lrpd2/crownvic96/k9" },
				},
				Props = {
					{
						Model = "models/schmal/chevcap13_bumper.mdl",
						Position = Vector( 0, 126, 24 ),
						Angles = Angle(0, 270, 0),
						Scale = Vector( 1, 1.05, 1),
						BodyGroups = {
							["wrap"] = 0,
						},
					},
				},
			},
			{
				Option = "Traffic Enforcement",
				SubMaterials = {
					{ Id = 6, Material = "rin/lrpd2/crownvic96/traffic" }
				},
				Props = {
					{
						Model = "models/schmal/chevcap13_bumper.mdl",
						Position = Vector( 0, 126, 24 ),
						Angles = Angle(0, 270, 0),
						Scale = Vector( 1, 1.05, 1),
						BodyGroups = {
							["wrap"] = 1,
						},
					},
				},
			},
			{
				Option = "Little Tokyo Japanese Support Officer",
				SubMaterials = {
					{ Id = 6, Material = "rin/lrpd2/crownvic96/little_tokyo" }
				},
				Props = {
					{
						Model = "models/schmal/chevcap13_bumper.mdl",
						Position = Vector( 0, 126, 24 ),
						Angles = Angle(0, 270, 0),
						Scale = Vector( 1, 1.05, 1),
						BodyGroups = {
							["wrap"] = 2,
						},
					},
				},
			},
			{
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 6, Material = "rin/lrpd2/crownvic96/supervisor" }
				},
				Props = {
					{
						Model = "models/schmal/chevcap13_bumper.mdl",
						Position = Vector( 0, 126, 24 ),
						Angles = Angle(0, 270, 0),
						Scale = Vector( 1, 1.05, 1),
						BodyGroups = {
							["wrap"] = 0,
						},
					},
				},
			},
			{
				Option = "Special Operations",
				SubMaterials = {
					{ Id = 6, Material = "rin/lrpd2/crownvic96/special_ops" }
				},
				Props = {
					{
						Model = "models/schmal/chevcap13_bumper.mdl",
						Position = Vector( 0, 126, 24 ),
						Angles = Angle(0, 270, 0),
						Scale = Vector( 1, 1.05, 1),
						BodyGroups = {
							["wrap"] = 1,
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
				Option = "Patlite AXS-12",
				Components = {
					{
                        Component = "patlite_axs12",
                        Position = Vector( 0, -17, 70.25 ),
                        Angles = Angle( -1, -90, 0 ),
                        Scale = 1.2,
						States = {
							[1] = "B",
							[2] = "B",
							[3] = "B",
							[4] = "B",
						},
                        Options = {
                            FeetWidthOffset = 1,
                            FeetTilt = -4,
                        },
						SubMaterials = {
							[12] = "sentry/props/glass/blue"
						},
                    },
				}
			},
			{
				Option = "Patlite AJS-12",
				Components = {
					{
                        Component = "patlite_ajs12",
                        Position = Vector( 0, -19, 73.5 ),
                        Angles = Angle( -1, -90, 0 ),
                        Scale = 1.1,
						States = {
							[1] = "B",
							[2] = "B",
							[3] = "B",
							[4] = "B",
						},
                        Options = {
                            FeetWidthOffset = 4,
                            FeetTilt = -4,
                        },
						SubMaterials = {
							[2] = "sentry/props/koitoflasher/glass_blue",
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
				Option = "Steelies",
				BodyGroups = {
					{ BodyGroup = "hubcaps_fl", Value = 1 },
					{ BodyGroup = "hubcaps_fr", Value = 0 },
					{ BodyGroup = "hubcaps_rl", Value = 0 },
					{ BodyGroup = "hubcaps_rr", Value = 0 },
				}
			},
			{
				Option = "Steelies missing centercaps",
				BodyGroups = {
					{ BodyGroup = "hubcaps_fl", Value = 2 },
					{ BodyGroup = "hubcaps_fr", Value = 2 },
					{ BodyGroup = "hubcaps_rl", Value = 2 },
					{ BodyGroup = "hubcaps_rr", Value = 2 },
				}
			},
			{
				Option = "Steelies missing one centercap",
				BodyGroups = {
					{ BodyGroup = "hubcaps_fl", Value = 1 },
					{ BodyGroup = "hubcaps_fr", Value = 2 },
					{ BodyGroup = "hubcaps_rl", Value = 0 },
					{ BodyGroup = "hubcaps_rr", Value = 0 },
				}
			},
			{
				Option = "Hubcaps",
				BodyGroups = {
					{ BodyGroup = "hubcaps_fl", Value = 0 },
					{ BodyGroup = "hubcaps_fr", Value = 1 },
					{ BodyGroup = "hubcaps_rl", Value = 1 },
					{ BodyGroup = "hubcaps_rr", Value = 1 },
				}
			},
			{
				Option = "Hubcaps one missing",
				BodyGroups = {
					{ BodyGroup = "hubcaps_fl", Value = 0 },
					{ BodyGroup = "hubcaps_fr", Value = 1 },
					{ BodyGroup = "hubcaps_rl", Value = 2 },
					{ BodyGroup = "hubcaps_rr", Value = 1 },
				}
			},
		}
	},
	{
		Category = "Flashers",
		Options = {
			{
				Option = "Flashers",
				Components = {
					{
						Component = "photon_standard_sgmcvpi96"
					}
				},
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
						Position = Vector( -36, 28, 50 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/env_cubemap_model"
						}
					},
					{
						Component = "photon_par46_right",
						Position = Vector( 36, 28, 50 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/env_cubemap_model"
						},
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
		Category = "Push Bar",
		Options = {
			{
				Option = "Push Bar",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 0, 125.2, 27.6 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "sentry/cvpi_hd/black"
						},
						Siren = "sp_mk7_digi",
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
						Component = "koito_autocover_lrpd",
						Position = Vector( 9, 125, 27 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.9,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "koito_autocover_lrpd",
						Position = Vector( -9, 125, 27 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.9,
						Phase = 180,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			}
		}
	},
	{
		Category = "Rear Deck",
		Options = {
			{
				Components = {
					{
						Component = "koito_flasher_lrpd",
						Position = Vector( 18.5, -70, 55 ),
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
						Position = Vector( -18.5, -70, 55 ),
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
						Position = Vector( 0, -71, 50 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 0.9,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
				Props = {
					{
						Model = "models/schmal/antenna_gps.mdl",
						Position = Vector( -18.7, -70, 45),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 2),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_gps.mdl",
						Position = Vector( 18.7, -70, 45),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 2),
						RenderGroup = RENDERGROUP_OPAQUE,
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
				BodyGroups = {
					{ BodyGroup = "pillars", Value = 1 },
				},
				Props = {
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -35, 69.25),
						Angles = Angle( 0, 0, 3 ),
						Scale = 1
					},
					{
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 7.5, 15, 59.5),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 0, 0),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 0, 1.5, 0),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( 0, 11.45, 26.8 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 14.25, 28 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 8.8, 26.2 ),
						Angles = Angle( 0, 0, -69 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/anmbrotherpocketjet633/ANMBrotherPocketJet633.mdl",
						Position = Vector( 0.5, 1.5, 27 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.7,
						SubMaterials = {
							[0] = "rin/lrpd2/props/printer",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/anmkustomsignalsgoldeneagleii/ANMGoldenEagleRadarFull.mdl",
						Position = Vector( 0.5, 29.5, 50.2 ),
						Angles = Angle( -4, 270, -2 ),
						Scale = 0.7,
						SubMaterials = {
							[0] = "rin/lrpd2/props/radar",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/anmradio/ANMWhelenMic.mdl",
						Position = Vector( -7.1, 26, 40 ),
						Angles = Angle( 0, 180, -45 ),
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
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 122, 19 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -125.4, 31.8 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 0.95,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 122.7, 19 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
				}
			}
		}
	},
}
