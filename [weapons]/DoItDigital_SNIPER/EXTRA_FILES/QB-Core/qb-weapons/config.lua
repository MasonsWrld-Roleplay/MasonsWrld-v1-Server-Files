Config.DurabilityMultiplier = {
	['WEAPON_M82V2'] 		= 0.15,
}


WeaponAttachments = {
    ['WEAPON_M82V2'] = {
        ['defaultclip'] = {
            component = 'w_ar_m82v2_mag1',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'w_ar_m82v2_mag1',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        --[[ ['scope'] = {
            component = 'w_at_ar_m82v2_scope',
            item = 'carbinerifle_scope',
        }, ]] -- already enabled
        ['suppressor'] = {
            component = 'w_at_ar_m82v2_supp',
            item = 'rifle_suppressor',
        },
        --[[ ['grip'] = {
            component = 'w_at_ar_m82v2_grip',
            item = 'rifle_suppressor',
        }, ]] -- already enabled
    },
}