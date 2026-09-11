if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2019 Toyota Rav4 LRPD"
VEHICLE.Vehicle		= "dannio_2019_toyota_rav4"
VEHICLE.Category 	= "Photon 2: Lake Rin Police Dept."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.SubMaterials = {
    [2] = "sentry/shared/env_cubemap_model",
	[5] = "rin/lrpd2/rav4/rim",
	[12] = "sentry/shared/glass",
	[16] = "sentry/shared/glass",
}

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
    {
		Category = "Livery",
		Options = {
			{
				Option = "Patrol",
				SubMaterials = {
					{ Id = 11, Material = "rin/lrpd2/rav4/patrol" },
					{ Id = 26, Material = "rin/lrpd2/rav4/glass_patrol" },
				},
				BodyGroups = {
					{ BodyGroup = "Skin glass", Value = 1 }
				},
			},
			{
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 11, Material = "rin/lrpd2/rav4/supervisor" },
					{ Id = 26, Material = "rin/lrpd2/rav4/glass_supervisor" },
				},
				BodyGroups = {
					{ BodyGroup = "Skin glass", Value = 1 }
				},
			},
			{
				Option = "Forensics",
				SubMaterials = {
					{ Id = 11, Material = "rin/lrpd2/rav4/forensics" },
					{ Id = 26, Material = "rin/lrpd2/rav4/glass_forensics" },
				},
				BodyGroups = {
					{ BodyGroup = "Skin glass", Value = 1 }
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
						Position = Vector( 0, 104.3, 34.5 ),
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
				Option = "Federal Signal Valor",
				Components = {
					{
						Component = "photon_fedsig_valor_44_lrpd",
						Position = Vector( 0.2, -11, 81.5 ),
						Angles = Angle( 2.7, 90, 0 ),
						Scale = 0.97,
						BodyGroups = {
							["feet"] = 1,
						},
						Bones = {
							["valor_44_feet_left"] =	{ Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), 1 },
							["valor_44_feet_right"] =	{ Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), 1 },
							["valor_44_mount_left"] =	{ Vector( 0.1, 0, 0 ), Angle( 0, 0, 0 ), 1 },
							["valor_44_mount_right"] =	{ Vector( -0.3, 0, 0 ), Angle( 0, 0, 0 ), 1 },
						}
					},
				}
			}
		}
	},
	{
		Category = "Lightbar Equipment",
		Options = {
			{
				Option = "Federal Signal Opticom",
				Components = {
					{
						Component = "photon_fedsig_opticom795",
						Position = Vector( 15, -13, 80 ),
						Angles = Angle( -2.7, -90, 0 ),
						Scale = 0.15
					}
				}
			}
		}
	},
	{
		Category = "Grille",
		Options = {
            {
				Option = "Patlite LP5",  
				Components = {
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( 11.5, 108, 36.2 ),
						Angles = Angle( 0, -2, 0 ),
						Scale = 0.7,
						Phase = 180,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( -11, 108, 36.2 ),
						Angles = Angle( 0, 2, 0 ),
						Scale = 0.7,
						SubMaterials = {
							[5] = "schmal/photon/fedsig_legend/dome_r"
						},
					},
				},
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
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( 34.7, -64.5, 59.8 ),
						Angles = Angle( -3, -95, 0 ),
						Scale = 0.9,
						Phase = 180,
						SubMaterials = {
							[5] = "sentry/shared/glass"
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_patlite_lp5_lrpd",
						Position = Vector( -34.2, -64.5, 59.8 ),
						Angles = Angle( 3, 95, 0 ),
						Scale = 0.9,
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
						Name = "Federal Signal MB1",
						Component = "photon_fedsig_mb1",
						Position = Vector( 0.5, -86, 67.1 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				    {
						Component = "photon_sos_ford96t_lrpd",
						Position = Vector( 0.5, -89, 71.5 ),
						Angles = Angle( 0, -90, 0 ),
						Bones = {
							["ford_96t_left"] = { Vector( 0, -16.5, 0 ), Angle( 0, -6, 0 ) },
							["ford_96t_right"] = { Vector( 0, 16.5, 0 ), Angle( 0, 6, 0 ) },
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
				Props = {
					{
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( 0, 26.5, 38 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 26, 40.1 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 7, 20, 71.8 ),
						Angles = Angle( 8, 268.5, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necmdt.mdl",
						Position = Vector( 15, 25, 49 ),
						Angles = Angle( -5, 272, 0 ),
						Scale = 0.8,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -35, 79.7),
						Angles = Angle( 0, 0, -0.5 ),
						Scale = 1
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 25, -11.6, 82),
						Angles = Angle( 0, 0, -2 ),
						Scale = 1
					},
					{
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 0, -52, 79.2),
						Angles = Angle( -2, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0.5, -105.5, 45 ),
						Angles = Angle( -10, -90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0.5, 109.5, 24.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0.5, 110.2, 24.5 ),
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