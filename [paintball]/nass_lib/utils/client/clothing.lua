nass.savedOutfits = {}
function nass.setClothing(ped, clothing, props)
    if ped == PlayerPedId() then
        nass.savedOutfits[GetInvokingResource()] = nass.getClothing(ped)
    end
    RemoveClothingProps(ped)
    if clothing then
		for _, v in pairs(clothing.clothing ~= nil and clothing.clothing or clothing) do
			SetPedComponentVariation(ped, v.component, v.drawable, v.texture, 0)
		end
	end
	if props or clothing.props then
		for _, v in pairs(clothing.props ~= nil and clothing.props or props) do
			SetPedPropIndex(ped, v.component, v.drawable, v.texture, true)
		end
	end
end

function nass.resetClothing(ped, resource)
    RemoveClothingProps(ped)
    local outfit = nass.savedOutfits[GetInvokingResource() ~= nil and GetInvokingResource() or resource]
    if not outfit then return end
    if outfit.clothing and next(outfit.clothing) then
        for _, clothingData in pairs(outfit.clothing) do
            SetPedComponentVariation(ped, clothingData.component, clothingData.drawable, clothingData.texture, 0)
        end
    end
    if not outfit.props or not next(outfit.props) then return end
    for _, propData in pairs(outfit.props) do
        SetPedPropIndex(ped, propData.component, propData.drawable, propData.texture, true)
    end
    nass.savedOutfits[GetInvokingResource() ~= nil and GetInvokingResource() or resource] = nil
end

function nass.getClothing(ped)
	local civilianOutfit = { clothing = {}, props = {} }
	for i = 0, 11 do
		local drawable = GetPedDrawableVariation(ped, i)
		local texture = GetPedTextureVariation(ped, i)
		civilianOutfit.clothing[#civilianOutfit.clothing + 1] = {
			component = i,
			drawable = drawable,
			texture = texture
		}
	end
	for i = 0, 7 do
		local drawable = GetPedPropIndex(ped, i)
		local texture = GetPedPropTextureIndex(ped, i)
		civilianOutfit.props[#civilianOutfit.props + 1] = {
			component = i,
			drawable = drawable,
			texture = texture
		}
	end
	return civilianOutfit
end

function nass.getGender(ped)
    return GetEntityModel(ped) ~= GetHashKey("mp_m_freemode_01") and "female" or GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") and "male" or "unknown"
end

function RemoveClothingProps(ped)
	SetPedPropIndex(ped, 0, -1, 0, true)
	for i = 0, 11 do
		ClearPedProp(ped, i)
	end
	for i = 0, 7 do
		ClearPedProp(ped, i)
	end
end

AddEventHandler('onResourceStop', function(resourceName)
    if nass.savedOutfits[resourceName] then 
		nass.resetClothing(PlayerPedId(), resourceName)
	end
end)