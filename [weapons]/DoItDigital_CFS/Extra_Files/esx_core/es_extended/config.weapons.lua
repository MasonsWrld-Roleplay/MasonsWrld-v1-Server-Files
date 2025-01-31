Config.Weapons = {
    -- Do It Digital Weapons
	{
        name = 'WEAPON_CFS',
        label = ('CFS'),
        ammo = {label = _U('ammo_rounds'), hash = GetHashKey('AMMO_RIFLE')},
        components = {
            { name = 'clip_default', label = _U('component_clip_default'), hash = GetHashKey('w_ar_cfs_mag1') },
            { name = 'clip_extended', label = _U('component_clip_extended'), hash = GetHashKey('w_ar_cfs_mag2') },
            { name = 'scope', label = _U('component_scope'), hash = GetHashKey('w_at_ar_cfs_scope') },
            {name = 'suppressor',         label = _U('component_suppressor'),     hash = GetHashKey('w_at_ar_cfs_supp')},
            {name = 'grip',         label = _U('component_grip'),     hash = GetHashKey('w_at_ar_cfs_grip')},
        }
    },
}