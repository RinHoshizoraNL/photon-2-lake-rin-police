if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1987 Ford Crown Victoria LRPD"
VEHICLE.Vehicle		= "87ltd_sgm"
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
					{ Id = 2, Material = "rin/lrpd2/crownvic87/seats_blue" },
					{ Id = 3, Material = "rin/lrpd2/crownvic87/doors_blue" },
					{ Id = 6, Material = "rin/lrpd2/crownvic87/dash_blue" },
					{ Id = 7, Material = "rin/lrpd2/crownvic87/patrol" },
				},
			},
			{
				Option = "K-9 Unit",
				SubMaterials = {
					{ Id = 2, Material = "rin/lrpd2/crownvic87/seats_blue" },
					{ Id = 3, Material = "rin/lrpd2/crownvic87/doors_blue" },
					{ Id = 6, Material = "rin/lrpd2/crownvic87/dash_blue" },
					{ Id = 7, Material = "rin/lrpd2/crownvic87/k9" },
				},
			},
            {
				Option = "Traffic Enforcement",
				SubMaterials = {
					{ Id = 2, Material = "rin/lrpd2/crownvic87/seats_blue" },
					{ Id = 3, Material = "rin/lrpd2/crownvic87/doors_blue" },
					{ Id = 6, Material = "rin/lrpd2/crownvic87/dash_blue" },
					{ Id = 7, Material = "rin/lrpd2/crownvic87/traffic" },
				},
			},
			{
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 2, Material = "rin/lrpd2/crownvic87/seats_blue" },
					{ Id = 3, Material = "rin/lrpd2/crownvic87/doors_blue" },
					{ Id = 6, Material = "rin/lrpd2/crownvic87/dash_blue" },
					{ Id = 7, Material = "rin/lrpd2/crownvic87/supervisor" },
				},
			},
			{
				Option = "Special Operations",
				SubMaterials = {
					{ Id = 2, Material = "rin/lrpd2/crownvic87/seats_blue" },
					{ Id = 3, Material = "rin/lrpd2/crownvic87/doors_blue" },
					{ Id = 6, Material = "rin/lrpd2/crownvic87/dash_blue" },
					{ Id = 7, Material = "rin/lrpd2/crownvic87/special_ops" },
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
                        Position = Vector( 0, -19, 67 ),
                        Angles = Angle( 0, -90, 0 ),
                        Scale = 1.2,
						States = {
							[1] = "B",
							[2] = "B",
							[3] = "B",
							[4] = "B",
						},
                        Options = {
                            FeetWidthOffset = 4,
                            FeetTilt = -4,
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
		Category = "Spotlights",
		Options = {
			{
				Option = "Spotlights",
				Components = {
					{
						Component = "photon_par46_left",
						Position = Vector( -38, 25, 42 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/env_cubemap_model"
						}
					},
					{
						Component = "photon_par46_right",
						Position = Vector( 38, 25, 42 ),
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
		Category = "Push Bar",
		Options = {
			{
				Option = "Push Bar",
				Props = {
					{
						Model = "models/schmal/pushbar_cvpi96.mdl",
						Position = Vector( 0, 113, 14 ),
						Angles = Angle(),
						Scale = 1
					}
				},
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 0, 119, 25.3 ),
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
						Position = Vector( 10, 117.7, 26.2 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[3] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "koito_flasher_lrpd",
						Position = Vector( -10, 117.7, 26.2 ),
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
						Position = Vector( 0, -35, 61.6),
						Angles = Angle( 0, 0, 1.5 ),
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
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 0, -5),
						Angles = Angle( 0, 0, 0 ),
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
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -34, 112, 16.8 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
				}
			}
		}
	},
}
