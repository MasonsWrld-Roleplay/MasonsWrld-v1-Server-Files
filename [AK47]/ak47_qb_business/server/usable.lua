--[[ This an example with all parameters

    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'itemname', 
        prepare = {emote = 'emotename', delay = 5000},
        hunger  = {add = 10, emote = 'emotename', delay = 50000},
        thirst  = {add = 10, emote = 'emotename', delay = 15000},
    })

]]

--=====================================================================Burger Shot=====================================================================--
QBCore.Functions.CreateUseableItem('family_bundle_classic', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'family_bundle_classic', 
        prepare = {emote = 'foodtrayi', delay = 5000},
        hunger  = {add = 80, emote = 'burger', delay = 50000},
        thirst  = {add = 50, emote = 'soda',   delay = 15000},
    })
end)

--=====================================================================Burger Shot=====================================================================--
QBCore.Functions.CreateUseableItem('family_bundle_classic', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'family_bundle_classic', 
        prepare = {emote = 'foodtrayi', delay = 5000},
        hunger = {add = 100, emote = 'burger', delay = 15000},
        thirst = {add = 100, emote = 'soda', delay = 10000},
    })
end)

QBCore.Functions.CreateUseableItem('croissanwich_meal', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'croissanwich_meal', 
        hunger = {add = 50, emote = 'burger', delay = 10000},
        thirst = {add = 50, emote = 'soda', delay = 7000},
    })
end)

QBCore.Functions.CreateUseableItem('loaded_croissanwich_meal', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'loaded_croissanwich_meal', 
        hunger = {add = 60, emote = 'sandwich', delay = 10000},
        thirst = {add = 30, emote = 'drink', delay = 7000},
    })
end)

QBCore.Functions.CreateUseableItem('sausage_croissanwich', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'sausage_croissanwich', 
        hunger = {add = 45, emote = 'sandwich', delay = 10000},
    })
end)

QBCore.Functions.CreateUseableItem('ham_egg_cheese', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'ham_egg_cheese', 
        hunger = {add = 40, emote = 'burger', delay = 10000},
    })
end)

QBCore.Functions.CreateUseableItem('double_sausage_croissanwich', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'double_sausage_croissanwich',
        hunger = {add = 60, emote = 'burger', delay = 10000},
    })
end)

QBCore.Functions.CreateUseableItem('bacon_ham_sausage', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'bacon_ham_sausage',
        hunger = {add = 40, emote = 'burger', delay = 10000},
    })
end)

QBCore.Functions.CreateUseableItem('double_sausage_biscuit', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'double_sausage_biscuit',
        hunger = {add = 60, emote = 'burger', delay = 10000},
    })
end)

QBCore.Functions.CreateUseableItem('buttermilk_biscuit', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'buttermilk_biscuit',
        hunger = {add = 60, emote = 'sandwich', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('egg_normous_burrito', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'egg_normous_burrito',
        hunger = {add = 60, emote = 'burger', delay = 10000},
    })
end)

QBCore.Functions.CreateUseableItem('pancake_sausage_platter', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'pancake_sausage_platter', 
        hunger = {add = 50, emote = 'sandwich', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('small_hash_browns', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'small_hash_browns', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('french_toast_sticks', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'french_toast_sticks', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('whopper_with_cheese', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'whopper_with_cheese', 
        hunger = {add = 70, emote = 'burger', delay = 12000},
    })
end)

QBCore.Functions.CreateUseableItem('bacon_king', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'bacon_king', 
        hunger = {add = 50, emote = 'burger', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('double_cheeseburger', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'double_cheeseburger', 
        hunger = {add = 50, emote = 'burger', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('bacon_double_cheeseburger', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'bacon_double_cheeseburger',
        hunger = {add = 50, emote = 'burger', delay = 12000},
    })
end)

QBCore.Functions.CreateUseableItem('rodeo_burger', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'rodeo_burger', 
        hunger = {add = 40, emote = 'burger', delay = 10000},
    })
end)

QBCore.Functions.CreateUseableItem('bs_hamburger', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'bs_hamburger',
        hunger = {add = 30, emote = 'burger', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('texas_double_whopper', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'texas_double_whopper', 
        hunger = {add = 60, emote = 'burger', delay = 10000},
    })
end)

QBCore.Functions.CreateUseableItem('original_chicken_sandwich', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'original_chicken_sandwich', 
        hunger = {add = 50, emote = 'sandwich', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('deluxe_chicken_sandwich', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'deluxe_chicken_sandwich', 
        hunger = {add = 45, emote = 'sandwich', delay = 10000},
    })
end)

QBCore.Functions.CreateUseableItem('spicy_deluxe_sandwich', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'spicy_deluxe_sandwich', 
        hunger = {add = 45, emote = 'sandwich', delay = 12000},
    })
end)

QBCore.Functions.CreateUseableItem('chicken_fries', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chicken_fries', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('chicken_nuggets', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chicken_nuggets', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('big_fish', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'big_fish',
        hunger = {add = 40, emote = 'burger', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('catfish', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'catfish',
        hunger = {add = 40, emote = 'burger', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('bs_chicken_jr', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'bs_chicken_jr',
        hunger = {add = 30, emote = 'burger', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('small_classic_fries', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'small_classic_fries', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('small_onion_rings', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'small_onion_rings', 
        hunger = {add = 50, emote = 'donut', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('bs_mozzarella_sticks', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'bs_mozzarella_sticks', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('jalapeno_cheddar_bites', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'jalapeno_cheddar_bites', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('cheesy_tots', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'cheesy_tots', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('sundae_pie', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'sundae_pie', 
        hunger = {add = 50, emote = 'xmascc', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('soft_serve_cone', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'soft_serve_cone', 
        hunger = {add = 50, emote = 'icecreamh', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('soft_serve_cup', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'soft_serve_cup', 
        hunger = {add = 50, emote = 'xmascc', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('cookie_shake', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'cookie_shake', 
        thirst = {add = 50, emote = 'frappe4', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('chocolate_cookie_shake', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chocolate_cookie_shake', 
        thirst = {add = 50, emote = 'frappe4', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('chocolate_shake', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chocolate_shake', 
        thirst = {add = 50, emote = 'frappe4', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('vanilla_shake', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'vanilla_shake', 
        thirst = {add = 50, emote = 'frappe3', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('strawberry_shake', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'strawberry_shake', 
        thirst = {add = 50, emote = 'frappe4', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('bs_coca_cola', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'bs_coca_cola', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('bs_diet_coke', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'bs_diet_coke', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('bs_iced_tea', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'bs_iced_tea', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('bs_sprite', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'bs_sprite', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('bs_sprite_zero', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'bs_sprite_zero', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('bs_barqs_beer', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'bs_barqs_beer', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('barqs_diet_beer', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'barqs_diet_beer', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('bs_dr_pepper', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'bs_dr_pepper', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('bs_fanta_orange', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'bs_fanta_orange', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('bs_yello_mello', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'bs_yello_mello', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('bs_fruit_punch', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'bs_fruit_punch', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('pink_lemonade', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'pink_lemonade', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)
QBCore.Functions.CreateUseableItem('sweat_tea_sangria', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'sweat_tea_sangria', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)
QBCore.Functions.CreateUseableItem('latte', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'latte', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)
QBCore.Functions.CreateUseableItem('vodka_tonic', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'vodka_tonic', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)
QBCore.Functions.CreateUseableItem('red_wine_sangria', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'red_wine_sangria', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)
QBCore.Functions.CreateUseableItem('sangria_lemonade', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'sangria_lemonade', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)
QBCore.Functions.CreateUseableItem('mimosa', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'mimosa', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)
QBCore.Functions.CreateUseableItem('pomegranate_mimosa', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'pomegranate_mimosa', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('sun_apple_juice', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'sun_apple_juice', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('bs_cafe_decaf', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'bs_cafe_decaf', 
        thirst = {add = 50, emote = 'whiskey', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('plain_iced_coffee', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'bs_cafe_decaf', 
        thirst = {add = 50, emote = 'whiskey', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('bs_orange_juice', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'bs_cafe_decaf', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('bottle_diet_coke', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'bottle_diet_coke', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('cheeseburger_king_jr', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'cheeseburger_king_jr', 
        hunger = {add = 40, emote = 'burger', delay = 10000},
        thirst = {add = 30, emote = 'drink', delay = 10000},
    })
end)

QBCore.Functions.CreateUseableItem('nuggets_king_jr', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'nuggets_king_jr', 
        hunger = {add = 200000, emote = 'sandwich', delay = 7000},
        thirst = {add = 30, emote = 'drink', delay = 7000},
    })
end)

QBCore.Functions.CreateUseableItem('hamburger_king_jr', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'hamburger_king_jr', 
        hunger = {add = 30, emote = 'burger', delay = 7000},
        thirst = {add = 30, emote = 'drink', delay = 7000},
    })
end)

--=====================================================================Chick-Fil-A=====================================================================--
QBCore.Functions.CreateUseableItem('chicken_biscuit', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chicken_biscuit', 
        hunger = {add = 50, emote = 'desert', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('brewed_iced_tea', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'brewed_iced_tea', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('egg_white_grill', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'brewed_iced_tea', 
        hunger = {add = 50, emote = 'desert', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('brown_scramble_burrito', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'brown_scramble_burrito', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('chick_n_minis', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chick_n_minis', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('brown_scramble_bowl', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'brown_scramble_bowl', 
        hunger = {add = 50, emote = 'desert', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('chicken_egg_cheese', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chicken_egg_cheese', 
        hunger = {add = 50, emote = 'desert', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('sausage_egg_cheese', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'sausage_egg_cheese', 
        hunger = {add = 50, emote = 'desert', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('egg_cheese_muffin', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'egg_cheese_muffin', 
        hunger = {add = 50, emote = 'desert', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('buttered_biscuit', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'buttered_biscuit', 
        hunger = {add = 50, emote = 'desert', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('english_muffin', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'english_muffin', 
        hunger = {add = 50, emote = 'desert', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('hash_browns', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'hash_browns', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('greek_yogurt_parfait', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'greek_yogurt_parfait', 
        hunger = {add = 50, emote = 'cocoa', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('fruit_cup', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'fruit_cup', 
        hunger = {add = 50, emote = 'cocoa', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('chicken_sandwich', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chicken_sandwich', 
        hunger = {add = 50, emote = 'sandwich', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('deluxe_sandwich', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'deluxe_sandwich', 
        hunger = {add = 50, emote = 'burger', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('chicken_club_sandwich', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chicken_club_sandwich', 
        hunger = {add = 50, emote = 'sandwich', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('chick_fil_a_nuggets', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chick_fil_a_nuggets', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('grilled_nuggets', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'grilled_nuggets', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('chick_n_strips', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chick_n_strips', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('cool_wrap', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'cool_wrap', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('cobb_salad', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'cobb_salad', 
        hunger = {add = 50, emote = 'beans', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('spicy_southwest_salad', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'spicy_southwest_salad', 
        hunger = {add = 50, emote = 'beans', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('market_salad', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'market_salad', 
        hunger = {add = 50, emote = 'beans', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('waffle_potato_fries', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'waffle_potato_fries', 
        hunger = {add = 50, emote = 'popcorn', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('side_salad', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'side_salad', 
        hunger = {add = 50, emote = 'beans', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('side_caesar_salad', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'side_caesar_salad', 
        hunger = {add = 50, emote = 'beans', delay = 15000},
    })
end)
QBCore.Functions.CreateUseableItem('mac_cheese', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'mac_cheese', 
        hunger = {add = 50, emote = 'beans', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('chicken_noodle_soup', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chicken_noodle_soup', 
        hunger = {add = 50, emote = 'beans', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('kale_crunch_side', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'kale_crunch_side', 
        hunger = {add = 50, emote = 'beans', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('waffle_potato_chips', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'waffle_potato_chips', 
        hunger = {add = 50, emote = 'burger', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('apple_sauce', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'apple_sauce', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('frosted_lemonade', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'frosted_lemonade', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('frosted_coffee', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'frosted_coffee', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('chocolate_chunk_cookie', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chocolate_chunk_cookie', 
        hunger = {add = 50, emote = 'desert', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('chocolate_fudge_brownie', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chocolate_fudge_brownie', 
        hunger = {add = 50, emote = 'icecreamb', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('peach_milkshake', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'peach_milkshake', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('cookies_cream_milkshake', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'cookies_cream_milkshake', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('chocolate_milkshake', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chocolate_milkshake', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('strawberry_milkshake', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'strawberry_milkshake', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('vanilla_milkshake', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'vanilla_milkshake', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('icedream_cone', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'icedream_cone', 
        hunger = {add = 50, emote = 'icecreamf', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('icedream_cup', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'icedream_cup', 
        hunger = {add = 50, emote = 'icecreamc', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('chick_fil_a_lemonade', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chick_fil_a_lemonade', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('sweet_tea', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'sweet_tea', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('dr_pepper', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'dr_pepper', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('apple_juice', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'apple_juice', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('simply_orange', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'simply_orange', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('chocolate_milk', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chocolate_milk', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('coffee', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'coffee', 
        thirst = {add = 50, emote = 'whiskey', delay = 15000},
    })
end)

--=====================================================================Dunkin=====================================================================--
QBCore.Functions.CreateUseableItem('dunkin_coffee', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'dunkin_coffee', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('cold_brew', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'cold_brew', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('dunkin_americano', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'dunkin_americano', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('dunkin_latte', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'dunkin_latte', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('iced_signaturea_latte', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'iced_signaturea_latte', 
        thirst = {add = 50, emote = 'coffee', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('signature_latte', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'signature_latte', 
        thirst = {add = 50, emote = 'coffee', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('dunkin_macchiato', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'dunkin_macchiato', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('iced_macchiatto', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'iced_macchiatto', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('iced_cappuccino', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'iced_cappuccino', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('dunkin_tea', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'dunkin_tea', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('dunkin_refresher', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'dunkin_refresher', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('iced_matcha_latte', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'iced_matcha_latte', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('dunkin_bacon_egg_cheese', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'dunkin_bacon_egg_cheese', 
        hunger = {add = 50, emote = 'burger', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('sourdough_breakfast_sandwich', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'sourdough_breakfast_sandwich', 
        hunger = {add = 50, emote = 'sandwich', delay = 15000},
    })
end)
QBCore.Functions.CreateUseableItem('omlet', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'omlet', 
        hunger = {add = 40, emote = 'eat', delay = 10000},
    })
end)
QBCore.Functions.CreateUseableItem('strawberry_banana_crepes', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'strawberry_banana_crepes', 
        hunger = {add = 30, emote = 'desert', delay = 10000},
    })
end)
QBCore.Functions.CreateUseableItem('strawberry_nutella_waffles', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'strawberry_nutella_waffles', 
        hunger = {add = 30, emote = 'desert', delay = 10000},
    })
end)
QBCore.Functions.CreateUseableItem('breakfast_meal', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'breakfast_meal', 
        hunger = {add = 50, emote = 'eat', delay = 10000},
    })
end)
QBCore.Functions.CreateUseableItem('shrimp_and_grits', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'shrimp_and_grits', 
        hunger = {add = 50, emote = 'eat', delay = 10000},
    })
end)
QBCore.Functions.CreateUseableItem('sourdough_breakfast_sandwich', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'sourdough_breakfast_sandwich', 
        hunger = {add = 50, emote = 'eat', delay = 15000},
    })
end)


QBCore.Functions.CreateUseableItem('wake_up_wrap', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'wake_up_wrap', 
        hunger = {add = 50, emote = 'sandwich', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('dunkin_hash_browns', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'dunkin_hash_browns', 
        hunger = {add = 50, emote = 'donut2', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('snackin_bacon', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'snackin_bacon', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('stuffed_bagel_minis', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'stuffed_bagel_minis', 
        hunger = {add = 50, emote = 'donut', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('bagel_cream_cheese', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'bagel_cream_cheese', 
        hunger = {add = 50, emote = 'donut', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('dunkin_muffins', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'dunkin_muffins', 
        hunger = {add = 50, emote = 'donut', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('dunkin_croissant', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'dunkin_croissant', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('dunkin_donuts', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'dunkin_donuts', 
        hunger = {add = 50, emote = 'donut', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('munchkins_donut_hole', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'munchkins_donut_hole', 
        hunger = {add = 50, emote = 'donut', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('packaged_coffee', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'packaged_coffee', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('packaged_tea', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'packaged_coffee', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

--=====================================================================McDonald's=====================================================================--
QBCore.Functions.CreateUseableItem('spicy_crispy_chicken_sandwich', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'spicy_crispy_chicken_sandwich', 
        hunger = {add = 45, emote = 'sandwich', delay = 12000},
    })
end)

QBCore.Functions.CreateUseableItem('big_mac', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'big_mac', 
        hunger = {add = 70, emote = 'burger', delay = 12000},
    })
end)

QBCore.Functions.CreateUseableItem('world_famous_fries', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'world_famous_fries', 
        hunger = {add = 200000, emote = 'sandwich', delay = 7000},
    })
end)

QBCore.Functions.CreateUseableItem('chicken_mcnuggets', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chicken_mcnuggets', 
        hunger = {add = 200000, emote = 'burger', delay = 7000},
    })
end)

QBCore.Functions.CreateUseableItem('quarter_pounder', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'quarter_pounder', 
        hunger = {add = 45, emote = 'burger', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('egg_mcmuffin', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'egg_mcmuffin', 
        hunger = {add = 200000, emote = 'sandwich', delay = 7000},
    })
end)

QBCore.Functions.CreateUseableItem('sausage_burrito', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'sausage_burrito', 
        hunger = {add = 40, emote = 'croissant', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('double_quarter_pounder', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'double_quarter_pounder', 
        hunger = {add = 60, emote = 'burger', delay = 13000},
    })
end)

QBCore.Functions.CreateUseableItem('big_mac_combo', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'big_mac_combo', 
        hunger = {add = 900000, emote = 'burger', delay = 11000},
        thirst = {add = 50, emote = 'soda', delay = 8000},
    })
end)

QBCore.Functions.CreateUseableItem('double_quarter_combo', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'double_quarter_combo', 
        hunger = {add = 70, emote = 'burger', delay = 12000},
        thirst = {add = 50, emote = 'soda', delay = 7000},
    })
end)

QBCore.Functions.CreateUseableItem('mc_combo_chicken', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'mc_combo_chicken', 
        hunger = {add = 50, emote = 'sandwich', delay = 12000},
        thirst = {add = 50, emote = 'soda', delay = 7000},
    })
end)

QBCore.Functions.CreateUseableItem('egg_cheese_biscuit', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'egg_cheese_biscuit', 
        hunger = {add = 40, emote = 'sandwich', delay = 10000},
        thirst = {add = 40, emote = 'soda', delay = 7000},
    })
end)

QBCore.Functions.CreateUseableItem('deluxe_crispy_sandwich_combo', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'deluxe_crispy_sandwich_combo', 
        hunger = {add = 60, emote = 'burger', delay = 12000},
        thirst = {add = 50, emote = 'soda', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('spicy_chicken_sandwich_combo', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'spicy_chicken_sandwich_combo', 
        hunger = {add = 60, emote = 'burger', delay = 10000},
        thirst = {add = 40, emote = 'coffee', delay = 12000},
    })
end)

QBCore.Functions.CreateUseableItem('mc_nuggets_happy_meal', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'mc_nuggets_happy_meal', 
        hunger = {add = 550000, emote = 'sandwich', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('sausage_biscuit', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'sausage_biscuit', 
        hunger = {add = 45, emote = 'sandwich', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('hot_fudge_sundae', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'hot_fudge_sundae', 
        thirst = {add = 30, emote = 'cup', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('quarter_pounder_cheese', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'quarter_pounder_cheese', 
        hunger = {add = 40, emote = 'burger', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('crispy_chicken_sandwich', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'crispy_chicken_sandwich', 
        hunger = {add = 45, emote = 'sandwich', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('cheeseburger_combo_meal', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'cheeseburger_combo_meal', 
        hunger = {add = 800000, emote = 'burger', delay = 12000},
        thirst = {add = 50, emote = 'soda', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('mc_flurry_cookies', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'mc_flurry_cookies', 
        hunger = {add = 40, emote = 'desert', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('mc_flurry_candies', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'mc_flurry_candies', 
        hunger = {add = 40, emote = 'desert', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('strawberry_watermelon_slushie', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'strawberry_watermelon_slushie', 
        thirst = {add = 50, emote = 'coffee', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('tropical_mango_slushie', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'tropical_mango_slushie', 
        thirst = {add = 50, emote = 'coffee', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('mc_coca_cola', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'mc_coca_cola', 
        thirst = {add = 50, emote = 'soda', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('mc_dr_pepper', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'mc_dr_pepper', 
        thirst = {add = 50, emote = 'soda', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('mc_fanta_orange', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'mc_fanta_orange', 
        thirst = {add = 50, emote = 'coffee', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('mc_fruit_punch', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'mc_fruit_punch', 
        thirst = {add = 50, emote = 'soda', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('mc_iced_tea', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'mc_iced_tea', 
        thirst = {add = 50, emote = 'soda', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('mc_sprite', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'mc_sprite', 
        thirst = {add = 50, emote = 'soda', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('orange_juice', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'orange_juice', 
        thirst = {add = 50, emote = 'soda', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('mc_cappuccino', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'mc_cappuccino', 
        thirst = {add = 30, emote = 'coffee', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('mc_diet_coke', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'mc_diet_coke', 
        thirst = {add = 50, emote = 'soda', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('mc_hot_chocolate', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'mc_hot_chocolate', 
        thirst = {add = 30, emote = 'coffee', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('mc_iced_coffee', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'mc_iced_coffee', 
        thirst = {add = 50, emote = 'coffee', delay = 9000},
    })
end)

QBCore.Functions.CreateUseableItem('mc_vanilla_shake', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'mc_vanilla_shake', 
        thirst = {add = 30, emote = 'coffee', delay = 12000},
    })
end)

QBCore.Functions.CreateUseableItem('mc_strawberry_shake', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'mc_strawberry_shake', 
        thirst = {add = 30, emote = 'coffee', delay = 9000},
    })
end)

--=====================================================================Pearls=====================================================================--
QBCore.Functions.CreateUseableItem('chicken_caesar_salad', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chicken_caesar_salad', 
        hunger = {add = 30, emote = 'beans', delay = 12000},
    })
end)

QBCore.Functions.CreateUseableItem('crab_legs_meal', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'crab_legs_meal', 
        hunger = {add = 30, emote = 'taco', delay = 12000},
    })
end)

QBCore.Functions.CreateUseableItem('glazed_salmon', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'crab_legs_meal', 
        hunger = {add = 50, emote = 'taco', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('gourmet_double_burger', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'gourmet_double_burger', 
        hunger = {add = 50, emote = 'burger', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('shrimp_alfredo', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'shrimp_alfredo', 
        hunger = {add = 50, emote = 'taco', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('steak_and_lobster_meal', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'steak_and_lobster_meal', 
        hunger = {add = 50, emote = 'taco', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('tilapia_fish_meal', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'tilapia_fish_meal', 
        hunger = {add = 50, emote = 'taco', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('crab_cakes', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'crab_cakes', 
        hunger = {add = 50, emote = 'taco', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('shrimp_and_crab_dip', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'shrimp_and_crab_dip', 
        hunger = {add = 50, emote = 'taco', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('lobster_bisque', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'lobster_bisque', 
        hunger = {add = 50, emote = 'taco', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('shells_clam_chowder', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'shells_clam_chowder', 
        hunger = {add = 50, emote = 'taco', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('upeel_shrimp', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'upeel_shrimp', 
        hunger = {add = 50, emote = 'taco', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('fried_mushrooms', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'fried_mushrooms', 
        hunger = {add = 50, emote = 'taco', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('oysters_half_shell', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'oysters_half_shell', 
        hunger = {add = 50, emote = 'taco', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('tropical_chicken_salad', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'tropical_chicken_salad', 
        hunger = {add = 50, emote = 'taco', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('salmon_caesar_salad', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'salmon_caesar_salad', 
        hunger = {add = 50, emote = 'taco', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('shrimp_pasta', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'shrimp_pasta', 
        hunger = {add = 50, emote = 'taco', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('baby_lobster_pasta', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'baby_lobster_pasta', 
        hunger = {add = 50, emote = 'taco', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('fried_scallops', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'fried_scallops', 
        hunger = {add = 50, emote = 'taco', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('md_ginger_ale', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'md_ginger_ale', 
        thirst = {add = 50, emote = 'frappe3', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('dom_perignon', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'dom_perignon', 
        thirst = {add = 50, emote = 'wine2', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('hennessy_shot', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'hennessy_shot', 
        thirst = {add = 50, emote = 'whiskey', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('patron_margarita', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'patron_margarita', 
        thirst = {add = 50, emote = 'whiskey', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('pearls_coffee', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'pearls_coffee', 
        thirst = {add = 50, emote = 'whiskey', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('ps_dr_pepper', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'ps_dr_pepper', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('ps_sprite', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'ps_sprite', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('ps_coca_cola', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'ps_coca_cola', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

--=====================================================================Taco=====================================================================--
QBCore.Functions.CreateUseableItem('classic_chicken_sandwich', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'classic_chicken_sandwich', 
        hunger = {add = 50, emote = 'burger', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('classic_signature_chicken', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'classic_signature_chicken', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('nuggets_medium_combo', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'nuggets_medium_combo', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('tenders_medium_combo.', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'tenders_medium_combo', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('surf_turf_combo', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'surf_turf_combo', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('regular_cajun_rice', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'regular_cajun_rice', 
        hunger = {add = 50, emote = 'beans', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('chicken_bundle', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chicken_bundle', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('strawberry_cheesecake_pie', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'strawberry_cheesecake_pie', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('signature_chicken_box', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'signature_chicken_box', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('chicken_family_meal', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chicken_family_meal', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('mild_tenders_box', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'mild_tenders_box', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('mild_tenders_bundle', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'mild_tenders_bundle', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('tenders_family_meal', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'tenders_family_meal', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('bigger_family_feast', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'bigger_family_feast', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('popcorn_shrimp', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'popcorn_shrimp', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('nuggets_la_carte', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'popcorn_shrimp', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('homestyle_mac_cheese', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'homestyle_mac_cheese', 
        hunger = {add = 50, emote = 'beans', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('cajun_fries', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'cajun_fries', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('mashed_potatoes', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'mashed_potatoes', 
        hunger = {add = 50, emote = 'beans', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('red_beans_rice', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'red_beans_rice', 
        hunger = {add = 50, emote = 'beans', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('regular_coleslaw', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'regular_coleslaw', 
        hunger = {add = 50, emote = 'beans', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('carte_biscuit', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'carte_biscuit', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('chilled_premium_lemonade', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chilled_premium_lemonade', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('strawberry_lemonade', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'strawberry_lemonade', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('medium_coca_cola', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'medium_coca_cola', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('medium_sweet_tea', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'medium_sweet_tea', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('medium_sprite', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'medium_sprite', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('medium_fanta_strawberry', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'medium_fanta_strawberry', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('medium_tropicana_lemonade', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'medium_tropicana_lemonade', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('medium_diet_coke', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'medium_diet_coke', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('medium_hawaiian_punch', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'medium_hawaiian_punch', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('medium_fanta_orange', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'medium_fanta_orange', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('md_seltzer_water', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'md_seltzer_water', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('md_ginger_ale', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'md_ginger_ale', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('cinnamon_apple_pie', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'cinnamon_apple_pie', 
        hunger = {add = 50, emote = 'bagel', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('nuggets_kids_meal', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'nuggets_kids_meal', 
        hunger = {add = 50, emote = 'bagel', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('mac_cheese_meal', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'nuggets_kids_meal', 
        hunger = {add = 50, emote = 'beans', delay = 15000},
    })
end)

--=====================================================================Pearls=====================================================================--
QBCore.Functions.CreateUseableItem('beefy_nacho', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'beefy_nacho', 
        hunger = {add = 50, emote = 'hotdog', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('chalupa_supreme', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chalupa_supreme', 
        hunger = {add = 50, emote = 'taco', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('cheese_quesadilla', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'cheese_quesadilla', 
        hunger = {add = 50, emote = 'desert', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('cheesy_black_bean', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'cheesy_black_bean', 
        hunger = {add = 50, emote = 'hotdog', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('cheesy_gordita_crunch', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'cheesy_gordita_crunch', 
        hunger = {add = 50, emote = 'taco', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('chicken_burrito', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'cheesy_gordita_crunch', 
        hunger = {add = 50, emote = 'hotdog', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('churros_dip', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'churros_dip', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('cinnamon_twists', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'cinnamon_twists', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('crunchwrap_supreme', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'crunchwrap_supreme', 
        hunger = {add = 50, emote = 'desert', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('fishtaco', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'fishtaco', 
        hunger = {add = 50, emote = 'taco', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('fries_grande', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'fries_grande', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('quesadilla', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'quesadilla', 
        hunger = {add = 50, emote = 'desert', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('spicy_chicken_burrito', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'spicy_chicken_burrito', 
        hunger = {add = 50, emote = 'hotdog', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('taco_regular', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'taco_regular', 
        hunger = {add = 50, emote = 'taco', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('tacomeet', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'tacomeet', 
        hunger = {add = 50, emote = 'taco', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('volcano_burrito', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'volcano_burrito', 
        hunger = {add = 50, emote = 'hotdog', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('crunchytaco', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'crunchytaco', 
        hunger = {add = 50, emote = 'taco', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('soft_taco', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'soft_taco', 
        hunger = {add = 50, emote = 'taco', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('crunchy_taco_supreme', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'crunchy_taco_supreme', 
        hunger = {add = 50, emote = 'taco', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('soft_taco_supreme', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'soft_taco_supreme', 
        hunger = {add = 50, emote = 'taco', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('crispy_chicken_staco', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'crispy_chicken_staco', 
        hunger = {add = 50, emote = 'taco', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('t_diet_pepsi', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 't_diet_pepsi', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('t_pepsi_max', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 't_pepsi_max', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('t_seven_up', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 't_seven_up', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('t_tango_apple', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 't_tango_apple', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('t_tango_orange', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 't_tango_orange', 
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('crunchwrap_supreme_meal', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'crunchwrap_supreme_meal', 
        hunger = {add = 50, emote = 'desert', delay = 15000},
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('quesadilla_cravings', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'quesadilla_cravings', 
        hunger = {add = 50, emote = 'desert', delay = 15000},
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('two_taco_supreme', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'two_taco_supreme', 
        hunger = {add = 50, emote = 'desert', delay = 15000},
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('volcano_burrito_meal', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'volcano_burrito_meal', 
        hunger = {add = 50, emote = 'hotdog', delay = 15000},
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

--=====================================================================Wingstop=====================================================================--
QBCore.Functions.CreateUseableItem('triple_meal_deal', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'triple_meal_deal', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('boneless_wings', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'boneless_wings', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('wing_combo', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'wing_combo', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('classic_wings_combo', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'wing_combo', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('thigh_bites_combo', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'thigh_bites_combo', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('meal_for_two', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'meal_for_two', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('party_pack', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'party_pack', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('group_pack', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'group_pack', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('bites_group_pack', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'bites_group_pack', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('hundred_wings', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'hundred_wings', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('large_thigh_bites', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'large_thigh_bites', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('crispy_tender_combo', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'crispy_tender_combo', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('crispy_tenders', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'crispy_tenders', 
        hunger = {add = 50, emote = 'croissant', delay = 15000},
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('tender_pack', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'tender_pack',
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('thirty_crispy_tenders.', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'thirty_crispy_tenders',
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('seasoned_fries', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'seasoned_fries',
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('louisiana_voodoo_fries', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'louisiana_voodoo_fries',
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('cajun_fried_corn', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'cajun_fried_corn',
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('fresh_baked_rolls', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'fresh_baked_rolls',
        hunger = {add = 50, emote = 'dont', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('cheese_fries', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'cheese_fries',
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('buffalo_ranch_fries', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'buffalo_ranch_fries',
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('veggie_sticks', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'veggie_sticks',
        hunger = {add = 50, emote = 'apple', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('wingstop_dips', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'wingstop_dips',
        hunger = {add = 50, emote = 'xmascc', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('side_of_flavor', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'side_of_flavor',
        hunger = {add = 50, emote = 'xmascc', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('cheese_sauce', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'cheese_sauce',
        hunger = {add = 50, emote = 'xmascc', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('chocolate_chunk_brownie', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chocolate_chunk_brownie',
        hunger = {add = 50, emote = 'egobar', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('boneless_meal_deal', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'boneless_meal_deal',
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('chicken_and_waffles', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chicken_and_waffles',
        hunger = {add = 50, emote = 'desert', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('chicken_caesar_salad', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chicken_caesar_salad',
        hunger = {add = 50, emote = 'beans', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('garlic_parm_wings', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'garlic_parm_wings',
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('hot_chicken_wrap', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'hot_chicken_wrap',
        hunger = {add = 50, emote = 'hotdog', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('korean_q_wings', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'korean_q_wings',
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('w_diet_coke', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'w_diet_coke',
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('w_dr_pepper', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'w_dr_pepper',
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('w_ice_cola', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'w_ice_cola',
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('w_medium_fanta_orange', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'w_medium_fanta_orange',
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('w_medium_fanta_strawberry', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'w_medium_fanta_strawberry',
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('w_medium_sprite', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'w_medium_sprite',
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('w_tango_apple', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'w_tango_apple',
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('w_diet_pepsi', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'w_diet_pepsi',
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

--=====================================================================Dominos=====================================================================--
QBCore.Functions.CreateUseableItem('extra_vagan_zza', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'extra_vagan_zza',
        hunger = {add = 50, emote = 'eat', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('meat_zza', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'meat_zza',
        hunger = {add = 50, emote = 'eat', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('philly_cheese_steak', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'philly_cheese_steak',
        hunger = {add = 50, emote = 'eat', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('pacific_veggie', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'pacific_veggie',
        hunger = {add = 50, emote = 'eat', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('honolulu_hawaiian', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'honolulu_hawaiian',
        hunger = {add = 50, emote = 'eat', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('pizza_deluxe', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'pizza_deluxe',
        hunger = {add = 50, emote = 'eat', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('cali_chicken_bacon', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'cali_chicken_bacon',
        hunger = {add = 50, emote = 'eat', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('buffalo_chicken', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'buffalo_chicken',
        hunger = {add = 50, emote = 'eat', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('ultimate_pepperoni', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'ultimate_pepperoni',
        hunger = {add = 50, emote = 'eat', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('memphis_bbq_chicken', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'memphis_bbq_chicken',
        hunger = {add = 50, emote = 'eat', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('wisconsin_cheese', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'wisconsin_cheese',
        hunger = {add = 50, emote = 'eat', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('spinach_feta', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'spinach_feta',
        hunger = {add = 50, emote = 'eat', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('chicken_habanero', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chicken_habanero',
        hunger = {add = 50, emote = 'hotdog', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('mediterranean_veggie', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'mediterranean_veggie',
        hunger = {add = 50, emote = 'hotdog', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('philly_cheese_sandwich', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'philly_cheese_sandwich',
        hunger = {add = 50, emote = 'hotdog', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('chicken_bacon_ranch', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chicken_bacon_ranch',
        hunger = {add = 50, emote = 'hotdog', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('italian_sandwich', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'italian_sandwich',
        hunger = {add = 50, emote = 'hotdog', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('p_chicken_alfredo', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'p_chicken_alfredo',
        hunger = {add = 50, emote = 'croissant', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('italian_sausage_marinara', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'italian_sausage_marinara',
        hunger = {add = 50, emote = 'beans', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('chicken_carbonara', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'chicken_carbonara',
        hunger = {add = 50, emote = 'beans', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('pasta_primavera', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'pasta_primavera',
        hunger = {add = 50, emote = 'beans', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('d_coca_cola', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'd_coca_cola',
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('d_dr_pepper', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'd_dr_pepper',
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('d_fanta_orange', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'd_fanta_orange',
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('d_fruit_punch', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'd_fruit_punch',
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('d_sprite', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'd_sprite',
        thirst = {add = 50, emote = 'cup', delay = 15000},
    })
end)

QBCore.Functions.CreateUseableItem('water', function(source)
    TriggerClientEvent('ak47_qb_business:onEat', source, {
        item = 'water',
        thirst = {add = 50, emote = 'drink', delay = 15000},
    })
end)

RegisterNetEvent('ak47_qb_business:SetMetaData', function(type, amount)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    xPlayer.Functions.SetMetaData(type, amount)
    if type == 'hunger' then
        TriggerClientEvent('hud:client:UpdateNeeds', source, amount, xPlayer.PlayerData.metadata.thirst)
    else
        TriggerClientEvent('hud:client:UpdateNeeds', source, xPlayer.PlayerData.metadata.hunger, amount)
    end
end)

