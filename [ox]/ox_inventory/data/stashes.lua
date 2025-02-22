return {
	{
		coords = vec3(452.3, -991.4, 30.7),
		target = {
			loc = vec3(451.25, -994.28, 30.69),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Open personal locker'
		},
		name = 'policelocker',
		label = 'Personal locker',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = shared.police
	},

	{
		coords = vec3(550.62, 118.63, 96.57),
		target = {
			loc = vec3(550.62, 118.63, 96.57),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Open personal locker'
		},
		name = 'Dominos',
		label = 'Dominos stock',
		owner = true,
		slots = 70,
		weight = 700000,
		groups = {['dominos'] = 0}
	},

	{
		coords = vec3(350.58, -927.91, 29.45),
		target = {
			loc = vec3(350.58, -927.91, 29.45),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Open personal locker'
		},
		name = 'Taco',
		label = 'Taco Stock',
		owner = true,
		slots = 70,
		weight = 700000,
		groups = {['taco'] = 0}
	},

	{
		coords = vec3(-936.37, -1168.07, 5.06),
		target = {
			loc = vec3(350.58, -927.91, 29.45),
			length = 1.2,
			width = 5.6,
			heading = 0,
			minZ = 29.49,
			maxZ = 32.09,
			label = 'Open personal locker'
		},
		name = 'cookies',
		label = 'cookies stock',
		owner = false,
		slots = 200,
		weight = 700000000,
		groups = {['cookies'] = 0}
	},


	{
		coords = vec3(301.3, -600.23, 43.28),
		target = {
			loc = vec3(301.82, -600.99, 43.29),
			length = 0.6,
			width = 1.8,
			heading = 340,
			minZ = 43.34,
			maxZ = 44.74,
			label = 'Open personal locker'
		},
		name = 'emslocker',
		label = 'Personal Locker',
		owner = true,
		slots = 70,
		weight = 70000,
		groups = {['ambulance'] = 0}
	},
}
