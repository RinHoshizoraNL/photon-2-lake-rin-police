if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1992 Ford Econoline LRPD"
VEHICLE.Vehicle		= "econoline_sgm"
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
					{ Id = 21, Material = "rin/lrpd2/econoline92/patrol" },
					{ Id = 17, Material = "sentry/econoline/leather4" },
                    { Id = 5, Material = "sentry/shared/black" },
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
						Model = "models/schmal/pushbar_cvpi96.mdl",
						Position = Vector( 0, 106, 22 ),
						Angles = Angle(),
						Scale = 1
					}
				},
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 0, 111, 33.3 ),
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
						Position = Vector( 9, 110.6, 34.1 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[3] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "koito_flasher_lrpd",
						Position = Vector( -9, 110.6, 34.1 ),
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
						SubMaterials = {
							[5] = "sentry/shared/env_cubemap_model"
						}
					},
					{
						Component = "photon_par46_right",
						Position = Vector( 42, 47, 69 ),
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
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 107, 20 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 107.8, 20 ),
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