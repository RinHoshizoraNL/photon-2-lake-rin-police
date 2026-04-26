if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "Westward Go-4 Interceptor LRPD"
VEHICLE.Vehicle		= "go4_sgm"
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
					{ Id = 14, Material = "rin/lrpd2/go4/patrol" }
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
						Position = Vector( 0, 49.6, 25.5 ),
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
		Category = "Lightbar",
		Options = {
            {
				Option = "Patlite AJS-12",
				Components = {
					{
                        Component = "patlite_ajs12",
                        Position = Vector( 0, -19, 85.7 ),
                        Angles = Angle( -2, -90, 0 ),
                        Scale = 0.95,
						States = {
							[1] = "B",
							[2] = "B",
							[3] = "B",
							[4] = "B",
						},
                        Options = {
                            FeetWidthOffset = 0,
                            FeetTilt = 2,
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
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				Components = {
					{
						Name = "Federal Signal MB1 Controller",
						Component = "photon_fedsig_mb1_controller",
						Position = Vector( -15, 18, 39 ),
						Angles = Angle( 0, 0, 90),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
				Props = {
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 13, 12, 73.7 ),
						Angles = Angle( -2, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -27, 81.1),
						Angles = Angle( 0, 0, -2 ),
						Scale = 1
					},
					{
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( 15, 18.8, 43 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -15, 18, 42 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 15, 18.2, 40.7 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -81, 25.5 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
				}
			}
		}
	},
}