---@class Comserve
---@field adminName string
---@field reason string
---@field tasksLeft number
---@field tasksGiven number
---@field time osdate|string

---@class WebhookParams
---@field content? string
---@field username? string
---@field avatar_url? string
---@field embeds WebhookEmbed[]

---@class WebhookEmbed
---@field title? string
---@field description? string
---@field timestamp? number|osdate
---@field color? number
---@field fields? { name: string, value: string, inline: boolean }[]
