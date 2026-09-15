if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1995 Chevrolet Caprice LRPD Unmarked"
VEHICLE.Vehicle		= "95caprice_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Police Dept."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Paint",
		Options = {
            {
				Option = "Medium Garnet Red Metallic",
				Properties = {
					Skin = 0,
					Color = Color(88,14,19)
				}
			},
			{
				Option = "Dark Cherry Metallic",
				Properties = {
					Skin = 0,
					Color = Color(41,4,9)
				}
			},
			{
				Option = "Adriatic Blue Metallic",
				Properties = {
					Skin = 0,
					Color = Color(0,29,56)
				}
			},
			{
				Option = "Light Adriatic Metallic",
				Properties = {
					Skin = 0,
					Color = Color(115,139,150)
				},
				SubMaterials = {
					{ Id = 20, Material = "rin/lrpd2/caprice95/seats_blue" },
					{ Id = 21, Material = "rin/lrpd2/caprice95/dash_blue" }
				},
			},
			{
				Option = "Michigan Blue",
				Properties = {
					Skin = 2,
					Color = Color(8,40,53)
				},
				SubMaterials = {
					{ Id = 20, Material = "rin/lrpd2/caprice95/seats_blue" },
					{ Id = 21, Material = "rin/lrpd2/caprice95/dash_blue" }
				},
			},
			{
				Option = "Purple Pearl",
				Properties = {
					Skin = 0,
					Color = Color(45,34,42)
				}
			},
			{
				Option = "Dark Green Gray Metallic",
				Properties = {
					Skin = 0,
					Color = Color(20,42,45)
				}
			},
			{
				Option = "Light Driftwood Metallic",
				Properties = {
					Skin = 0,
					Color = Color(161,153,131)
				}
			},
			{
				Option = "Medium Marblehead Metallic",
				Properties = {
					Skin = 0,
					Color = Color(135,140,140)
				},
				SubMaterials = {
					{ Id = 20, Material = "rin/lrpd2/caprice95/seats_blue" },
					{ Id = 21, Material = "rin/lrpd2/caprice95/dash_blue" }
				},
			},
			{
				Option = "Light Gray Metallic",
				Properties = {
					Skin = 0,
					Color = Color(72,72,72)
				}
			},
			{
				Option = "Ultra Silver Metallic",
				Properties = {
					Skin = 0,
					Color = Color(145,145,145)
				}
			},
			{
				Option = "Bright White",
				Properties = {
					Skin = 0,
					Color = Color(255,255,255)
				},
				SubMaterials = {
					{ Id = 20, Material = "rin/lrpd2/caprice95/seats_blue" },
					{ Id = 21, Material = "rin/lrpd2/caprice95/dash_blue" }
				},
			},
			{
				Option = "Black",
				Properties = {
					Skin = 0,
					Color = Color(0,0,0)
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
						Component = "photon_standard_chevcap91_lrpd"
					}
				},
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
						Position = Vector( -23, -12, 59.1 ),
						Angles = Angle( -3, 270, 7 ),
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
						Position = Vector( 23, -12, 59.1 ),
						Angles = Angle( -3, 270, -7 ),
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
						Siren = "sp_mk7",
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
						Component = "koito_flasher_lrpd",
						Position = Vector( 11.3, 102, 23.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[3] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "koito_flasher_lrpd",
						Position = Vector( -11.3, 102, 23.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						Phase = 90,
						SubMaterials = {
							[3] = "schmal/photon/fedsig_legend/dome_r"
						},
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
						Position = Vector( 15, -80, 44 ),
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
						Position = Vector( -15, -80, 44 ),
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
				Props = {
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( 1.5, 29, 39.5 ),
						Angles = Angle( 10, 270, -0.5 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 27, 23 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.3,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -107, 41.2),
						Angles = Angle( 0, 0, 6 ),
						Scale = 1
					},
					{
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 7.5, 15, 51),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 114, 12 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -123.2, 25.2 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_unmarked_rear",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 114.7, 12 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_unmarked_front",
						},
					},
				}
			}
		}
	},
}
