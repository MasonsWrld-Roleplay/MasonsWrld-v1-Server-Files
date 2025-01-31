return {
	Weapons = {
		-- DoItDigital Assault Rifles
		['WEAPON_CFS'] = {
			label = 'CFS',
			weight = 4500,
			durability = 0.03,
			ammoname = 'ammo-rifle2',
		},
	},

	Components = {
		['at_suppressor_heavy'] = {
			label = 'Tactical Suppressor',
			weight = 280,
			type = 'muzzle',
			client = {
				component = {
					`w_at_ar_cfs_supp`,
				},
				usetime = 2500
			}
		},

		['at_grip'] = {
			label = 'Grip',
			type = 'grip',
			weight = 280,
			client = {
				component = {
					`w_at_ar_cfs_grip`,
				},
				usetime = 2500
			}
		},

		['at_clip_extended_rifle'] = {
			label = 'Extended Rifle Clip',
			type = 'magazine',
			weight = 280,
			client = {
				component = {
					`w_ar_cfs_mag2`,
				},
				usetime = 2500
			}
		},

		['at_scope_medium'] = {
			label = 'Medium Scope',
			type = 'sight',
			weight = 280,
			client = {
				component = {
					`w_at_ar_cfs_scope`,
				},
				usetime = 2500
			}
		},
	},
}
