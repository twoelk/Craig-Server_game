function welcome.guides_formspec(player)
	local name = player:get_player_name()
	minetest.show_formspec(name, "welcome:guides",
		welcome.size..
		welcome.close_button..
		welcome.image_button_welcome..
		welcome.image_button_profile..
		welcome.image_button_rules..
		welcome.image_button_guides..
		welcome.image_button_contact..
		welcome.image_button_inbox..
		welcome.image_button_staff..
		"tablecolumns[color;text]" ..
		"tableoptions[background=#00000000;highlight=#00000000;border=false]" ..
		"table[2,0;10,2;welcome_guides;" ..
		"#FFFF00," .. "Here are some useful guides and help articles," ..
			",,"..
		",Basic Controls,"..
		",,"..
		",- W\\, A\\, S\\, D:  move,"..
		",- Space:  jump,"..
		",- Left mouse button:  attack\\, mine blocks\\, ,"..
		",     move an item stack in an inventory ,"..
		",- Right mouse button:  use (e.g. open chest or furnace)\\, ,"..
		",     place blocks\\, move one item or split items in an inventory,"..
		",- Shift+Right mouse button:  place blocks,"..
		",- Middle mouse button:  move 10 items in an inventory ,"..
		",- Mouse wheel:  select item in the hotbar ,"..
		",- 0-9:  select item in the hotbar ,"..
		",- Q:  drop block\\, item or tool in hand ,"..
		",- I:  open or close the inventory menu ,"..
		",- T:  open the chat window ,".. 
		",- /:  Start issuing a server command ,"..
		",- Shift:  descend on ladders or sneak,"..
		",     (walk slower\\, prevents falling off ledges) ,"..
		",,"..
		",,"..
		",Top-Row Keys,"..
		",,"..
		",- Esc:  In the game: Abort / close current window / open pause menu. ,"..
		",     In the main menu: Quit Minetest. ,"..
		",- F1:  Show / hide HUD ,"..
		",- F2:  Show / hide chat and the text \\'Minetest\\' along with,"..
		",     the version number at the upper left part of the screen ,"..
		",- F3:  Enable / disable fog ,"..
		",- F4:  Enable / disable camera updates. ,"..
		",     Note: This key works only in debugging versions of Minetest\\, ,"..
		",     or by editing minetest.conf. Normal players don\\'t need this feature. ,"..
		",- F5:  Enable / disable debug screen which also shows your coordinates ,"..
		",- F6:  Enable / disable profiler (only useful for developers) ,"..
		",- F7:  Toggle camera. Available are (in this order): first person view\\, ,"..
		",     third person view from the back\\, third person view from the front ,"..
		",- F8:  Toggle cinematic mode. In cinematic mode\\, the camera will not ,"..
		",     immediately follow your movements\\, instead it will quickly \\'catch on\\'\\, ,"..
		",     so the movement of the camera looks a bit like the ,"..
		",     movement of an actual camera. ,"..
		",- F9:  Toggle minimap. There are two modes available\\, surface ,"..
		",     and radar\\, in different zoom levels. ,"..
		",- Shift+F9:  Toggle minimap shape (square or circle),"..
		",- F10:  open/close console/chat log ,"..
		",- F12:  Take a screenshot (as a PNG image) ,"..
		",,"..
		",,"..
		",Other Keys,"..
		",,"..
		",- E:  Walk fast (only works if fast mode is on) ,"..
		",- H:  Toggle noclip mode\\, only works if fly mode is also on ,"..
		",     (requires \\'noclip\\' privilege) ,"..
		",- K:  Toggle fly mode (requires \\'fly\\' privilege) ,"..
		",- J:  Toggle fast mode (requires \\'fast\\' privilege) ,"..
		",- R:  Toggle far view (disables all fog and allows viewing far away\\, ,"..
		",     may cause massive FPS drop) ,"..
		",- + (plus on numpad):  Increase minimal viewing distance ,"..
		",- - (minus on numpad):  Decrease minimal viewing distance ,"..
		",- P:  Write current stacktraces into the file \\'debug.txt\\'. ,"..
		",     This feature is only interesting for developers. ,"..
		",,"..
		",,"..
		",Chat Commands,"..
		",,"..
		",- /status,"..
		",- /privs,"..
		",- /mods,"..
		",- /help,"..
		",- /help all,"..
		",- /me,"..
		",- /give,"..
		",- /msg,"..
		",- /spawn,"..
		",- /sethome,"..
		",- /home,"..
		",- /mapfix,"..
		",- /pulverize,"..
		",,"..
		",,"..
		",Pages of the Welcome/Info GUI,"..
		",,"..
		",- /welcome,"..
		",- /profile,"..
		",- /rules,"..
		",- /guide,"..
		",- /contact,"..
		",- /inbox,"..
		",- /staff,"..
		",- ,"..
		",,"..
		";1]")
end

minetest.register_on_player_receive_fields(function(player,formname,fields)
	local plname = player:get_player_name()
	if formname ~= "welcome:guides" then
		return
	end
	if fields.welcome_welcome then
		minetest.after(1, function()
			welcome.welcome_formspec(player)
		end)
	end
	if fields.welcome_profile then
		minetest.after(1, function()
			welcome.profile_formspec(player)
		end)
	end
	if fields.welcome_rules then
		minetest.after(1, function()
			welcome.rules_formspec(player)
		end)
	end
	if fields.welcome_guides then
		minetest.after(1, function()
			welcome.guides_formspec(player)
		end)
	end
	if fields.welcome_contact then
		minetest.after(1, function()
			welcome.contact_formspec(player)
		end)
	end
	if fields.welcome_inbox then
		minetest.after(1, function()
			chatplus.showInbox(plname)
		end)
	end
	if fields.welcome_staff then
		minetest.after(1, function()
			welcome.staff_formspec(player)
		end)
	end
end)
