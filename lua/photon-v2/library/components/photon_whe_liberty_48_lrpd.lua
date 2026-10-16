if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()
local sequence = Photon2.SequenceBuilder.New

COMPONENT.Author = "Photon"

COMPONENT.Credits = {
	Model = "Tyler Designs, Roegen, Schmal",
	Code = "Schmal"
}

COMPONENT.Title = [[Whelen Liberty (48") LRPD]]
COMPONENT.Category = "Lightbar"
COMPONENT.Model = "models/schmal/whelen_liberty_48.mdl"

local w = 9.3
local h = w/2

COMPONENT.States = {
	[1] = "B",
	[2] = "SW",
	[3] = "R",
	[4] = "A"
}

COMPONENT.Templates = {
	["2D"] = {
		["Main"] = {
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_detail.png").MaterialName,
			Width = w,
			Height = h,
			Scale = 1.8,
			Ratio = 1.5
		},
		["Corner"] = {
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_corner_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_corner_detail.png").MaterialName,
			Width = w * 1.1,
			Height = h * 1.1,
			Ratio = 1.8,
			Scale = 2
		},
		["Takedown"] = {
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_tkdn_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_tkdn_shape.png").MaterialName,
			Width = 2,
			Height = 2,
			Scale = 1.5
		},
		["TakedownDouble"] = {
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_tkdn_dbl_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_tkdn_dbl_shape.png").MaterialName,
			Width = 7,
			Height = 3.5,
			Scale = 1.5
		},
		["TakedownFull"] = {
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_tkdn_full_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_tkdn_full_shape.png").MaterialName,
			Width = 7,
			Height = 3.5,
			Scale = 1.5
		}
	},
	["Projected"] = {
		TakedownIllumination = {
			Material = "photon/flashlight/led_linear.png",
			Brightness = 2
		},
		-- Inner takedown only uses one projected texture
		InnerTakedown = {
			Material = "photon/flashlight/led_linear.png",
			Brightness = 4
		},
	}
}

COMPONENT.StateMap = "[1] 1 2 5 6 7 8 9 10 11 12 15 16 [2] 3 4 [3] 13 [4] 14"

-- This model is so realistic, the modules aren't even centered accurately :)
COMPONENT.Elements = {
	[1] = { "Main", Vector( 8.6, 4.02, 1.35 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_inner"] = 0 } },
	[2] = { "Main", Vector( 8.6, -4.1, 1.35 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_inner"] = 0 } },

	[3] = { "Main", Vector( 8.6, 12.08, 1.35 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_middle"] = 0 }  },
	[4] = { "Main", Vector( 8.6, -12.15, 1.35 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_middle"] = 0 } },

	[5] = { "Main", Vector( 8.6, 20.04, 1.35 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_outer"] = 0 } },
	[6] = { "Main", Vector( 8.6, -20.1, 1.35 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_outer"] = 0 } },

	[7] = { "Corner", Vector( 4.9, 30, 1.35 ), Angle( 0, -90 + 36, 0 ) },
	[8] = { "Corner", Vector( 4.9, -30, 1.35 ), Angle( 0, -90 - 36, 0 ) },

	[9] = { "Corner", Vector( -4.9, 30, 1.35 ), Angle( 0, 90 - 36, 0 ) },
	[10] = { "Corner", Vector( -4.9, -30, 1.35 ), Angle( 0, 90 + 36, 0 ) },

	[11] = { "Main", Vector( -8.6, 20.1, 1.35 ), Angle( 0, 90, 0 ), RequiredBodyGroups = { ["rear_outer"] = 0 } },
	[12] = { "Main", Vector( -8.6, -20.04, 1.35 ), Angle( 0, 90, 0 ), RequiredBodyGroups = { ["rear_outer"] = 0 } },

	[13] = { "Main", Vector( -8.6, 12.15, 1.35 ), Angle( 0, 90, 0 ), RequiredBodyGroups = { ["rear_middle"] = 0 } },
	[14] = { "Main", Vector( -8.6, -12.08, 1.35 ), Angle( 0, 90, 0 ), RequiredBodyGroups = { ["rear_middle"] = 0 } },

	[15] = { "Main", Vector( -8.6, 4.1, 1.35 ), Angle( 0, 90, 0 ), RequiredBodyGroups = { ["rear_inner"] = 0 } },
	[16] = { "Main", Vector( -8.6, -4.02, 1.35 ), Angle( 0, 90, 0 ), RequiredBodyGroups = { ["rear_inner"] = 0 } },

	[17] = { "Takedown", Vector( 0, 34.2, 1.37 ), Angle( 0, 0, 0 ) },
	[18] = { "Takedown", Vector( 0, -34.2, 1.37 ), Angle( 0, 180, 0 ) },

	[19] = { "Takedown", Vector( 8.6, 4.05, 1.38 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_inner"] = 1 } },
	[20] = { "Takedown", Vector( 8.6, -4.05, 1.38 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_inner"] = 1 } },

	[21] = { "TakedownDouble", Vector( 8.6, 4.05, 1.38 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_inner"] = 2 } },
	[22] = { "TakedownDouble", Vector( 8.6, -4.05, 1.38 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_inner"] = 2 } },

	[23] = { "TakedownFull", Vector( 8.4, 4.05, 1.38 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_inner"] = 3 } },
	[24] = { "TakedownFull", Vector( 8.4, -4.05, 1.38 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_inner"] = 3 } },

	[25] = { "Takedown", Vector( 8.6, 12.1, 1.38 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_middle"] = 1 } },
	[26] = { "Takedown", Vector( 8.6, -12.1, 1.38 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_middle"] = 1 } },

	[27] = { "TakedownDouble", Vector( 8.6, 12.1, 1.38 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_middle"] = 2 } },
	[28] = { "TakedownDouble", Vector( 8.6, -12.1, 1.38 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_middle"] = 2 } },

	[29] = { "TakedownFull", Vector( 8.4, 12.1, 1.38 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_middle"] = 3 } },
	[30] = { "TakedownFull", Vector( 8.4, -12.1, 1.38 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_middle"] = 3 } },

	[31] = { "Takedown", Vector( 8.6, 20.07, 1.38 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_outer"] = 1 } },
	[32] = { "Takedown", Vector( 8.6, -20.07, 1.38 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_outer"] = 1 } },

	[33] = { "TakedownDouble", Vector( 8.6, 20.07, 1.38 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_outer"] = 2 } },
	[34] = { "TakedownDouble", Vector( 8.6, -20.07, 1.38 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_outer"] = 2 } },

	[35] = { "TakedownFull", Vector( 8.4, 20.07, 1.38 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_outer"] = 3 } },
	[36] = { "TakedownFull", Vector( 8.4, -20.07, 1.38 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_outer"] = 3 } },

	[37] = { "TakedownIllumination", Vector( 8.6, 16.5, 1.38 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_outer"] = { 1, 2, 3 } } },
	[38] = { "TakedownIllumination", Vector( 8.6, -16.5, 1.38 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_outer"] = { 1, 2, 3 } } },
	
	[39] = { "TakedownIllumination", Vector( 8.6, 10.1, 1.38 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_middle"] = { 1, 2, 3 } } },
	[40] = { "TakedownIllumination", Vector( 8.6, -10.1, 1.38 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_middle"] = { 1, 2, 3 } } },
	
	[41] = { "TakedownIllumination", Vector( 0, 34.2, 1.37 ), Angle( 0, 0, 0 ) },
	[42] = { "TakedownIllumination", Vector( 0, -34.2, 1.37 ), Angle( 0, 180, 0 ) },
	
	[43] = { "TakedownIllumination", Vector( 8.6, 0, 1.38 ), Angle( 0, -90, 0 ), RequiredBodyGroups = { ["front_inner"] = { 1, 2, 3 } } },

}

COMPONENT.ElementGroups = {
	["TakedownLeft"] = { 19, 21, 23, 25, 27, 29, 31, 33, 35 },
	["TakedownRight"] = { 20, 22, 24, 26, 28, 30, 32, 34, 36 },
	["TakedownLeftIllum"] = { 37, 39, 43 },
	["TakedownRightIllum"] = { 38, 40, 43 },
	["AlleyLeft"] = { 17 },
	["AlleyRight"] = { 18 },
	["AlleyLeftIllum"] = { 41 },
	["AlleyRightIllum"] = { 42 }
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	Takedown = {
		Frames = {
			[1] = "3",
			[2] = "4",
			[3] = "3 4"
		},
		Sequences = {
			["ALT"] = sequence():Alternate( 1, 2, 5 ),
			["TRIPLE_FLASH"] = sequence():TripleFlash( 1, 2 ),
			["ILLUM"] = { 3 }
		}
	},
	Alley = {
		Frames = {
			[1] = "[W] AlleyLeft",
			[2] = "[W] AlleyRight",
		},
		Sequences = {
			["ALT"] = sequence():Alternate( 1, 2, 7 ),
			["TRIPLE_FLASH"] = sequence():TripleFlash( 1, 2 ),
		}
	},
	AlleyLeft = {
		Frames = {
			[1] = "[W] AlleyLeft",
			[2] = "[W] AlleyLeft AlleyLeftIllum"
		},
		Sequences = {
			["ON"] = { 1 },
			["ILLUM"] = { 2 }
		}
	},
	AlleyRight = {
		Frames = {
			[1] = "[W] AlleyRight",
			[2] = "[W] AlleyRight AlleyRightIllum"
		},
		Sequences = {
			["ON"] = { 1 },
			["ILLUM"] = { 2 }
		}
	},
	Marker = {
		Frames = {
			[1] = "7 8 9 10",
		},
		Sequences = {
			["CORNER"] = { 1 },
		}
	},
	Front = {
		FrameDuration = 1/60,
		Frames = {
			[1] = "1 6",
			[2] = "2 5",
			[3] = "1",
			[4] = "1 5",
			[5] = "5",
			[6] = "2",
			[7] = "2 6",
			[8] = "6",
		},
		Sequences = {
			["MODE3"] = { 3,0,3,0,4,0,4,0,5,0,5,0,6,0,6,0,7,0,7,0,8,0,8,0 }
		}
	},
	FrontFull = {
		Frames = {
			[1] = "1 2",
			[2] = "5 6 7 8",
			[3] = "1 5 8",
			[4] = "2 6 7",
		},
		Sequences = {
			["MODE1"] = { 1,1,1,1,1,1,1,2,2,2,2,2,2,2 },
			["MODE1ALT"] = { 3,3,3,3,3,3,3,4,4,4,4,4,4,4 },
			["MODE2"] = { 1,0,1,0,1,0,2,0,2,0,2,0,
		                  1,0,1,0,1,0,2,0,2,0,2,0,
						  1,0,1,0,1,0,2,0,2,0,2,0,
						  1,0,1,0,1,0,2,0,2,0,2,0,
						  1,1,1,2,2,2,
						  1,1,1,2,2,2,
						  1,1,1,2,2,2,
						  1,1,1,2,2,2,
						  1,1,1,2,2,2,0 }
		}
	},
	RearFull = {
		Frames = {
			[1] = "9 10 13 14",
			[2] = "11 12 15 16",
			[3] = "15 16",
			[4] = "13 14",
			[5] = "11 12",
			[6] = "9 10",
			[7] = "9 13 16 12",
			[8] = "11 15 14 10",
		},
		Sequences = {
			["MODE1"] = { 1,1,1,1,1,1,1,2,2,2,2,2,2,2 },
			["MODE1ALT"] = { 7,7,7,7,7,7,7,8,8,8,8,8,8,8 },
			["MODE2"] = { 1,0,1,0,1,0,2,0,2,0,2,0,
		                  1,0,1,0,1,0,2,0,2,0,2,0,
						  1,0,1,0,1,0,2,0,2,0,2,0,
						  1,0,1,0,1,0,2,0,2,0,2,0,
						  1,1,1,2,2,2,
						  1,1,1,2,2,2,
						  1,1,1,2,2,2,
						  1,1,1,2,2,2,
						  1,1,1,2,2,2,0 }
		}
	},
	Rear = {
		FrameDuration = 1/60,
		Frames = {
			[1] = "9 11 13 15",
			[2] = "10 12 14 16",
			[3] = "15",
			[4] = "15 13",
			[5] = "15 13 11",
			[6] = "13 11",
			[7] = "16",
			[8] = "16 14",
			[9] = "16 14 12",
			[10] = "14 12",
		},
		Sequences = {
			["ON"] = { 1 },
			["MODE3"] = { 3,0,3,0,4,0,4,0,5,0,5,0,6,0,6,0,7,0,7,0,8,0,8,0,9,0,9,0,10,0,10,0 },
		}
	},
	Corners = {
		Frames = {
			[1] = "8 10",
			[2] = "7 9",
		},
		Sequences = {
			["ON"] = { 1 },
			["MODE3"] = { 1,0,1,0,1,0,2,0,2,0,2,0 },
		}
	},
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = { 
			FrontFull = "MODE1ALT",
			RearFull = "MODE1ALT",
		},
		["MODE2"] = {
			FrontFull = "MODE2",
			RearFull = "MODE2",
		},
		["MODE3"] = {
			Front = "MODE3",
			Rear = "MODE3",
			Corners = "MODE3",
			Takedown = "ALT"
		}
	},
	["Emergency.SceneForward"] = {
		["ON"] = {
			Takedown = "ILLUM"
		},
		["FLOOD"] = {
			Takedown = "ILLUM"
		}
	},
	["Emergency.SceneLeft"] = {
		["ON"] = {
			AlleyLeft = "ILLUM"
		},
	},
	["Emergency.SceneRight"] = {
		["ON"] = {
			AlleyRight = "ILLUM"
		}
	},
	["Emergency.Marker"] = {
		["ON"] = {
			Marker = "CORNER"
		}
	},
}