Config.Weapons = {
	{
		name = 'WEAPON_M270D',
		label = ('M270D'),
		ammo = { label = _U('ammo_rounds'), hash = `AMMO_PISTOL` },
		components = {
			{ name = 'clip_default',  		label = _U('component_clip_default'), 			hash = `w_sb_m270d_mag1`		},
            { name = 'clip_extended', 		label = _U('component_clip_extended'), 			hash = `w_sb_m270d_mag2`	},
			{ name = 'scope', 				label = _U('component_scope'), 					hash = `w_at_m270d_scope`	},
			{ name = 'suppressor',    		label = _U('component_suppressor'),     		hash = `w_sb_m270d_supp`	},
			{ name = 'flashlight',    		label = _U('component_flashlight'),     		hash = `w_at_m270d_flsh`	},
		}
	},
}