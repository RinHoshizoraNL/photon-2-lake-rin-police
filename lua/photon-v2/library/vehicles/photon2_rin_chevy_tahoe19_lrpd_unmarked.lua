if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2019 Chevrolet Tahoe LRPD Unmarked"
VEHICLE.Vehicle		= "19tahoe_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Police Dept."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Color",
		Options = {
			{
				Option = "Black",
				Properties = {
					Skin = 0,
					Color = Color(0, 0, 0)
				},
				SubMaterials = {
					{ Id = 21, Material = "sentry/15charger_fm2/skin0" }
				},
			},
			{
				Option = "Summit White",
				Properties = {
					Skin = 0,
					Color = Color(255, 255, 255)
				},
				SubMaterials = {
					{ Id = 21, Material = "sentry/15charger_fm2/skin0" }
				},
			},
			{
				Option = "Deepwood Green Metallic",
				Properties = {
					Skin = 0,
					Color = Color(5, 11, 6)
				},
				SubMaterials = {
					{ Id = 21, Material = "sentry/15charger_fm2/skin0" }
				},
			},
			{
				Option = "Blue Velvet Metallic",
				Properties = {
					Skin = 0,
					Color = Color(4, 18, 43)
				},
				SubMaterials = {
					{ Id = 21, Material = "sentry/15charger_fm2/skin0" }
				},
			},
			{
				Option = "Siren Red Tintcoat",
				Properties = {
					Skin = 0,
					Color = Color(61, 0, 0)
				},
				SubMaterials = {
					{ Id = 21, Material = "sentry/15charger_fm2/skin0" }
				},
			},
			{
				Option = "Pepperdust Metallic",
				Properties = {
					Skin = 0,
					Color = Color(83, 81, 73)
				},
				SubMaterials = {
					{ Id = 21, Material = "sentry/15charger_fm2/skin0" }
				},
			},
			{
				Option = "Shadow Gray Metallic",
				Properties = {
					Skin = 0,
					Color = Color(15, 19, 27)
				},
				SubMaterials = {
					{ Id = 21, Material = "sentry/15charger_fm2/skin0" }
				},
			},
			{
				Option = "Satin Steel Metallic",
				Properties = {
					Skin = 0,
					Color = Color(53, 55, 61)
				},
				SubMaterials = {
					{ Id = 21, Material = "sentry/15charger_fm2/skin0" }
				},
			},
			{
				Option = "Silver Ice Metallic",
				Properties = {
					Skin = 0,
					Color = Color(169, 179, 200)
				},
				SubMaterials = {
					{ Id = 21, Material = "sentry/15charger_fm2/skin0" }
				},
			},
		}
	},
	{
		Category = "Wheels",
		Options = {
			{
				Option = "Option A",
				BodyGroups = {
					{ BodyGroup = "mirrors", Value = 2 },
					{ BodyGroup = "grille", Value = 1 },
					{ BodyGroup = "wheels", Value = 2 },
				},
			},
			{
				Option = "Option B",
				BodyGroups = {
					{ BodyGroup = "mirrors", Value = 2 },
					{ BodyGroup = "grille", Value = 1 },
					{ BodyGroup = "wheels", Value = 5 },
				},
			},
		}
	},
	{
		Category = "Siren",
		Options = {
			{
				Option = "Patlite SAP-500E (LRPD Spec)",
				Components = {
					{
						Name = "@siren",
						Component = "siren_prototype",
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 0, 115, 36.5 ),
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
					}
				}
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
						Position = Vector( 0, 23, 80.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.1,
						Options = {
							Width = 7,
							Angle = 10
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					}
				}
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
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( 15, 117.7, 43.8 ),
						Angles = Angle( -1.5, -8, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( -15, 117.7, 43.8 ),
						Angles = Angle( 1.5, 8, 0 ),
						Scale = 1,
						Phase = 180,
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
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( 36, 112, 21.8 ),
						Angles = Angle( 0, -30, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( -36, 112, 21.8 ),
						Angles = Angle( 0, 30, 0 ),
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
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( 40, -95, 63 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( -40, -95, 63 ),
						Angles = Angle( 0, 90, 0 ),
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
		Category = "Rear Window Lighting",
		Options = {
            {
				Option = "Signalmaster",
				Components = {
					{
						Component = "photon_fedsig_cn_signalmaster_lrpd",
						Position = Vector( 0, -112, 78 ),
						Angles = Angle( 0, 270, 180 ),
						Scale = 1,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE2"] = {All = "CVPI_LR"},
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
			},

		}
	},
	{
		Category = "Outer Dingus Ions",
		Options = {
            {
				Option = "Whelen Ion",
				Components = {
					{
						Component = "photon_whe_ion",
						Position = Vector( -34.5, -112.5, 77.5 ),
						Angles = Angle( -72, 0, 180 ),
						Scale = 0.8,
						States = { "B", "R" }
					},
					{
						Component = "photon_whe_ion",
						Position = Vector( -36.4, -116, 71.2 ),
						Angles = Angle( -75, 0, 180 ),
						Scale = 0.8,
						Phase = 180,
						States = { "B", "R" }
					},
					{
						Component = "photon_whe_ion",
						Position = Vector( -37.9, -118, 65 ),
						Angles = Angle( -78, 0, 180 ),
						Scale = 0.8,
						States = { "B", "R" }
					},
					{
						Component = "photon_whe_ion",
						Position = Vector( 34.5, -112.5, 77.5 ),
						Angles = Angle( 72, 0, 180 ),
						Scale = 0.8,
						Phase = 180,
						States = { "B", "R" }
					},
					{
						Component = "photon_whe_ion",
						Position = Vector( 36.4, -116, 71.2 ),
						Angles = Angle( 75, 0, 180 ),
						Scale = 0.8,
						States = { "B", "R" }
					},
					{
						Component = "photon_whe_ion",
						Position = Vector( 37.9, -118, 65 ),
						Angles = Angle( 78, 0, 180 ),
						Scale = 0.8,
						Phase = 180,
						States = { "B", "R" }
					},
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
					{ BodyGroup = "pushbar", Value = 0 },
					{ BodyGroup = "windowbars", Value = 0 },
					{ BodyGroup = "partition", Value = 0 },
					{ BodyGroup = "lightbar", Value = 1 },
					{ BodyGroup = "console", Value = 1 },
					{ BodyGroup = "ions", Value = 1 },
					{ BodyGroup = "dominator", Value = 1 },
					{ BodyGroup = "keychain", Value = 0 },
					{ BodyGroup = "dpillar_edge", Value = 1 },
				},
				Components = {
					{
						Name = "Federal Signal MB1 Controller",
						Component = "photon_fedsig_mb1_controller",
						Position = Vector( 0, 12.1, 39 ),
						Angles = Angle( 0, 0, 21 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
				Props = {
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 7, 28, 80.5 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -4, 88.1),
						Angles = Angle( 0, 0, -2 ),
						Scale = 1,
						BodyGroups = {
							["feet"] = 1,
						},
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( -21.5, -65, 87.7),
						Angles = Angle( -5, 0, 0.5 ),
						Scale = 1,
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 21.5, -65, 87.7),
						Angles = Angle( 5, 0, 0.5 ),
						Scale = 1,
					},
					{
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 0, 8, 14),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( -0.2, 18.05, 40.7 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 20.8, 42 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 15.35, 40.1 ),
						Angles = Angle( 0, 0, -69 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necmdt.mdl",
						Position = Vector( 0, 27.7, 49 ),
						Angles = Angle( -5, 270, 0 ),
						Scale = 0.8,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -123.1, 47 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_unmarked_rear",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 123.5, 22.1 ),
						Angles = Angle( 4, 90, 0 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_unmarked_front",
						},
					},
				}
			}
		}
	},
}