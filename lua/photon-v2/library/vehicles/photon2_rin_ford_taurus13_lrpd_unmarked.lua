if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2013 Ford Taurus LRPD Unmarked"
VEHICLE.Vehicle		= "13fpis_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Police Dept."
VEHICLE.Author		= "Rin Hoshizora"


local sequence = Photon2.SequenceBuilder.New

VEHICLE.SubMaterials = {
    [1] = "schmal/sgm_fpis13/chrome",
	[8] = "schmal/sgm_fpis13/forward_signal",
	[9] = "schmal/sgm_fpis13/forward_signal",
	[4] = "photon/common/blank",
}

VEHICLE.Equipment = {
	{
		Category = "Color",
		Options = {
			{
				Option = "Norsea Blue Metallic",
				Properties = {
					Skin = 0,
					Color = Color(30,56,82)
				},
				SubMaterials = {
					{ Id = 27, Material = "sentry/15charger_fm2/skin0" }
				},
			},
            {
				Option = "Blue Diamond Metallic",
				Properties = {
					Skin = 0,
					Color = Color(17,35,66)
				},
				SubMaterials = {
					{ Id = 27, Material = "sentry/15charger_fm2/skin0" }
				},
			},
            {
				Option = "Blue Jeans Metallic",
				Properties = {
					Skin = 0,
					Color = Color(12,30,69)
				},
				SubMaterials = {
					{ Id = 27, Material = "sentry/15charger_fm2/skin0" }
				},
			},
            {
				Option = "Deep Impact Blue Metallic",
				Properties = {
					Skin = 0,
					Color = Color(0,6,80)
				},
				SubMaterials = {
					{ Id = 27, Material = "sentry/15charger_fm2/skin0" }
				},
			},
            {
				Option = "Dark Toreador Red Metallic",
				Properties = {
					Skin = 0,
					Color = Color(58, 0, 0)
				},
				SubMaterials = {
					{ Id = 27, Material = "sentry/15charger_fm2/skin0" }
				},
			},
            {
				Option = "Vermillion Red",
				Properties = {
					Skin = 0,
					Color = Color(193, 0, 0)
				},
				SubMaterials = {
					{ Id = 27, Material = "sentry/15charger_fm2/skin0" }
				},
			},
            {
				Option = "Arizona Beige Metallic",
				Properties = {
					Skin = 0,
					Color = Color(137, 125, 99)
				},
				SubMaterials = {
					{ Id = 27, Material = "sentry/15charger_fm2/skin0" }
				},
			},
            {
				Option = "Smokestone Metallic",
				Properties = {
					Skin = 0,
					Color = Color(156, 153, 145)
				},
				SubMaterials = {
					{ Id = 27, Material = "sentry/15charger_fm2/skin0" }
				},
			},
            {
				Option = "Kodiak Brown Metallic",
				Properties = {
					Skin = 0,
					Color = Color(41, 18, 8)
				},
				SubMaterials = {
					{ Id = 27, Material = "sentry/15charger_fm2/skin0" }
				},
			},
            {
				Option = "Magnetic",
				Properties = {
					Skin = 0,
					Color = Color(48, 48, 48)
				},
				SubMaterials = {
					{ Id = 27, Material = "sentry/15charger_fm2/skin0" }
				},
			},
            {
				Option = "Iconic Silver",
				Properties = {
					Skin = 0,
					Color = Color(148,148,148)
				},
				SubMaterials = {
					{ Id = 27, Material = "sentry/15charger_fm2/skin0" }
				},
			},
            {
				Option = "Agate Black",
				Properties = {
					Skin = 0,
					Color = Color(0, 0, 0)
				},
				SubMaterials = {
					{ Id = 27, Material = "sentry/15charger_fm2/skin0" }
				},
			},
			{
				Option = "Oxford White",
				Properties = {
					Skin = 0,
					Color = Color(255, 255, 255)
				},
				SubMaterials = {
					{ Id = 27, Material = "sentry/15charger_fm2/skin0" }
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
						Position = Vector( 5, 117.7, 25.95 ),
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
						Position = Vector( -5, 117.7, 25.95 ),
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
					}
				}
			}
		}
	},
    {
		Category = "Grille Lighting",
		Options = {
			{
				Option = "Lower",
				Components = {
					{
						Component = "oss_laf150_lrpd",
						Position = Vector( -13.1, 120, 13 ),
						BodyGroups = {
							["bracket"] = 0,
							["mount"] = 0,
						},
						Angles = Angle( 180, 0, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[1] = "sentry/shared/glass",
							[2] = "sentry/shared/glass"
						},
					},
					{
						Component = "oss_laf150_lrpd",
						Position = Vector( 13.1, 120, 13  ),
						BodyGroups = {
							["bracket"] = 0,
							["mount"] = 0,
						},
						Angles = Angle( 180, 0, 0 ),
						Scale = 0.9,
                        Phase = 180,
						SubMaterials = {
							[1] = "sentry/shared/glass",
							[2] = "sentry/shared/glass"
						},
					},
				}
			},
            {
				Option = "Upper",
				Components = {
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( 15, 115.5, 33.5 ),
						Angles = Angle( 1, -8, 0 ),
						Scale = 0.8,
                        Phase = 180,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( -15, 115.5, 33.5 ),
						Angles = Angle( -1, 8, 0 ),
						Scale = 0.8,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
					},
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
						Position = Vector( 0, 21, 63 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.1,
						Options = {
							Width = 7.5,
							Angle = 10
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					}
				}
			},
		}
	},
    {
		Category = "Rear Deck Lighting",
		Options = {
            {
				Option = "Signalmaster",
				Components = {
					{
						Component = "photon_fedsig_cn_signalmaster_lrpd",
						Position = Vector( 0, -79, 55.55 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
			},
        }
	},
	{
		Category = "Side Lights",
		Options = {
			{
				Option = "Side Lights",
				Components = {
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( 46.2, 55.5, 34.8 ),
						Angles = Angle( -3, 269, 6 ),
						Scale = 0.8,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( -46.2, 55.5, 34.8 ),
						Angles = Angle( 3, 91, 6 ),
						Scale = 0.8,
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
						-- It took five hours to get these wheels exported in the correct orientation
						Model = "models/schmal/sgm_fpis13_wheels.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Bones = {
							["wheel_fl"] = { 
								Position = Vector( -2.7, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_fl" }
							},
							["wheel_fr"] = { 
								Position = Vector( -2.7, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_fr" }
							},
							["wheel_rl"] = { 
								Position = Vector( -2.7, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_rl" }
							},
							["wheel_rr"] = { 
								Position = Vector( -2.7, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_rr" }
								-- Follow = { Bone = "door_fl" }
							},
						},
					}	
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
					{ BodyGroup = "lightbar", Value = 1 },
                    { BodyGroup = "cage", Value = 1 },
					{ BodyGroup = "console", Value = 2 },
					{ BodyGroup = "spotlight_l", Value = 1 },
					{ BodyGroup = "spotlight_r", Value = 1 },
					{ BodyGroup = "grillelights", Value = 1 },
					{ BodyGroup = "rearwindowlights", Value = 1 },
					{ BodyGroup = "windowguards", Value = 2 },
                    { BodyGroup = "badge", Value = 1 },
				},
				Props = {
					{
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( 0, 20.4, 30.3 ),
						Angles = Angle( -90, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 13, 30.8 ),
						Angles = Angle( -90, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 17.8, 30.5 ),
						Angles = Angle( 0, 0, -90 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 9, 24, 64 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 0, -104, 53),
						Angles = Angle( 0.5, 90, 0 ),
						Scale = 1,
						Color = Color(0, 0, 0)
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -122.2, 19.3 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_unmarked_rear",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 124.2, 17 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 124.9, 17 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_unmarked_front",
						},
					},
					{
						Model = "models/schmal/sgm_fpis13_glass.mdl",
						Position = Vector( 0, 0, -5 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1
					}
				}
			}
		}
	},
}
