util.AddNetworkString("CustomRole_Helper_OpenWindow")

hook.Add("PlayerSay", "CustomRolesHelper_Say", function(ply, chattext)
	if (string.sub(string.lower(chattext), 1, #"!roleinfo") == "!roleinfo") then
		net.Start("CustomRole_Helper_OpenWindow")
		net.WriteString(ply:GetRoleString())
		net.Send(ply)
		return ""
	end
end)
