Config.Weapons = {
	{
        name = 'WEAPON_GALILARV2',
        label = ('GALILARV2'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
			{ name = 'clip_default',    	label = _U('component_clip_default'),    	hash = `w_ar_galilarv2_mag1` 	},
			{ name = 'clip_extended',   	label = _U('component_clip_extended'),   	hash = `w_ar_galilarv2_mag2` 	},
			{ name = 'suppressor',    		label = _U('component_suppressor'),    		hash = `w_at_ar_galilarv2_supp`	},
			{ name = 'scope_holo',         	label = _U('component_scope_holo'),         hash = `w_at_ar_galilarv2_scope` 	},
        }
    },
}