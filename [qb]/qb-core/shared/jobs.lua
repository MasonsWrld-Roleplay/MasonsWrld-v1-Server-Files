QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.Jobs = {
	unemployed = { label = 'MasonsWrld', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'universal credit', payment = 1000 } } },
	bus = { label = 'Bus', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Driver', payment = 50 } } },
	judge = { label = 'Honorary', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Judge', payment = 100 } } },
	lawyer = { label = 'Law Firm', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Associate', payment = 50 } } },
	reporter = { label = 'Reporter', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Journalist', payment = 50 } } },
	trucker = { label = 'Trucker', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Driver', payment = 50 } } },
	tow = { label = 'Towing', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Driver', payment = 50 } } },
	garbage = { label = 'Garbage', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Collector', payment = 50 } } },
	vineyard = { label = 'Vineyard', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Picker', payment = 50 } } },
	hotdog = { label = 'Hotdog', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Sales', payment = 50 } } },



burgershot = {
    label = 'Burgershot',
    defaultDuty = true,
    grades = {
        ['0'] = { name = 'Waiter', payment = 1000 },
        ['1'] = { name = 'Delivery Driver', payment = 1200 },
        ['2'] = { name = 'Cook', payment = 1300 },
        ['3'] = { name = 'Manager', payment = 1500 },
        ['4'] = { name = 'Owner', payment = 2000, isboss = true },
    },
},


koi = {
    label = 'Koi',
    defaultDuty = true,
    grades = {
        ['0'] = { name = 'Waiter', payment = 50 },
        ['1'] = { name = 'Apprentice Cook', payment = 75 },
        ['2'] = { name = 'Cook', payment = 100 },
        ['3'] = { name = 'Manager', payment = 100, isboss = true },
        ['4'] = { name = 'Owner', payment = 125, isboss = true },
    },
},


taco = {
    label = "Taco",
    defaultDuty = true,
    grades = {
        ['0'] = { name = 'Waiter', payment = 50 },
        ['1'] = { name = 'Delivery Driver', payment = 75 },
        ['2'] = { ame = 'Cook', payment = 100 },
        ['3'] = { name = 'Manager', payment = 100 },
        ['4'] = { name = 'Owner', payment = 125, isboss = true },
    },
},


police = {
	label = 'Met Police',
	type = 'PD',
	defaultDuty = true,
	offDutyPay = false,
	grades = {
		['0'] = { name = 'PCSO', payment = 1500 },
		['1'] = { name = 'Constable', payment = 1700 },
		['2'] = { name = 'Sergeant', payment = 2000 },
		['3'] = { name = 'Inspector', payment = 2300 },
        ['4'] = { name = 'Cheif Inspector', payment = 2600 },
        ['5'] = { name = 'Superintendant', payment = 2900 },
        ['6'] = { name = 'Cheif Superintendant', payment = 3100 },
        ['7'] = { name = 'Commander', payment = 3400 },
        ['8'] = { name = 'Assistant Commisioner', payment = 3700 },
        ['9'] = { name = 'Deputy Commisioner', payment = 4000 },
		['10'] = { name = 'Commisioner', isboss = true, payment = 4300 },
	},
},


ambulance = {
	label = 'NHS',
	type = 'NHS',
	defaultDuty = true,
	offDutyPay = false,
	grades = {
		['0'] = { name = 'Student Paramedic', payment = 1500 },
		['1'] = { name = 'Paramedic', payment = 2000  },
		['2'] = { name = 'Advanced Paramedic', payment = 2500  },
		['3'] = { name = 'Doctor', payment = 3000 },
		['4'] = { name = 'Chief', isboss = true, payment = 3500 },
	},
},


autoexotics = {
	label = 'AutoExotics',
	defaultDuty = true,
	offDutyPay = false,
	grades = {
		['0'] = { name = 'Recruit', payment = 50 },
		['1'] = { name = 'Novice', payment = 75 },
		['2'] = { name = 'Experienced', payment = 100 },
		['3'] = { name = 'Advanced', payment = 125 },
		['4'] = { name = 'Manager', isboss = true, payment = 150 },
		['5'] = { name = 'Owner', isboss = true, payment = 500 },
	},
},


yannimize = {
	label = 'Yannimize Tuners',
	defaultDuty = true,
	offDutyPay = false,
	grades = {
		['0'] = { name = 'Recruit', payment = 300 },
		['1'] = { name = 'Novice', payment = 500 },
		['2'] = { name = 'Experienced', payment = 600 },
		['3'] = { name = 'Advanced', payment = 700 },
		['4'] = { name = 'Manager', isboss = true, payment = 850 },
		['5'] = { name = 'Owner', isboss = true, payment = 500 },
	},
},

risingsun = {
	label = 'Rising Sun',
	defaultDuty = true,
	offDutyPay = false,
	grades = {
		['0'] = { name = 'Recruit', payment = 300 },
		['1'] = { name = 'Novice', payment = 500 },
		['2'] = { name = 'Experienced', payment = 600 },
		['3'] = { name = 'Advanced', payment = 700 },
		['4'] = { name = 'Manager', isboss = true, payment = 850 },
		['5'] = { name = 'Owner', isboss = true, payment = 500 },
	},
},

fastcustoms = {
	label = 'Fast Customs',
	defaultDuty = true,
	offDutyPay = false,
	grades = {
		['0'] = { name = 'Recruit', payment = 300 },
		['1'] = { name = 'Novice', payment = 500 },
		['2'] = { name = 'Experienced', payment = 600 },
		['3'] = { name = 'Advanced', payment = 700 },
		['4'] = { name = 'Manager', isboss = true, payment = 850 },
		['5'] = { name = 'Owner', isboss = true, payment = 500 },
	},
},


westcoast = {
	label = 'West Coast Customs',
	defaultDuty = true,
	offDutyPay = false,
	grades = {
		['0'] = { name = 'Recruit', payment = 300 },
		['1'] = { name = 'Novice', payment = 500 },
		['2'] = { name = 'Experienced', payment = 600 },
		['3'] = { name = 'Advanced', payment = 700 },
		['4'] = { name = 'Manager', isboss = true, payment = 850 },
		['5'] = { name = 'Owner', isboss = true, payment = 2500 },
	},
},


lscustoms = {
	label = 'LS Customs',
	type = 'mechanic',
	defaultDuty = true,
	offDutyPay = false,
	grades = {
		['0'] = { name = 'Recruit', payment = 50 },
		['1'] = { name = 'Novice', payment = 75 },
		['2'] = { name = 'Experienced', payment = 100 },
		['3'] = { name = 'Advanced', payment = 125 },
		['4'] = { name = 'Manager', isboss = true, payment = 150 },
        ['5'] = { name = 'Owner', isboss = true, payment = 150 },
	},
},


galaxybarbers = {
	label = 'Galaxybarbers',
	type = 'barber',
	defaultDuty = true,
	offDutyPay = false,
	grades = {
		['0'] = { name = 'Recruit', payment = 50 },
		['1'] = { name = 'Novice', payment = 75 },
		['2'] = { name = 'Experienced', payment = 100 },
		['3'] = { name = 'Advanced', payment = 125 },
		['4'] = { name = 'Manager',  payment = 350 },
        ['5'] = { name = 'Boss', isboss = true, payment = 350 },
	},
},


bahama = {
    label = 'Bahama Mamas',
    defaultDuty = true,
    offDutyPay = false,
    grades = {
        ['0'] = { name = 'Helper', payment = 30 },
        ['1'] = { name = 'Bartender', payment = 40 },
        ['2'] = { name = 'Dancer', payment = 50 },
        ['3'] = { name = 'Manager', payment = 500 },
        ['4'] = { name = 'boss', payment = 2500, isboss = true },
    },
},

galaxy = {
    label = 'GalaxyNightClub',
    defaultDuty = true,
    offDutyPay = false,
    grades = {
        ['0'] = { name = 'apprentice', payment = 30 },
        ['1'] = { name = 'Bartender', payment = 40 },
        ['2'] = { name = 'security', payment = 40 },
        ['3'] = { name = 'Dancer', payment = 50 },
        ['4'] = { name = 'DJ', payment = 50 },
        ['5'] = { name = 'Manager', payment = 500 },
        ['6'] = { name = 'Boss', payment = 500, isboss = true },
    },
},

gentlemansclub = {
    label = 'Gentlemans Club',
    defaultDuty = true,
    offDutyPay = false,
    grades = {
        ['0'] = { name = 'Apprentice', payment = 30 },
        ['1'] = { name = 'Bartender', payment = 40 },
        ['2'] = { name = 'Security', payment = 40 },
        ['3'] = { name = 'Dancer', payment = 50 },
        ['4'] = { name = 'DJ', payment = 50 },
        ['5'] = { name = 'Manager', payment = 500, isboss = true },
        ['6'] = { name = 'Owner', payment = 500, isboss = true },
    },
},


realestate = {
    label = 'Realestate',
    defaultDuty = true,
    grades = {
        ['0'] = { name = 'Rookie', payment = 50 },
        ['1'] = { name = 'Seller', payment = 75 },
        ['2'] = { name = 'Manager', payment = 100 },
        ['3'] = { name = 'Boss', payment = 125, isboss = true },
    },
},


cookies = {
    label = 'Cookies',
    defaultDuty = true,
    grades = {
        ['0'] = { name = 'Farmer', payment = 50 },
        ['1'] = { name = 'Shopkeeper', payment = 75 },
        ['2'] = { name = 'Manager', payment = 100 },
        ['3'] = { name = 'Owner', payment = 500, isboss = true },
    },
},


mosleys = {
	label = 'Mosleys',
	type = 'mechanic',
	defaultDuty = true,
	offDutyPay = false,
	grades = {
		['0'] = { name = 'Recruit', payment = 50 },
		['1'] = { name = 'Novice', payment = 75 },
		['2'] = { name = 'Experienced', payment = 100 },
		['3'] = { name = 'Advanced', payment = 125 },
		['4'] = { name = 'Manager', isboss = true, payment = 150 },
        ['5'] = { name = 'Owner', isboss = true, payment = 150 },
	},
},

familypharmacy = {
	label = 'Family Pharmacy',
	defaultDuty = true,
	offDutyPay = false,
	grades = {
		['0'] = { name = 'Employee', payment = 50 },
        ['1'] = { name = 'Owner', isboss = true, payment = 150 },
	},
},

}
