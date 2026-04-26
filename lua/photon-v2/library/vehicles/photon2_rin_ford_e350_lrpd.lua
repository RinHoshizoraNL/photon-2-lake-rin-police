if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2014 Ford E350 LRPD"
VEHICLE.Vehicle		= "e350_vanbulance_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Police Dept."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Transit Safety",
				SubMaterials = {
					{ Id = 20, Material = "rin/lrpd2/e350/transit" },
                },
			},
			{
				Option = "Don't Text & Drive Campaign",
				SubMaterials = {
					{ Id = 20, Material = "rin/lrpd2/e350/texting" },
                },
			},
			{
				Option = "Special Operations",
				SubMaterials = {
					{ Id = 20, Material = "rin/lrpd2/e350/semi_marked" },
                },
			},
		}
	},
    {
		Category = "Lightbar",
		Options = {
			{
				Option = "Federal Signal Legend",
				Components = {
					{
						Component = "photon_fedsig_legend_lrpd",
						Position = Vector( 0, 30, 113 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.9,
						SubMaterials = {
						[6] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
                },
                Props = {
				    {
						Model = "models/schmal/fedsig_es100.mdl",
						Position = Vector( 26.5, 34.15, 106.2 ),
						Angles = Angle( 90, 0, 0 ),
						Scale = Vector( 1.5, 0.5, 0.5 ),
						SubMaterials = {
						[0] = "sentry/cvpi_hd/black"
						},
					},
                    {
						Model = "models/schmal/fedsig_es100.mdl",
						Position = Vector( 26.5, 26, 106.2 ),
						Angles = Angle( 90, 0, 0 ),
						Scale = Vector( 1.5, 0.5, 0.5 ),
						SubMaterials = {
						[0] = "sentry/cvpi_hd/black"
						},
					},
                    {
						Model = "models/schmal/fedsig_es100.mdl",
						Position = Vector( -26.5, 34.15, 106.2 ),
						Angles = Angle( 90, 0, 0 ),
						Scale = Vector( 1.5, 0.5, 0.5 ),
						SubMaterials = {
						[0] = "sentry/cvpi_hd/black"
						},
					},
                    {
						Model = "models/schmal/fedsig_es100.mdl",
						Position = Vector( -26.5, 26, 106.2 ),
						Angles = Angle( 90, 0, 0 ),
						Scale = Vector( 1.5, 0.5, 0.5 ),
						SubMaterials = {
						[0] = "sentry/cvpi_hd/black"
						},
					},
				},
			}
		}
	},
	{
		Category = "Rear Signalmaster",
		Options = {
            {
				Option = "Signalmaster",
				Components = {
					{
						Component = "photon_fedsig_cn_signalmaster_lrpd",
						Position = Vector( 0, -122, 98.5 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.2,
						BodyGroups = {
							["mount"] = 1,
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {All = "CVPI"},
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
		Category = "Front Flashers",
		Options = {
			{
				Option = "Patlite LP3s",
				Components = {
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( 15, 117.55, 41.7 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
                        SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
								["MODE2"] = {Light = "SINGLE"},
								["MODE3"] = {Light = "QUAD"},
							},
						}
					},
					{
						Component = "photon_patlite_lp3_lrpd",
						Position = Vector( -15, 117.55, 41.7 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
								["MODE2"] = {Light = "SINGLE"},
								["MODE3"] = {Light = "QUAD"},
							},
						}
					},
				}
			},
		}
	},
	{
		Category = "Siren Speakers",
		Options = {
			{
				Option = "Sirens",
				Components = {
					{
						Name = "@siren",
						Component = "siren_prototype",
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 10, 117, 26.53 ),
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
						},
						Inputs = { 
							["Emergency.SirenParkKill"] = { ["PARK"] = {} }
						}
					},
					{
						Inherit = "@siren",
						Position = Vector( -10, 117, 26.53 ),
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
		Category = "Rear Flashers",
		Options = {
			{
				Option = "Osaka Siren LAF-150",
				Components = {
					{
						Component = "oss_laf150_lrpd",
						Position = Vector( -30, -122.5, 98.5 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 180, 2 ),
						Scale = 1.0,
                        SubMaterials = {
							[1] = "schmal/photon/fedsig_legend/dome_r",
							[2] = "schmal/photon/fedsig_legend/dome_r"
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
								["MODE2"] = {Light = "SINGLE"},
								["MODE3"] = {Light = "QUAD"},
							},
						}
					},
					{
						Component = "oss_laf150_lrpd",
						Position = Vector( 30, -122.5, 98.5 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 180, 2 ),
						Scale = 1.0,
						Phase = 180,
                        SubMaterials = {
							[1] = "schmal/photon/fedsig_legend/dome_r",
							[2] = "schmal/photon/fedsig_legend/dome_r"
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
								["MODE2"] = {Light = "SINGLE"},
								["MODE3"] = {Light = "QUAD"},
							},
						}
					},
                }
			},
		}
	},
	{
		Category = "Side Flashers",
		Options = {
			{
				Option = "Osaka Siren LAF-150",
				Components = {
					{
						Component = "oss_laf150_lrpd",
						Position = Vector( -38.7, -95, 98.5 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.0,
						Phase = 180,
                        SubMaterials = {
							[1] = "schmal/photon/fedsig_legend/dome_r",
							[2] = "schmal/photon/fedsig_legend/dome_r"
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
								["MODE2"] = {Light = "SINGLE"},
								["MODE3"] = {Light = "QUAD"},
							},
						}
                    },
					{
						Component = "oss_laf150_lrpd",
						Position = Vector( -38.7, 5, 98.5 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.0,
                        SubMaterials = {
							[1] = "schmal/photon/fedsig_legend/dome_r",
							[2] = "schmal/photon/fedsig_legend/dome_r"
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
								["MODE2"] = {Light = "SINGLE"},
								["MODE3"] = {Light = "QUAD"},
							},
						}
					},
					{
						Component = "oss_laf150_lrpd",
						Position = Vector( 38.7, -95, 98.5 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.0,
                        SubMaterials = {
							[1] = "schmal/photon/fedsig_legend/dome_r",
							[2] = "schmal/photon/fedsig_legend/dome_r"
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
								["MODE2"] = {Light = "SINGLE"},
								["MODE3"] = {Light = "QUAD"},
							},
						}
					},
					{
						Component = "oss_laf150_lrpd",
						Position = Vector( 38.7, 5, 98.5 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.0,
						Phase = 180,
                        SubMaterials = {
							[1] = "schmal/photon/fedsig_legend/dome_r",
							[2] = "schmal/photon/fedsig_legend/dome_r"
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
								["MODE2"] = {Light = "SINGLE"},
								["MODE3"] = {Light = "QUAD"},
							},
						}
					},
				}
			},
		}
	},
      {
		Category = "Matrix",
		Options = {
            {
				Option = "FS MB1",
				Components = {
					{
						Name = "Federal Signal MB1",
						Component = "photon_fedsig_mb1",
						Position = Vector( 0, -116, 107.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
			},

		}
	},
	{
		Category = "Equipment",
		Options = {
			{
				Option = "Equipment",
				Props = {
					{
						Model = "models/supermighty/photon/sidestep.mdl",
						Position = Vector( 0, 87, -8 ),
						Angles = Angle( 0.6, 90, 0 ),
						Scale = Vector(1.72, 0.92, 1),
					},
                    {
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -45, 114),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						BodyGroups = {
							["feet"] = 1,
						},
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, 42, 98.3),
						Angles = Angle( 0, 20, 0 ),
						Scale = 1,
					},
                    {
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 15, 42, 98.3),
						Angles = Angle( 0, 20, 0 ),
						Scale = 1,
					},
                    {
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( -15, 42, 98.3),
						Angles = Angle( 0, 20, 0 ),
						Scale = 1,
					},
                    {
						Model = "models/sentry/props/jp/necmdt.mdl",
						Position = Vector( 0, 51.8, 64),
						Angles = Angle( -12, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 16.4, -128.5, 47.5 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 124, 18.2 ),
						Angles = Angle( 1.5, 90, 0 ),
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
