Config.Weapons = {
	{
		name = 'WEAPON_M82V2',
		label = ('M82V2'),
		ammo = { label = _U('ammo_rounds'), hash = `AMMO_RIFLE` },
		components = {
			{ name = 'clip_default',  		label = _U('component_clip_default'), 			hash = `w_ar_m82v2_mag1`	},
			{ name = 'clip_extended',  		label = _U('component_clip_default'), 			hash = `w_ar_m82v2_mag2`	},
			{ name = 'suppressor',    		label = _U('component_suppressor'),    			hash = `w_at_ar_m82v2_supp`	},
			--{ name = 'grip',          		label = _U('component_grip'),          			hash = `w_at_ar_m82v2_grip` }, -- already enabled
			--{ name = 'scope_holo',         	label = _U('component_scope_holo'),         	hash = `w_at_ar_m82v2_scope` }, -- already enabled
		}
	},
}