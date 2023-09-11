

               function checkexploit()
	if syn then return "Synapse X"
	elseif SENTINEL_V2 then return "Sentinel"
	elseif iskrnlclosure then return "krnl"
	else return "Unrecognized"
	end
end

pcall(function()
   local player = game:GetService("Players").LocalPlayer
   local hwid = game:GetService("RbxAnalyticsService"):GetClientId()
   local placeId = game.PlaceId
   local gameName = game:GetService("MarketplaceService"):GetProductInfo(placeId).Name
local data =
	{
		["content"] = "@here",
		["embeds"] = {{
			["title"] = "Script Executed",
			["description"] = "",
			["thumbnail"] = {
				["url"] = "https://www.roblox.com/headshot-thumbnail/image?userId="..game.Players.LocalPlayer.UserId.."&width=420&height=420&format=png"
			},
			["footer"] = {
				["text"] = "Sunrise Auto Farm",
			},
			["fields"] = {
				{
					["name"] = "**Username**",
					["value"] = "```"..game.Players.LocalPlayer.Name.."```",
					["inline"] = true
				},
				
				{
					["name"] = "**User ID**",
					["value"] = "```"..game.Players.LocalPlayer.UserId.."```",
					["inline"] = true
				},
				{
					["name"] = "**Cash**",
					["value"] = "```"..game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.MoneyText.Text.."```",
					["inline"] = true
				}
				
				
				
		
			}
		}
		}}

   if syn then
       local response = syn.request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   elseif request then
       local response = request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   elseif http_request then
       local response = http_request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   end
end)
