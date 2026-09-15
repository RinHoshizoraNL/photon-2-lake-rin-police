if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1998 Ford Crown Victoria LRPD Unmarked"
VEHICLE.Vehicle		= "cvpi_hd_98_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Police Dept."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Paint",
		Options = {
            {
				Option = "Dark Toreador Red Metallic",
				Properties = {
					Skin = 0,
					Color = Color(58, 0, 0)
				}
			},
			{
				Option = "Medium Wedgewood Blue Metallic",
				Properties = {
					Skin = 0,
					Color = Color(19,35,53)
				}
			},
			{
				Option = "Arctic Blue Metallic",
				Properties = {
					Skin = 0,
					Color = Color(99,123,124)
				}
			},
			{
				Option = "Light Denim Blue Metallic",
				Properties = {
					Skin = 0,
					Color = Color(108, 118, 138)
				}
			},
			{
				Option = "Deep Jewel Green Metallic",
				Properties = {
					Skin = 0,
					Color = Color(4, 25, 15)
				}
			},
			{
				Option = "Dark Tourmaline Metallic",
				Properties = {
					Skin = 0,
					Color = Color(4, 25, 24)
				}
			},
			{
				Option = "Medium Willow Metallic",
				Properties = {
					Skin = 0,
					Color = Color(15, 45, 43)
				}
			},
			{
				Option = "Medium Graphite Metallic",
				Properties = {
					Skin = 0,
					Color = Color(48, 48, 48)
				}
			},
			{
				Option = "Silver Frost Metallic",
				Properties = {
					Skin = 0,
					Color = Color(168, 168, 168)
				}
			},
			{
				Option = "Mocha Frost Metallic",
				Properties = {
					Skin = 0,
					Color = Color(174, 168, 150)
				}
			},
			{
				Option = "Black",
				Properties = {
					Skin = 0,
					Color = Color(0, 0, 0)
				}
			},
			{
				Option = "Performance White",
				Properties = {
					Skin = 0,
					Color = Color(255, 255, 255)
				}
			},
        }
	},
	{
		Category = "Lighting",
		Options = {
			{
				Option = "Default",
				Components = {
					{
						Component = "photon_standard_cvpi98_lrpd",
					}
				}
			}
		}
	},
	{
		Category = "Beacon",
		Options = {
			{
				Option = "Patlite HKF Left",
				Components = {
					{
						Component = "patlite_hkf",
						Position = Vector( -22, -12, 66.3 ),
						Angles = Angle( -2, 270, 8 ),
						Scale = .9,
						States = {
							[1] = "B",
							[2] = "B",
							[3] = "B",
							[4] = "B",
						},
						BodyGroups = {
							["trim"] = 1,
						},
						SubMaterials = {
							[5] = "sentry/props/koitoflasher/glass_blue",
							[6] = "sentry/props/koitoflasher/glass_blue"
						},
					},
				}
			},
			{
				Option = "Patlite HKF Right",
				Components = {
					{
						Component = "patlite_hkf",
						Position = Vector( 22, -12, 66.3 ),
						Angles = Angle( -2, 270, -8 ),
						Scale = .9,
						States = {
							[1] = "B",
							[2] = "B",
							[3] = "B",
							[4] = "B",
						},
						BodyGroups = {
							["trim"] = 1,
						},
						SubMaterials = {
							[5] = "sentry/props/koitoflasher/glass_blue",
							[6] = "sentry/props/koitoflasher/glass_blue"
						},
					},
				}
			},
			{
				Option = "None",
			},
		}
	},
	{
		Category = "Grille",
		Options = {
			{
				Option = "Grille",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 4.5, 104, 22.5 ),
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
						Position = Vector( 11.8, 114, 13.9 ),
						Angles = Angle( 0, 87, 0 ),
						Scale = 0.8,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "koito_autocover_lrpd",
						Position = Vector( -11.8, 114, 13.9 ),
						Angles = Angle( 0, 93, 0 ),
						Scale = 0.8,
						Phase = 180,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
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
					{ BodyGroup = "hubcaps", Value = 0 },
				},
			},
			{
				Option = "Steelies missing Hubacps",
				BodyGroups = {
					{ BodyGroup = "hubcaps", Value = 2 },
				},
			}
		}
	},
    {
		Category = "Rain Guards",
		Options = {
			{
				Option = "Rain Guards",
				BodyGroups = {
					{ BodyGroup = "rainguards", Value = 1 },
				},
			},
			{
				Option = "None",
				BodyGroups = {
					{ BodyGroup = "rainguards", Value = 0 },
				},
			},
		}
	},
	{
		Category = "Rear Deck",
		Options = {
			{
				Components = {
					{
						Component = "koito_flasher_lrpd",
						Position = Vector( 14, -77, 51.5 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[3] = "schmal/photon/fedsig_legend/dome_r",
							[0] = "sentry/props/koitoflasher/plastic_r",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "koito_flasher_lrpd",
						Position = Vector( -14, -77, 51.5 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.9,
						Phase = 90,
						SubMaterials = {
							[3] = "schmal/photon/fedsig_legend/dome_r"
						},
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
					{ BodyGroup = "rearfascia", Value = 1 },
					{ BodyGroup = "spotlight_l", Value = 1 },
					{ BodyGroup = "spotlight_r", Value = 1 },
					{ BodyGroup = "windowbars", Value = 0 },
					{ BodyGroup = "doortrim", Value = 2 },
					{ BodyGroup = "grille", Value = 1 },
					{ BodyGroup = "reartrim", Value = 1 },
					{ BodyGroup = "handles", Value = 0 },
					{ BodyGroup = "trunkmodel", Value = 1 },
					{ BodyGroup = "mirrors", Value = 1 },
					{ BodyGroup = "partition", Value = 1 },
					{ BodyGroup = "bumperf_chrome", Value = 1 },
					{ BodyGroup = "bumperr_chrome", Value = 1 },
					{ BodyGroup = "4bulb_tails", Value = 1 },
					{ BodyGroup = "door_l_notch", Value = 1 },
					{ BodyGroup = "door_r_notch", Value = 1 },
				},
				Props = {
					{
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( -0.2, 10, 26.85 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 12.75, 28 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 7.4, 26.2 ),
						Angles = Angle( 0, 0, -69 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 7.5, 13.8, 58.55),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/anmradio/ANMWhelenMic.mdl",
						Position = Vector( -7.1, 23, 40 ),
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
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 29.625, 2.65, 0 ),
						Angles = Angle( 90, -4.6, -90 ),
						Scale = 1,
						FollowBone = "trunk"
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 49.2, -9.8, 0 ),
						Angles = Angle( 0, 12, -90 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_unmarked_rear",
						},
						FollowBone = "trunk"
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 118.8, 18.2 ),
						Angles = Angle( 6.5, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_unmarked_front",
						},
					},
				}
			}
		}
	},
}