local a, b=game:GetService"HttpService",game:GetService"Players".LocalPlayer getgenv().Head="nil" local c={}do function c.Setup(d,e) d.Fluent=e d.Options=e.Options if typeof(...)=="string"then getgenv().Head=tostring(...) end if not isfolder"Anastassy"then makefolder"Anastassy" end if not isfile("Anastassy/"..getgenv().Head.."_"..b.Name..".cfg")then writefile("Anastassy/"..getgenv().Head.."_"..b.Name..".cfg","[]") end end function c.Build(d,e) local f=e:AddSection"Interface" f:AddDropdown("SettingsInterfaceTheme",{ Title="Theme", Description="Changes the interface theme.", Values=Fluent.Themes, Default=Fluent.Theme, Callback=function(g) Fluent:SetTheme(g) c:Save() end }) f:AddToggle("SettingsInterfaceTransparent",{ Title="Transparency", Description="Makes the interface transparent.", Default=true, Callback=function(g) Fluent:ToggleTransparency(g) c:Save() end }) f:AddKeybind("SettingsInterfaceMenuKeybind",{ Title="Minimize Bind", Default="Insert", Callback=function(g) c:Save() end; }) Fluent.MinimizeKeybind=Fluent.Options.SettingsInterfaceMenuKeybind end function c.Save(d) local e={} for f,g in next,d.Options do if g.Type then if g.Type=="Colorpicker"then e[f]={{g.Hue,g.Sat,g.Vib},g.Transparency} elseif g.Type=="Keybind"then e[f]={g.Value,g.Mode} else e[f]=g.Value end end end writefile("Anastassy/"..getgenv().Head.."_"..b.Name..".cfg",a:JSONEncode(e)) end function c.Load(d) local e=a:JSONDecode(readfile("Anastassy/"..getgenv().Head.."_"..b.Name..".cfg"))or{} for f,g in next,e do if d.Options[f]then d.Options[f]:SetValue(g) end end end end return c
