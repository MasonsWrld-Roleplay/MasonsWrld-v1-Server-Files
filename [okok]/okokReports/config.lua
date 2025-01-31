Config = {}

Config.Debug = false

Config.Framework = 'STANDALONE' -- ESX / QB / STANDALONE

Config.UseNewStaffCheckMethod = true -- **QBCORE and ESX ONLY** true = will check if a player is staff in another way (this could fix problems with /repots command)

Config.QBPermissionsUpdate = true -- **QBCORE ONLY** - set it to true if you have the latest Permissions update

Config.ReportCommand = 'report' -- command for players to create a report

Config.AdminReportCommand = 'reports' -- command for admins to check the reports

Config.NotificationToggleCommand = 'rn' -- command to toggle the notifications

Config.UseSteamNames = true -- Uses the steam names insted of game names

Config.SaveRespondedReports = false -- This will save how many reports the admins complete in the database (for this you need to use the sql file and set your sql script in the fxmanifest.lua)

Config.Database = 'oxmysql' -- mysql-async / oxmysql / ghmattimysql (Used if Config.SaveRespondedReports is set to true)

Config.NoAdminAssistingText = 'None'

Config.TeleportBackAfterConcluding = true

Config.NewReportNotifyType = 'STANDALONE' -- QB or STANDALONE

Config.LatestSendNotifyToAdmin = true

Config.GetAllPlayersForNotify = false

Config.AllowMultipleGOTO = false

Config.ReportCategoriesTranslation = { -- Translate report categories
	player = "REPORT PLAYER",
	bug = "BUG",
	question = "QUESTION"
}

Config.AdminGroups = { -- Used for ESX and QB
	'god',
	'superadmin',
	'admin',
	'mod'
}

-- Used to set the admins when using the STANDALONE version
-- Types of identifiers: steam: | license: | xbl: | live: | discord: | fivem: | ip:
Config.StandaloneStaffIdentifiers = { 
	'discord:960248066517139456', -- Example, change this
	'discord:848701590993895475',
	'discord:1262970396055965696',
	'discord:713489288070824010',
	'discord:314408939523407873',
	'discord:1063962928811884557',
	'discord:714202821884379266',
	'discord:506516642671624204',
	'discord:766928462661287936',
	'discord:661332403586859029',
	'discord:211197584994336768',
	'discord:1275758681958387848',
	'discord:827561293061292085',
	'discord:789467000002969641',
	'discord:963172093493669918',
	'discord:528913902948319232',
	'discord:996746751392354365',
	'discord:332357381897977866',
	'discord:579004831918850049',
	'discord:1189183689976987778',

}

Config.Notifications = {
	['success_rep'] = {title = 'REPORT', text = 'You successfully created a report', time = 5000, type = 'success'},
	['adm_answered'] = {title = 'REPORT', text = 'An admin answered you', time = 5000, type = 'info'},
	['player_answered'] = {title = 'REPORT', text = '#${id} - ${name}  answered you', time = 5000, type = 'info'},
	['adm_assist'] = {title = 'REPORT', text = 'An admin is assisting you', time = 5000, type = 'info'},
	['rep_concluded'] = {title = 'REPORT', text = 'Your report has been concluded', time = 5000, type = 'success'},
	['rep_canceled'] = {title = 'REPORT', text = 'You have canceled your report', time = 5000, type = 'error'},
	['adm_rep_concluded'] = {title = 'REPORT', text = 'Report #${id} has been concluded', time = 5000, type = 'success'},
	['new_rep'] = {title = 'REPORT', text = 'There is a new report', time = 5000, type = 'info'},
	['rep_not_on'] = {title = 'REPORT', text = 'You have turned report notifications ON!', time = 5000, type = 'success'},
	['rep_not_off'] = {title = 'REPORT', text = 'You have turned report notifications OFF!', time = 5000, type = 'error'},
	['rep_not_exist'] = {title = 'REPORT', text = 'This report does not exist!', time = 5000, type = 'error'},
}

Config.CommandSuggestions = {
	['report'] = {text = 'Command to create or check your report'},
	['adm_report'] = {text = 'Command to check opened reports'},
	['adm_notifications'] = {text = 'Command to activate/deactivate new reports notification'},
}

-------------------------- DISCORD LOGS

-- To set your Discord Webhook URL go to webhook.lua, line 1

Config.BotName = 'OKOKReportLogs' -- Write the desired bot name

Config.ServerName = 'ServerName' -- Write your server's name

Config.IconURL = '' -- Insert your desired image link

Config.DateFormat = '%d/%m/%Y [%X]' -- To change the date format check this website - https://www.lua.org/pil/22.1.html

Config.ReportTitle = 'REPORT'

-- To change a webhook color you need to set the decimal value of a color, you can use this website to do that - https://www.mathsisfun.com/hexadecimal-decimal-colors.html

Config.playerReportWebhookColor = '65280'

Config.bugReportWebhookColor = '16711680'

Config.questionReportWebhookColor = '49151'

Config.playerWebhookColor = '255'

Config.adminWebhookColor = '16746240'

Config.WebhookMessages = {
	-- Player
	['player_report'] = {action = 'Opened a report'},
	['bug_report'] = {action = 'Opened a report'},
	['question_report'] = {action = 'Opened a report'},
	['p_cancel_report'] = {action = 'Canceled a report', type = 'Report #${id}'},
	['p_answer_report'] = {action = 'Player answered report', type = 'Report #${id}'},

	-- Admin
	['a_answer_report'] = {action = 'Admin answered report', type = 'Report #${id}'},
	['a_bring_report'] = {action = 'Admin brought the player', type = 'Report #${id}'},
	['a_goto_report'] = {action = 'Admin went to the player', type = 'Report #${id}'},
	['a_closed_report'] = {action = 'Admin closed a report', type = 'Report #${id}'},
}