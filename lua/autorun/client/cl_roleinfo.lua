net.Receive("CustomRole_Helper_OpenWindow", function()
  local roleName = net.ReadString()

  local window = vgui.Create("DFrame")
  window:SetSize(400, 100)
  window:SetTitle(roleName or "Role Info")
  window:SetVisible(true)
  window:SetDraggable(true)
  window:ShowCloseButton(true)
  window:Center()
  window:MakePopup()

  window:SetSizable(true)
  window:SetMinWidth(window:GetWide())
  window:SetMinHeight(window:GetTall())

  window.Paint = function(self, w, h)
    draw.RoundedBox(4, 0, 0, w, h, Color(56, 55, 54, 248))
  end

  local text = vgui.Create("RichText", window)
  text:Dock(FILL)
  text:InsertColorChange(255, 255, 255, 155)

  text:SetText(ROLEINFO[roleName] or "There is no information for this role.")
end)  
