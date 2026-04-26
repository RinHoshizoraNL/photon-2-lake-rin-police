if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1992 Ford Econoline LRPD Riot"
VEHICLE.Vehicle		= "econoline_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Police Dept."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			
			{
				Option = "Riot",
				SubMaterials = {
					{ Id = 21, Material = "rin/lrpd2/econoline92/riot" },
					{ Id = 17, Material = "sentry/econoline/leather4" },
                    { Id = 5, Material = "sentry/13caprice/rim" },
                    { Id = 6, Material = "sentry/96cvpi/black_chrome" },
				},
			},
		}
	},
    {
		Category = "Lightbar",
		Options = {
            {
				Option = "Patlite AJS-12",
				Components = {
					{
                        Component = "patlite_ajs12",
                        Position = Vector( 0, 10, 96.3 ),
                        Angles = Angle( 1.5, 90, 0 ),
                        Scale = 1.2,
						States = {
							[1] = "B",
							[2] = "B",
							[3] = "B",
							[4] = "B",
						},
                        Options = {
                            FeetWidthOffset = 4,
                            FeetTilt = -1.5,
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
		Category = "Push Bar",
		Options = {
			{
				Option = "Push Bar",
				Props = {
					{
						Model = "models/supermighty/props/nypd_esu_bumper.mdl",
						Position = Vector( 0.3, 104, 22 ),
						Angles = Angle( 0, 270, 0),
						Scale = Vector(.7, .85, .8),
                        SubMaterials = {
							[0] = "sentry/shared/black"
						}
					}
				},
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 4, 109, 14.7 ),
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
						Inherit = "@siren_speaker",
						Position = Vector( -4, 109, 14.7 ),
						Angles = Angle( 0, 270, 0 ),
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
						Component = "koito_flasher_lrpd",
						Position = Vector( 21.3, 109.8, 24 ),
						Angles = Angle( 180, 0, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[3] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "koito_flasher_lrpd",
						Position = Vector( -21.3, 109.8, 24 ),
						Angles = Angle( 180, 0, 0 ),
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
		Category = "Rear Flashers",
		Options = {
			{
				Option = "Rear Flashers",
				Components = {
					{
						Component = "koito_flasher_lrpd",
						Position = Vector( 25, -134.5, 90.8 ),
						Angles = Angle( -2, 180, -9 ),
						Scale = 1,
                        Phase = 90,
						SubMaterials = {
							[3] = "schmal/photon/fedsig_legend/dome_r"
						},
                        BodyGroups = {
							["mount"] = 1,
						},
					},
					{
						Component = "koito_flasher_lrpd",
						Position = Vector( -25, -134.5, 90.8 ),
						Angles = Angle( 2, 180, -9 ),
						Scale = 1,
						SubMaterials = {
							[3] = "schmal/photon/fedsig_legend/dome_r"
						},
                        BodyGroups = {
							["mount"] = 1,
						},
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
						Position = Vector( -42, 47, 69 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_par46_right",
						Position = Vector( 42, 47, 69 ),
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
		Category = "Equipment",
		Options = {
			{
				Option = "Equipment",
				BodyGroups = {
					{ BodyGroup = "partition", Value = 1 },
				},
                Props = {
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 55, 64.1),
						Angles = Angle( -2, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
                    {
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( -3.7, 41, 54.3 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.3,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -50, 91.6 ),
						Angles = Angle( 0, 0, 0.2 ),
						Scale = 1,
						BodyGroups = {
							["feet"] = 1,
						},
					},
                    {
						Model = "models/supermighty/photon/sidestep.mdl",
						Position = Vector( 0, 75, -11 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = Vector(1.75, 0.92, 1),
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 16.3, -150, 41.5 ),
						Angles = Angle( -5, 271, 00 ),
						Scale = 1.05,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 21.5, 111, 47.2 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
				}
			}
		}
	},
}