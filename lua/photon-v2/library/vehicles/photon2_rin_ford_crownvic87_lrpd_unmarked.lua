if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1987 Ford Crown Victoria LRPD Unmarked"
VEHICLE.Vehicle		= "87ltd_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Police Dept."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
    {
		Category = "Paint",
		Options = {
            {
				Option = "Sand Beige",
				Properties = {
					Skin = 0,
					Color = Color(187, 175, 142)
				}
			},
			{
				Option = "Medium Sand Beige",
				Properties = {
					Skin = 0,
					Color = Color(90, 69, 48)
				}
			},
			{
				Option = "Midnight Canyon Red Metallic",
				Properties = {
					Skin = 0,
					Color = Color(80, 15, 12)
				}
			},
			{
				Option = "Deep Shadow Blue Metallic",
				Properties = {
					Skin = 0,
					Color = Color(0, 13, 54)
				}
			},
			{
				Option = "Medium Shadow Blue Metallic",
				Properties = {
					Skin = 0,
					Color = Color(29, 54, 82)
				}
			},
			{
				Option = "Spinnaker Blue",
				Properties = {
					Skin = 0,
					Color = Color(81, 115, 135)
				},
				SubMaterials = {
					{ Id = 2, Material = "rin/lrpd2/crownvic87/seats_blue" },
					{ Id = 3, Material = "rin/lrpd2/crownvic87/doors_blue" },
					{ Id = 6, Material = "rin/lrpd2/crownvic87/dash_blue" },
				},
			},
			{
				Option = "Dark Grey Metallic",
				Properties = {
					Skin = 0,
					Color = Color(72, 72, 72)
				}
			},
			{
				Option = "Silver Metallic",
				Properties = {
					Skin = 0,
					Color = Color(182, 182, 182)
				},
				SubMaterials = {
					{ Id = 2, Material = "rin/lrpd2/crownvic87/seats_blue" },
					{ Id = 3, Material = "rin/lrpd2/crownvic87/doors_blue" },
					{ Id = 6, Material = "rin/lrpd2/crownvic87/dash_blue" },
				},
			},
			{
				Option = "Black",
				Properties = {
					Skin = 0,
					Color = Color(0, 0, 0)
				}
			},
			{
				Option = "Oxford White",
				Properties = {
					Skin = 0,
					Color = Color(255, 255, 255)
				},
				SubMaterials = {
					{ Id = 2, Material = "rin/lrpd2/crownvic87/seats_blue" },
					{ Id = 3, Material = "rin/lrpd2/crownvic87/doors_blue" },
					{ Id = 6, Material = "rin/lrpd2/crownvic87/dash_blue" },
				},
			},
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
						Position = Vector( -23, -12, 60.1 ),
						Angles = Angle( -0.5, 270, 5 ),
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
						Position = Vector( 23, -12, 60.1 ),
						Angles = Angle( -0.5, 270, -5 ),
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
		Category = "Grille Lights",
		Options = {
			{
				Option = "Grille Lights",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 0, 104.5, 24.8 ),
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
						Position = Vector( 7, 102.5, 25.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[3] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "koito_flasher_lrpd",
						Position = Vector( -7, 102.5, 25.5 ),
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
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				Props = {
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( 1.5, 24, 43.65 ),
						Angles = Angle( -1, 270, -0.2 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 26, 31.35 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.3,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -100, 40.8),
						Angles = Angle( 0, 0, 4.5 ),
						Scale = 1
					},
					{
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 7.5, 15, 52.2),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( -34, 111.2, 16.8 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -123, 30 ),
						Angles = Angle( -16, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_unmarked_rear",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -34, 112, 16.8 ),
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
