if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "Schmal"

COMPONENT.Credits = {
	-- Inner modules from RoegonTV
	Model = "RoegonTV, Schmal",
	Code = "Schmal/Mahooter"
}

COMPONENT.Title = [[Federal Signal Legend (45") LRPD Traffic Control]]
COMPONENT.Category = "Lightbar"
COMPONENT.Model = "models/schmal/fedsig_legend_45.mdl"


-- COMPONENT.Deprecated = {
-- 	Description = "New model with body-grouped mounting options and mesh tweaks.",
-- 	Use = "photon_fedsig_legend_45"
-- }

COMPONENT.Preview = {
	Position = Vector(),
	Angles = Angle( 0, 180, 0 ),
	Zoom = 1
}

COMPONENT.Templates = {
	["2D"] = {
		Main = {
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/legend_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/legend_shape.png").MaterialName,
			Width = 6.5,
			Height = 3.25,
			Scale = 1.5
		},
		Narrow = {
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/legend_narrow_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/legend_narrow_shape.png").MaterialName,
			Width = 3.25,
			Height = 3.25,
			Scale = 1
		},
		HotFoot = {
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/visionslr_sm_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/visionslr_sm_shape.png").MaterialName,
			Width = 5.7,
			Height = 5.7/2,
			Scale = 1,
			States = {
				DW = { Inherit = "W", Intensity = 0.4 }
			}
		}
	},
	["Projected"] = {
		TakedownIllumination = {
			Brightness = 2
		},
		AlleyIllumination = {
			Brightness = 1,
			FOV = 45
		}
	}
}

COMPONENT.StateMap = "[R] 23 [A] 1 2 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 25 26 [W] 3 4 13 14 27 28 29 30 31 32 33 [B] 24"

COMPONENT.Elements = {
	[1] = { "Main", Vector( 6.7, 3.85, 0.15 ), Angle( 0, -90, 0 ) },
	[2] = { "Main", Vector( 6.7, -3.85, 0.15 ), Angle( 0, -90, 0 ) },

	[3] = { "Main", Vector( 6.7, 10.6, 0.15 ), Angle( 0, -90, 0 ) },
	[4] = { "Main", Vector( 6.7, -10.6, 0.15 ), Angle( 0, -90, 0 ) },

	[5] = { "Main", Vector( 6.7, 17.4, 0.15 ), Angle( 0, -90, 0 ) },
	[6] = { "Main", Vector( 6.7, -17.4, 0.15 ), Angle( 0, -90, 0 ) },

	[7] = { "Narrow", Vector( 6.49, 22.9, 0.15 ), Angle( 0, -79, 0 ), Width = 2.5 },
	[8] = { "Narrow", Vector( 6.49, -22.9, 0.15 ), Angle( 0, -101, 0 ), Width = 2.5 },

	[9] = { "Narrow", Vector( 5.3, 25.8, 0.15 ), Angle( 0, -56, 0 ), Width = 2.5 },
	[10] = { "Narrow", Vector( 5.3, -25.8, 0.15 ), Angle( 0, -124, 0 ), Width = 2.5 },

	[11] = { "Narrow", Vector( 3.3, 28, 0.15 ), Angle( 0, -28, 0 ), Width = 1.9 },
	[12] = { "Narrow", Vector( 3.3, -28, 0.15 ), Angle( 0, -152, 0 ), Width = 1.9 },

	[13] = { "Narrow", Vector( 0, 28.8, 0.15 ), Angle( 0, 0, 0 ), Width = 2.4 },
	[14] = { "Narrow", Vector( 0, -28.8, 0.15 ), Angle( 0, -180, 0 ), Width = 2.4 },

	[15] = { "Narrow", Vector( -3.3, 28, 0.15 ), Angle( 0, 28, 0 ), Width = 1.9 },
	[16] = { "Narrow", Vector( -3.3, -28, 0.15 ), Angle( 0, 152, 0 ), Width = 1.9 },

	[17] = { "Narrow", Vector( -5.3, 25.8, 0.15 ), Angle( 0, 56, 0 ), Width = 2.5 },
	[18] = { "Narrow", Vector( -5.3, -25.8, 0.15 ), Angle( 0, 124, 0 ), Width = 2.5 },

	[19] = { "Narrow", Vector( -6.49, 22.9, 0.15 ), Angle( 0, 79, 0 ), Width = 2.5 },
	[20] = { "Narrow", Vector( -6.49, -22.9, 0.15 ), Angle( 0, 101, 0 ), Width = 2.5 },

	[21] = { "Main", Vector( -6.7, 17.4, 0.15 ), Angle( 0, 90, 0 ) },
	[22] = { "Main", Vector( -6.7, -17.4, 0.15 ), Angle( 0, 90, 0 ) },

	[23] = { "Main", Vector( -6.7, 10.6, 0.15 ), Angle( 0, 90, 0 ) },
	[24] = { "Main", Vector( -6.7, -10.6, 0.15 ), Angle( 0, 90, 0 ) },

	[25] = { "Main", Vector( -6.7, 3.85, 0.15 ), Angle( 0, 90, 0 ) },
	[26] = { "Main", Vector( -6.7, -3.85, 0.15 ), Angle( 0, 90, 0 ) },

	[27] = { "HotFoot", Vector( 7.2, 28, -2.4 ), Angle( 0, -90, 0 ) },
	[28] = { "HotFoot", Vector( 7.2, -28, -2.4 ), Angle( 0, -90, 0 ) },

	[29] = { "HotFoot", Vector( -4.5, 31, -2.4 ), Angle( 0, -10, 0 ) },
	[30] = { "HotFoot", Vector( -4.5, -31, -2.4 ), Angle( 0, 190, 0 ) },

	[31] = { "TakedownIllumination", Vector( 6.7, 0, 0.15 ), Angle( 0, -90, 0 ) },

	[32] = { "AlleyIllumination", Vector( 0, 28.8, 0.15 ), Angle( 15, 0, 0 ) },
	[33] = { "AlleyIllumination", Vector( 0, -28.8, 0.155 ), Angle( 15, -180, 0 ) },
}

COMPONENT.ElementGroups = {
	["#A"] = { 1, 2, 25, 26 },
	["#B"] = { 3, 4, 23, 24 },
	["#C"] = { 5, 6, 21, 22 },
	["#D"] = { 7, 9, 11, 15, 17, 19, 8, 10, 12, 16, 18, 20 },
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.ElementStates = {
	["2D"] = {
		["~OFF"] = {
			Intensity = 0,
			IntensityTransitions = true,
			IntensityGainFactor = 9,
			IntensityLossFactor = 12,
		},
	},
}

COMPONENT.Segments = {
	Main_F_M1 = {
		FrameDuration = 1/30,
		Frames = {
			[1] = "1:A 2:A",
			[2] = "1:A 2:A 3:W 4:W",
			[3] = "1:A 2:A 3:W 4:W 5:A 6:A",
			[4] = "1:A 2:A 3:W 4:W 5:A 6:A 7:A 8:A 9:A 10:A 11:A 12:A",
			[5] = "3:W 4:W 5:A 6:A 7:A 8:A 9:A 10:A 11:A 12:A",
			[6] = "5:A 6:A 7:A 8:A 9:A 10:A 11:A 12:A",
			[7] = "7:A 8:A 9:A 10:A 11:A 12:A",
			[8] = "7:A 8:A 9:A 10:A 11:A 12:A 13:A 14:A 15:A 16:A 17:A 18:A 19:A 20:A",
			[9] = "5:A 6:A 21:A 22:A",
			[10] = "3:A 4:A 23:R 24:B",
			[11] = "1:A 2:A 25:A 26:A",
		},
		Sequences = {
			["ON"] = {
				1,1,2,2,3,3,4,4,5,5,6,6,7,7,0,0,7,7,6,6,5,5,4,4,3,3,2,2,1,1
			},
			["ALT"] = {
				8,8,8,8,9,9,9,9,10,10,10,10,11,11,11,11,10,10,10,10,9,9,9,9
			},
		}
	},
	Main_F_M2 = {
		FrameDuration = 1/30,
		Frames = {
			[1] = "8:A 10:A 12:A",
			[2] = "6:A 8:A 10:A 12:A",
			[3] = "4:A 6:A 8:A 10:A 12:A",
			[4] = "2:A 4:W 6:A 8:A 10:A 12:A",
			[5] = "2:A 4:W 6:A",
			[6] = "2:A 4:W",
			[7] = "2:A",
			[8] = "7:A 9:A 11:A",
			[9] = "5:A 7:A 9:A 11:A",
			[10] = "3:A 5:A 7:A 9:A 11:A",
			[11] = "1:A 3:W 5:A 7:A 9:A 11:A",
			[12] = "1:A 3:W 5:A",
			[13] = "1:A 3:W",
			[14] = "1:A",
			[15] = "1:A 25:A",
			[16] = "3:W 23:R",
			[17] = "5:A 21:A",
			[18] = "7:A 9:A 11:A 13:A 15:A 17:A 19:A",
			[19] = "2:A 26:A",
			[20] = "4:W 24:B",
			[21] = "6:A 22:A",
			[22] = "8:A 10:A 12:A 14:A 16:A 18:A 20:A",
		},
		Sequences = {
			["ON"] = {
				1,2,3,4,4,4,4,5,6,7,0,8,9,10,11,11,11,11,12,13,14
			},
			["ALT"] = {
				15,15,16,16,17,17,18,18,19,19,20,20,21,21,22,22
			},
		}
	},
	Main_M3_Inner = {
		FrameDuration = 1/30,
		Frames = {
			[0] = "[~OFF] 1 2 3 4 25 26 23 24",
			[1] = "[OFF] 1 2 3 4 25 26 23 24",
			[2] = "1 2 25 26", --outer
			[3] = "3 4 23 24", --middle
			[4] = "1 2 3 4 25 26 23 24", --all
			[5] = "1 2 25 26", --outer
			[6] = "3 4 23 24", --middle
			[7] = "1 2 3 4 25 26 23 24", --all
		},
		Sequences = {
			ON = {
				5,5,
				0,
				3,3,3,3,
				0,0,
				6,
				4,
				2,2,
				4,
				3,3,
				0,
				5,5,
				1,1,
			 },
		},
	},
	Main_R_M1 = {
		FrameDuration = 1/30,
		Frames = {
			[1] = "25:A 26:A",
			[2] = "25:A 26:A 23:R 24:B",
			[3] = "25:A 26:A 23:R 24:B 21:A 22:A",
			[4] = "25:A 26:A 23:R 24:B 21:A 22:A 19:A 20:A 17:A 18:A 15:A 16:A",
			[5] = "23:R 24:B 21:A 22:A 19:A 20:A 17:A 18:A 15:A 16:A",
			[6] = "21:A 22:A 19:A 20:A 17:A 18:A 15:A 16:A",
			[7] = "19:A 20:A 17:A 18:A 15:A 16:A",
		},
		Sequences = {
			["ON"] = {
				1,1,2,2,3,3,4,4,5,5,6,6,7,7,0,0,7,7,6,6,5,5,4,4,3,3,2,2,1,1
			},
		}
	},
	Main_R_M2 = {
		FrameDuration = 1/30,
		Frames = {
			[1] = "16:A 18:A 20:A",
			[2] = "22:A 16:A 18:A 20:A",
			[3] = "24:B 22:A 16:A 18:A 20:A",
			[4] = "26:A 24:B 22:A 16:A 18:A 20:A",
			[5] = "26:A 24:B 22:A",
			[6] = "26:A 24:B",
			[7] = "26:A",
			[8] = "19:A 17:A 15:A",
			[9] = "21:A 19:A 17:A 15:A",
			[10] = "23:R 21:A 19:A 17:A 15:A",
			[11] = "25:A 23:R 21:A 19:A 17:A 15:A",
			[12] = "25:A 23:A 21:A",
			[13] = "25:A 23:R",
			[14] = "25:A",
			[15] = "7:A 8:A 19:A 20:A",
			[16] = "9:A 10:A 17:A 18:A",
			[17] = "11:A 12:A 15:A 16:A",
			[18] = "13:A 14:A",
		},
		Sequences = {
			["ON"] = {
				1,2,3,4,4,4,4,5,6,7,0,8,9,10,11,11,11,11,12,13,14
			},
			["ALT"] = {
				18,18,18,17,17,17,16,16,16,15,15,15
			},
		}
	},
	Main_M3_Outer = {
		FrameDuration = 1/25,
		Frames = {
			[1] = "5:A 6:A",
			[2] = "7:A 8:A 9:A 10:A",
			[3] = "11:A 12:A 15:A 16:A",
			[4] = "17:A 18:A 19:A 20:A",
			[5] = "21:A 22:A",
			[6] = "5:A",
			[7] = "7:A",
			[8] = "9:A",
			[9] = "11:A",
			[10] = "13:A",
			[11] = "15:A",
			[12] = "17:A",
			[13] = "19:A",
			[14] = "21:A",
			[15] = "6:A",
			[16] = "8:A",
			[17] = "10:A",
			[18] = "12:A",
			[19] = "14:A",
			[20] = "16:A",
			[21] = "18:A",
			[22] = "20:A",
			[23] = "22:A",
			[24] = "5:A",
			[25] = "5:A 7:A",
			[26] = "5:A 7:A 9:A",
			[27] = "5:A 7:A 9:A 11:A",
			[28] = "5:A 7:A 9:A 11:A 13:A",
			[29] = "5:A 7:A 9:A 11:A 13:A 15:A",
			[30] = "5:A 7:A 9:A 11:A 13:A 15:A 17:A",
			[31] = "5:A 7:A 9:A 11:A 13:A 15:A 17:A 19:A",
			[32] = "5:A 7:A 9:A 11:A 13:A 15:A 17:A 19:A 21:A",
			[33] = "7:A 9:A 11:A 13:A 15:A 17:A 19:A 21:A",
			[34] = "9:A 11:A 13:A 15:A 17:A 19:A 21:A",
			[35] = "11:A 13:A 15:A 17:A 19:A 21:A",
			[36] = "13:A 15:A 17:A 19:A 21:A",
			[37] = "15:A 17:A 19:A 21:A",
			[38] = "17:A 19:A 21:A",
			[39] = "19:A 21:A",
			[40] = "21:A",
			[41] = "6:A",
			[42] = "6:A 8:A",
			[43] = "6:A 8:A 10:A",
			[44] = "6:A 8:A 10:A 12:A",
			[45] = "6:A 8:A 10:A 12:A 14:A",
			[46] = "6:A 8:A 10:A 12:A 14:A 16:A",
			[47] = "6:A 8:A 10:A 12:A 14:A 16:A 18:A",
			[48] = "6:A 8:A 10:A 12:A 14:A 16:A 18:A 20:A",
			[49] = "6:A 8:A 10:A 12:A 14:A 16:A 18:A 20:A 22:A",
			[50] = "8:A 10:A 12:A 14:A 16:A 18:A 20:A 22:A",
			[51] = "10:A 12:A 14:A 16:A 18:A 20:A 22:A",
			[52] = "12:A 14:A 16:A 18:A 20:A 22:A",
			[53] = "14:A 16:A 18:A 20:A 22:A",
			[54] = "16:A 18:A 20:A 22:A",
			[55] = "18:A 20:A 22:A",
			[56] = "20:A 22:A",
			[57] = "22:A",
		},
		Sequences = {
			["ON"] = {
				1,2,3,4,5,0,5,4,3,2,1
			},
			["SWEEP"] = {
				24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57
			},
			["SWEEP_ALT"] = {
				6,7,8,9,10,11,12,13,14,0,15,16,17,18,19,20,21,22,23
			},
		}
	},
	SignalMaster = {
		Frames = {
			[1] = "22:A",
			[2] = "22:A 24:A",
			[3] = "22:A 24:A 26:A",
			[4] = "22:A 24:A 26:A 25:A",
			[5] = "22:A 24:A 26:A 25:A 23:A",
			[6] = "22:A 24:A 26:A 25:A 23:A 21:A",
			[7] = "24:A 26:A 25:A 23:A 21:A",
			[8] = "26:A 25:A 23:A 21:A",
			[9] = "25:A 23:A 21:A",
			[10] = "23:A 21:A",
			[11] = "21:A",
			[12] = "25:A 26:A",
			[13] = "23:A 25:A 26:A 24:A",
			[14] = "21:A 23:A 25:A 26:A 24:A 22:A",
			[15] = "21:A 23:A 24:A 22:A",
			[16] = "21:A 22:A",
		},
		Sequences = {
			["RIGHT"] = { 11,11,10,10,9,9,8,8,7,7,6,6,5,5,4,4,3,3,2,2,1,1,0,1,0,1,0,1,0,1,0 },
			["LEFT"] = { 1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10,11,11,0,11,0,11,0,11,0,11,0 },
			["CENOUT"] = { 12,12,12,13,13,13,14,14,14,15,15,15,16,16,16,0,16,0,16,0,16,0,16,0 },
		}
	},
	SceneLeft = {
		Frames = {
			[1] = "13 29 32",
		},
		Sequences = {
			["ON"] = { 1 },
		}
	},
	SceneRight = {
		Frames = {
			[1] = "14 30 33",
		},
		Sequences = {
			["ON"] = { 1 },
		}
	},
	SceneForward = {
		Frames = {
			[1] = "3 4 27 28",
		},
		Sequences = {
			["ON"] = { 1 },
		}
	},
	["Turnsig"] = {
		Frames = {
			[1] = "21:A",
			[2] = "22:A",
			[3] = "21:A 22:A",
		},
		Sequences = {
			["LEFT"] = { 1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0 },
			["RIGHT"] = { 2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0 },
			["HAZARD"] = { 3,3,3,3,3,3,3,3,0,0,0,0,0,0,0,0 },
		}
	},
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = {
			Main_F_M1 = "ALT",
			--Main_R_M1 = "ON",
		},
		["MODE2"] = {
			Main_F_M2 = "ALT",
			--Main_R_M2 = "ALT",
		},
		["MODE3"] = {
			Main_M3_Inner = "ON",
			Main_M3_Outer = "ON",
		},
	},
	["Emergency.Directional"] = {
		["LEFT"] = { SignalMaster = "LEFT" },
		["RIGHT"] = { SignalMaster = "RIGHT" },
		["CENOUT"] = { SignalMaster = "CENOUT" },
	},
	["Emergency.SceneLeft"] = {
		["ON"] = { SceneLeft = "ON" }
	},
	["Emergency.SceneRight"] = {
		["ON"] = { SceneRight = "ON" }
	},
	["Emergency.SceneForward"] = {
		["ON"] = { SceneForward = "ON" }
	},
	["Vehicle.Signal"] = {
		["LEFT"] = {
			Turnsig = "LEFT",
		},
		["RIGHT"] = {
			Turnsig = "RIGHT",
		},
		["HAZARD"] = {
			Turnsig = "HAZARD",
		}
	},
}