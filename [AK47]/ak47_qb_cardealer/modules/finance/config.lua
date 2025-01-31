Config.Finance = {
    downpayment         = {min = 5, max = 70}, --percent
    interestrate        = {min = 1, max = 20}, --percent
    loanterm            = {min = 3, max = 20}, --Set number of installments
    paymentInterval     = 7,         -- 7 days
    removeAfter         = 3,         -- Kick player from the house if he/she fail to pay 3 payments
}

--[[
Note: Script will take money from player bank. May go to negative if not enough balance.
If player faild to keep balance in back for the 3rd time, vehicle will be removed from database.
]]