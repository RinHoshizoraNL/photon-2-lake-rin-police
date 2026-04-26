
if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2020 Ford Explorer LRPD Unmarked"
VEHICLE.Vehicle		= "20fpiu_new_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Police Dept."
VEHICLE.Author		= "Rin Hoshizora"


VEHICLE.Equipment = {
	{
		Category = "Paint",
		Options = {
            {
				Option = "Magnetic",
				Properties = {
					Skin = 0,
					Color = Color(48,48,48)
				}
			},
            {
				Option = "Atlas Blue",
				Properties = {
					Skin = 0,
					Color = Color(0,28,114)
				}
			},
            {
				Option = "Blue",
				Properties = {
					Skin = 0,
					Color = Color(8,27,67)
				}
			},
            {
				Option = "Rapid Red",
				Properties = {
					Skin = 0,
					Color = Color(114,2,2)
				}
			},
            {
				Option = "Rich Copper",
				Properties = {
					Skin = 0,
					Color = Color(51,11,0)
				}
			},
            {
				Option = "Silver Spruce",
				Properties = {
					Skin = 0,
					Color = Color(119,124,121)
				}
			},
            {
				Option = "Iconic Silver",
				Properties = {
					Skin = 0,
					Color = Color(148,148,148)
				}
			},
            {
				Option = "Agate Black",
				Properties = {
					Skin = 0,
					Color = Color(0,0,0)
				}
			},
            {
				Option = "Star White",
				Properties = {
					Skin = 0,
					Color = Color(255,255,255)
				}
			},
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
				Option = "Steelies",
				BodyGroups = {
					{ BodyGroup = "hubcaps", Value = 1 },
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
						--Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 0, 114.2, 39.5 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 0,
						--SubMaterials = {
						--	[0] = "sentry/cvpi_hd/black"
						--},
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
			}
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
						Position = Vector( 0, 19, 78 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.1,
						Options = {
							Width = 8,
							Angle = 10
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					}
				}
			},
		}
	},
	{
		Category = "Grille Lighting",
		Options = {
            {
				Option = "Upper",  
				Components = {
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( 11.5, 114.5, 45 ),
						Angles = Angle( 0, -5, 0 ),
						Scale = 0.9,
						Phase = 180,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( -11.5, 114.5, 45 ),
						Angles = Angle( 0, 5, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
					},
				},
			},
            {
				Option = "Lower",  
				Components = {
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( 12.5, 117, 33.3 ),
						Angles = Angle( 0, -5, 0 ),
						Scale = 0.9,
						Phase = 180,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( -12.5, 117, 33.3 ),
						Angles = Angle( 0, 5, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
					},
				},
			},
        }
	},
    {
		Category = "Corner Hide a Ways",
		Options = {
            {
				Option = "Corner Hide a Ways",  
				Components = {
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( 41.6, 91, 51.3 ),
						Angles = Angle( -2, -74, 5 ),
						Scale = 0.7,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
                        RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( -41.6, 91, 51.3 ),
						Angles = Angle( 2, 74, 5 ),
						Scale = 0.7,
                        Phase = 180,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
                        RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
			},
        }
	},
	{
		Category = "Standard",
		Options = {
			{
				Option = "Standard Lighting",
				Components = {
					{
						Component = "photon_standard_sgmfpiu20",
						States = { "B", "B" },
						Inputs = {
							["Emergency.Marker"] = { ON = {} }
						},
						Features = {
							ParkMode = { "Emergency.Warning", "MODE2" },
						}
					}
				}
			}
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
						Position = Vector( 38, -95, 64.5 ),
						Angles = Angle( -1, -98, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( -38, -95, 64.5 ),
						Angles = Angle( 1, 98, 0 ),
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
		Category = "Rear Lighting",
		Options = {
            {
				Option = "FS MB1",
				Components = {
					{
						Component = "photon_sos_ford96t_lrpd",
						Position = Vector( 0, -110.4, 78.1 ),
						Angles = Angle( 0, -90, 0 ),
						Bones = {
							["ford_96t_left"] = { Vector( 0, -20.9, 0 ), Angle( 0, -13.635, 0 ) },
							["ford_96t_right"] = { Vector( 0, 20.9, 0 ), Angle( 0, 13.635, 0 ) },
						}
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
					{ BodyGroup = "foglights", Value = 1 },
					{ BodyGroup = "console", Value = 1 },
					{ BodyGroup = "laptop", Value = 1 },
					{ BodyGroup = "pushbar", Value = 0 },
                    { BodyGroup = "partition_front", Value = 1 },
                    { BodyGroup = "partition_rear", Value = 1 },
                    { BodyGroup = "interceptorbadge", Value = 1 },
				},
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -126.67, 49 ),
						Angles = Angle( -12, 270, 00 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_unmarked_rear",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 120, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 120.7, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_unmarked_front",
						},
					},
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 0, 8.5, 84.3),
						Angles = Angle( 10.5, 90, 0 ),
						Scale = 1,
                        Color = Color(0, 0, 0)
					},
					{
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 0, 6.5, 14),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( -0.2, 16.55, 40.7 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 19.3, 42 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 13.85, 40.1 ),
						Angles = Angle( 0, 0, -69 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necmdt.mdl",
						Position = Vector( 0, 26.5, 53 ),
						Angles = Angle( -5, 270, 0 ),
						Scale = 0.8,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 9.7, 20, 79 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			}
		}
	},
}
