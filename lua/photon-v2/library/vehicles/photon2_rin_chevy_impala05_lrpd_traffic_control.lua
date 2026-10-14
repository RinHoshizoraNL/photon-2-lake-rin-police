if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2005 Chevrolet Impala LRPD Traffic Control"
VEHICLE.Vehicle		= "ctv_impala_2000"
VEHICLE.Category 	= "Photon 2: Lake Rin Police Dept."
VEHICLE.Author		= "Rin Hoshizora"

VEHICLE.SubMaterials = {
	[7] = "sentry/13caprice/black",
	[11] = "sentry/shared/env_cubemap_model",
	[18] = "rin/lrpd2/impala05/leather_seats",--leather_seats
	[19] = "rin/lrpd2/impala05/seats_stuff",--seats_stuff
	[20] = "rin/lrpd2/impala05/dashboard",
	[21] = "rin/lrpd2/impala05/plastic_leather",--plastic_leather
	[24] = "rin/lrpd2/impala05/interior",
	[27] = "sentry/shared/glass",
	[28] = "sentry/shared/glass",
}

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Traffic Control",
				SubMaterials = {
					{ Id = 16, Material = "rin/lrpd2/impala05/traffic_control" }
				}
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
            {
				Option = "Patlite AXS-12",
				Components = {
					{
                        Component = "patlite_axs12",
                        Position = Vector( 0, -2, 70.5 ),
                        Angles = Angle( -1, -90, 0 ),
                        Scale = 1.3,
						States = {
							[1] = "A",
							[2] = "A",
							[3] = "A",
							[4] = "A",
						},
                        Options = {
                            FeetWidthOffset = 1,
                            FeetTilt = -2,
                        },
						SubMaterials = {
							[12] = "sentry/props/glass/amber"
						},
                    },
					{
						Component = "photon_whe_500_lrpd",
						Position = Vector( 0, -56, 53 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 0.9,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
				Props = {
					{
						Model = "models/schmal/antenna_gps.mdl",
						Position = Vector( -18.7, -56, 48),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 2),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_gps.mdl",
						Position = Vector( 18.7, -56, 48),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 2),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
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
					{ BodyGroup = "rim options", Value = 0 },
				},
			},
			{
				Option = "Steelies",
				BodyGroups = {
					{ BodyGroup = "rim options", Value = 1 },
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
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 9, 29.5, 60),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -1, 39, 27.5 ),
						Angles = Angle( -5, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( -1, 37.5, 23.2 ),
						Angles = Angle( 0, 0, -25 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -113.8, 26.8 ),
						Angles = Angle( -5.8, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
                    {
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 127.7, 20 ),
						Angles = Angle( 2, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 128.5, 20 ),
						Angles = Angle( 2, 90, 0 ),
						Scale = 0.98,
						SubMaterials = {
							[1] = "rin/lrpd2/props/plate_police",
						},
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -25, 69),
						Angles = Angle( 0, 0, 2 ),
						Scale = 1
					},
                    {
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -93, 51.7),
						Angles = Angle( 0, 0, 2 ),
						Scale = 1
					},
				}
			}
		}
	},
}