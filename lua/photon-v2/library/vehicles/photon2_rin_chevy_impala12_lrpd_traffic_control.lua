if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2012 Chevrolet Impala LRPD Traffic Control"
VEHICLE.Vehicle		= "sm_chev_impalappv"
VEHICLE.Category 	= "Photon 2: Lake Rin Police Dept."
VEHICLE.Author		= "Rin Hoshizora"

VEHICLE.SubMaterials = {
	[0] = "sentry/13caprice/black",
	[2] = "sentry/13caprice/black",
	[3] = "sentry/shared/env_cubemap_model",
    [4] = "sentry/13caprice/black",
    [8] = "sentry/13caprice/int_chrome",
    [17] = "sentry/shared/glass",
    [20] = "sentry/13caprice/rim"
}

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Traffic Control",
				SubMaterials = {
					{ Id = 19, Material = "rin/lrpd2/impala12/traffic_control" }
				}
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
						Component = "photon_fedsig_legend_lrpd_traffic",
						Position = Vector( 0, -12.5, 78 ),
						Angles = Angle( 1.5, 90, 0 ),
						Scale = 0.95,
						SubMaterials = {
						[5] = "schmal/photon/fedsig_visionslr/lens_pod_4",
						[6] = "schmal/photon/fedsig_visionslr/lens_pod_4"
						},
						BodyGroups = {
							["feet"] = 1,
						},
						Bones = {
							["foot_left"] =	{ Vector( 1.3, 0, 0 ), Angle( 0, 0, 0 ), 1 },
							["foot_right"] =	{ Vector( -1.3, 0, 0 ), Angle( 0, 0, 0 ), 1 },
						},
					},
				}
			},
		}
	},
	{
		Category = "Lighting",
		Options = {
			{
				Option = "Default",
				Components = {
					{
						Component = "photon_standard_2012impala_lrpd",
					}
				}
			}
		}
	},
	{
		Category = "Dash",
		Options = {
            {
				Option = "Federal Signal X-Streams",
				Components = {
					{
						Component = "photon_fedsig_xstream_single_lrpd",
						Position = Vector( 3.7, 52.5, 52 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Phase = 180,
						States = { "A" },
						BodyGroups = {
							["shroud"] = 0,
							["mount"] = 0,
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
								["MODE2"] = {Light = "SINGLE"},
								["MODE3"] = {Light = "QUAD"},
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_xstream_single_lrpd",
						Position = Vector( -3.7, 52.5, 52 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						States = { "A" },
						BodyGroups = {
							["shroud"] = 0,
							["mount"] = 0,
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
								["MODE2"] = {Light = "SINGLE"},
								["MODE3"] = {Light = "QUAD"},
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
			},
        }
	},
	{
		Category = "Rear Deck",
		Options = {
            {
				Option = "Federal Signal X-Streams",
				Components = {
					{
						Component = "photon_fedsig_xstream_single_lrpd",
						Position = Vector( -14, -78, 60 ),
						Angles = Angle( 0, 270, 180 ),
						Scale = 1,
						Phase = 180,
						States = { "A" },
						BodyGroups = {
							["shroud"] = 1,
							["mount"] = 1,
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
								["MODE2"] = {Light = "SINGLE"},
								["MODE3"] = {Light = "QUAD"},
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_xstream_single_lrpd",
						Position = Vector( 14, -78, 60 ),
						Angles = Angle( 0, 270, 180 ),
						Scale = 1,
						States = { "A" },
						BodyGroups = {
							["shroud"] = 1,
							["mount"] = 1,
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {Light = "SLOW"},
								["MODE2"] = {Light = "SINGLE"},
								["MODE3"] = {Light = "QUAD"},
							},
						},
						RenderGroup = RENDERGROUP_OPAQUE,
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
					{ BodyGroup = "Trunk Trim", Value = 1 },
					{ BodyGroup = "Rear Door Trim", Value = 0 }
				},
				Props = {
					{
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 0, 8, 4 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
                        RenderGroup = RENDERGROUP_OPAQUE,
					},
                    {
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( 0, 18.1, 30.5 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 20.7, 32 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 15.4, 30 ),
						Angles = Angle( 0, 0, -69 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 7, 24, 69 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 0, -61, 71.4 ),
						Angles = Angle( 8, 90, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -30, 76.1),
						Angles = Angle( 0, 0, 2.5 ),
						Scale = 1
					},
                    {
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 0, -105, 59),
						Angles = Angle( -3.5, 90, 0 ),
						Scale = 1,
						Color = Color(255, 255, 255)
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -122.2, 32.5 ),
						Angles = Angle( -9, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
                    {
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 124, 23 ),
						Angles = Angle( 2, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 124.7, 22.9 ),
						Angles = Angle( 2, 90, 0 ),
						Scale = 0.98,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
				}
			}
		}
	},
}