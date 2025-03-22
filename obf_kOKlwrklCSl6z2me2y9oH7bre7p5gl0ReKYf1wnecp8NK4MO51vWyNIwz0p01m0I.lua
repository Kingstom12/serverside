--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

local TABLE_TableIndirection = {};
TABLE_TableIndirection["obf_stringchar%0"] = string.char;
TABLE_TableIndirection["obf_stringbyte%0"] = string.byte;
TABLE_TableIndirection["obf_stringsub%0"] = string.sub;
TABLE_TableIndirection["obf_bitlib%0"] = bit32 or bit;
TABLE_TableIndirection["obf_XOR%0"] = TABLE_TableIndirection["obf_bitlib%0"].bxor;
TABLE_TableIndirection["obf_tableconcat%0"] = table.concat;
TABLE_TableIndirection["obf_tableinsert%0"] = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	TABLE_TableIndirection["result%0"] = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		TABLE_TableIndirection["obf_tableinsert%0"](TABLE_TableIndirection["result%0"], TABLE_TableIndirection["obf_stringchar%0"](TABLE_TableIndirection["obf_XOR%0"](TABLE_TableIndirection["obf_stringbyte%0"](TABLE_TableIndirection["obf_stringsub%0"](LUAOBFUSACTOR_STR, i, i + 1)), TABLE_TableIndirection["obf_stringbyte%0"](TABLE_TableIndirection["obf_stringsub%0"](LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return TABLE_TableIndirection["obf_tableconcat%0"](TABLE_TableIndirection["result%0"]);
end
TABLE_TableIndirection["ReplicatedStorage%0"] = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\227\198\203\41\239\184\198\10\212\199\232\49\233\169\198\25\212", "\126\177\163\187\69\134\219\167"));
TABLE_TableIndirection["Players%0"] = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\19\193\43\220\249\49\222", "\156\67\173\74\165"));
TABLE_TableIndirection["UserInputService%0"] = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\1\164\76\4\149\40\86\33\163\122\19\174\48\79\55\178", "\38\84\215\41\118\220\70"));
TABLE_TableIndirection["player%0"] = TABLE_TableIndirection["Players%0"].LocalPlayer;
TABLE_TableIndirection["playerGui%0"] = TABLE_TableIndirection["player%0"]:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\96\26\35\11\251\66\49\55\27", "\158\48\118\66\114"));
local function createSearchingGUI()
	TABLE_TableIndirection["screenGui%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\152\39\2\51\118\171\220\190\45", "\155\203\68\112\86\19\197"));
	TABLE_TableIndirection["screenGui%0"].Name = LUAOBFUSACTOR_DECRYPT_STR_0("\117\216\55\238\67\112\236\246\65\250\35\245", "\152\38\189\86\156\32\24\133");
	TABLE_TableIndirection["screenGui%0"].Parent = TABLE_TableIndirection["playerGui%0"];
	TABLE_TableIndirection["frame%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\218\69\166\75\249", "\38\156\55\199"));
	TABLE_TableIndirection["frame%0"].Size = UDim2.new(0 - 0, 858 - 558, 0 - 0, 100);
	TABLE_TableIndirection["frame%0"].Position = UDim2.new(0.5 - 0, -150, 0.5, -(669 - (555 + 64)));
	TABLE_TableIndirection["frame%0"].BackgroundColor3 = Color3.fromRGB(981 - (857 + 74), 618 - (367 + 201), 977 - (214 + 713));
	TABLE_TableIndirection["frame%0"].Parent = TABLE_TableIndirection["screenGui%0"];
	TABLE_TableIndirection["textLabel%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\156\120\100\60\63\117\248\70\164", "\35\200\29\28\72\115\20\154"));
	TABLE_TableIndirection["textLabel%0"].Size = UDim2.new(1, 0 + 0, 1 + 0, 0);
	TABLE_TableIndirection["textLabel%0"].BackgroundTransparency = 1;
	TABLE_TableIndirection["textLabel%0"].Text = LUAOBFUSACTOR_DECRYPT_STR_0("\42\186\208\205\142\36\61\23\184\145\217\130\62\116\11\186\220\208\153\41\122\87\241", "\84\121\223\177\191\237\76");
	TABLE_TableIndirection["textLabel%0"].TextColor3 = Color3.fromRGB(255, 255, 255);
	TABLE_TableIndirection["textLabel%0"].TextSize = 20;
	TABLE_TableIndirection["textLabel%0"].Font = Enum.Font.SourceSans;
	TABLE_TableIndirection["textLabel%0"].Parent = TABLE_TableIndirection["frame%0"];
	return TABLE_TableIndirection["screenGui%0"], TABLE_TableIndirection["textLabel%0"];
end
local function findServerDeleteRemote()
	TABLE_TableIndirection["FlatIdent_95CAC%0"] = 0;
	TABLE_TableIndirection["targetObject%0"] = nil;
	TABLE_TableIndirection["searchingGui%0"] = nil;
	TABLE_TableIndirection["textLabel%0"] = nil;
	TABLE_TableIndirection["deleteRemote%0"] = nil;
	while true do
		if (TABLE_TableIndirection["FlatIdent_95CAC%0"] ~= 3) then
		else
			for _, remote in pairs(TABLE_TableIndirection["ReplicatedStorage%0"]:GetChildren()) do
				if (remote:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\137\83\196\175\46\85\21\215\190\88\221", "\161\219\54\169\192\90\48\80")) or (4593 <= 2672)) then
					TABLE_TableIndirection["textLabel%0"].Text = "Searching for remote...\nTesting: " .. remote.Name;
					pcall(function()
						remote:FireServer(TABLE_TableIndirection["targetObject%0"]);
					end);
					wait(877.5 - (282 + 595));
					if (not TABLE_TableIndirection["targetObject%0"].Parent or (1168 > 3156)) then
						TABLE_TableIndirection["deleteRemote%0"] = remote;
						break;
					end
				end
			end
			TABLE_TableIndirection["searchingGui%0"]:Destroy();
			TABLE_TableIndirection["FlatIdent_95CAC%0"] = 1641 - (1523 + 114);
		end
		if ((TABLE_TableIndirection["FlatIdent_95CAC%0"] ~= (4 + 0)) or (572 > 4486)) then
		else
			return TABLE_TableIndirection["deleteRemote%0"];
		end
		if ((1404 == 1404) and (TABLE_TableIndirection["FlatIdent_95CAC%0"] ~= 0)) then
		else
			TABLE_TableIndirection["targetObject%0"] = nil;
			for _, obj in pairs(workspace:GetChildren()) do
				if (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\121\67\18\49", "\69\41\34\96")) and obj.Anchored and not obj:IsDescendantOf(TABLE_TableIndirection["player%0"].Character)) then
					TABLE_TableIndirection["targetObject%0"] = obj;
					break;
				end
			end
			TABLE_TableIndirection["FlatIdent_95CAC%0"] = 1 - 0;
		end
		if ((TABLE_TableIndirection["FlatIdent_95CAC%0"] == (1067 - (68 + 997))) or (3748 < 2212)) then
			TABLE_TableIndirection["searchingGui%0"], TABLE_TableIndirection["textLabel%0"] = createSearchingGUI();
			TABLE_TableIndirection["deleteRemote%0"] = nil;
			TABLE_TableIndirection["FlatIdent_95CAC%0"] = 1273 - (226 + 1044);
		end
		if ((TABLE_TableIndirection["FlatIdent_95CAC%0"] ~= (4 - 3)) or (1180 == 2180)) then
		else
			if not TABLE_TableIndirection["targetObject%0"] then
				for _, obj in pairs(workspace:GetChildren()) do
					if (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\154\204\219\14\7\57", "\75\220\163\183\106\98")) and not obj:IsDescendantOf(TABLE_TableIndirection["player%0"].Character)) then
						TABLE_TableIndirection["targetObject%0"] = obj;
						break;
					end
				end
			end
			if not TABLE_TableIndirection["targetObject%0"] then
				return nil;
			end
			TABLE_TableIndirection["FlatIdent_95CAC%0"] = 2;
		end
	end
end
local function findServerAddRemote()
	TABLE_TableIndirection["FlatIdent_89ECE%0"] = 117 - (32 + 85);
	TABLE_TableIndirection["testPartName%0"] = nil;
	TABLE_TableIndirection["addScript%0"] = nil;
	TABLE_TableIndirection["addRemote%0"] = nil;
	while true do
		if (TABLE_TableIndirection["FlatIdent_89ECE%0"] ~= 1) then
		else
			TABLE_TableIndirection["addRemote%0"] = nil;
			for _, remote in pairs(TABLE_TableIndirection["ReplicatedStorage%0"]:GetChildren()) do
				if ((4090 < 4653) and remote:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\48\191\134\56\205\7\159\157\50\215\22", "\185\98\218\235\87"))) then
					pcall(function()
						remote:FireServer(TABLE_TableIndirection["addScript%0"]);
					end);
					wait(0.5);
					if (workspace:FindFirstChild(TABLE_TableIndirection["testPartName%0"]) or (2652 < 196)) then
						TABLE_TableIndirection["addRemote%0"] = remote;
						workspace[TABLE_TableIndirection["testPartName%0"]]:Destroy();
						break;
					end
				end
			end
			TABLE_TableIndirection["FlatIdent_89ECE%0"] = 2;
		end
		if (TABLE_TableIndirection["FlatIdent_89ECE%0"] ~= 2) then
		else
			return TABLE_TableIndirection["addRemote%0"];
		end
		if (TABLE_TableIndirection["FlatIdent_89ECE%0"] ~= (0 + 0)) then
		else
			TABLE_TableIndirection["testPartName%0"] = LUAOBFUSACTOR_DECRYPT_STR_0("\234\56\35\210\219\185\223\12\38\244\202\149", "\202\171\92\71\134\190") .. math.random(222 + 778, 9999);
			TABLE_TableIndirection["addScript%0"] = [[
        local part = Instance.new("Part")
        part.Name = "]] .. TABLE_TableIndirection["testPartName%0"] .. [["
        part.Size = Vector3.new(1, 1, 1)
        part.Position = Vector3.new(0, 100, 0)
        part.Anchored = true
        part.Parent = game.Workspace
    ]];
			TABLE_TableIndirection["FlatIdent_89ECE%0"] = 958 - (892 + 65);
		end
	end
end
local function createGUI(deleteRemote, addRemote)
	TABLE_TableIndirection["screenGui%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\26\194\62\141\44\207\11\157\32", "\232\73\161\76"));
	TABLE_TableIndirection["screenGui%0"].Name = LUAOBFUSACTOR_DECRYPT_STR_0("\158\193\82\81\17\178\205\101\72\23", "\126\219\185\34\61");
	TABLE_TableIndirection["screenGui%0"].Parent = TABLE_TableIndirection["playerGui%0"];
	TABLE_TableIndirection["screenGui%0"].ResetOnSpawn = false;
	TABLE_TableIndirection["frame%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\42\220\95\127\123", "\135\108\174\62\18\30\23\147"));
	TABLE_TableIndirection["frame%0"].Size = UDim2.new(0 - 0, 554 - 254, 0 - 0, 280);
	TABLE_TableIndirection["frame%0"].Position = UDim2.new(350.5 - (87 + 263), -(330 - (67 + 113)), 0.5 + 0, -140);
	TABLE_TableIndirection["frame%0"].BackgroundColor3 = Color3.fromRGB(50, 122 - 72, 50);
	TABLE_TableIndirection["frame%0"].BackgroundTransparency = 0.3;
	TABLE_TableIndirection["frame%0"].BorderSizePixel = 0 + 0;
	TABLE_TableIndirection["frame%0"].Parent = TABLE_TableIndirection["screenGui%0"];
	local dragging, dragInput, dragStart, startPos;
	TABLE_TableIndirection["frame%0"].InputBegan:Connect(function(input)
		if ((4135 < 4817) and (input.UserInputType ~= Enum.UserInputType.MouseButton1)) then
		else
			dragging = true;
			dragStart = input.Position;
			startPos = TABLE_TableIndirection["frame%0"].Position;
		end
	end);
	TABLE_TableIndirection["frame%0"].InputChanged:Connect(function(input)
		if ((272 == 272) and (input.UserInputType ~= Enum.UserInputType.MouseMovement)) then
		else
			dragInput = input;
		end
	end);
	TABLE_TableIndirection["UserInputService%0"].InputChanged:Connect(function(input)
		if ((input == dragInput) and dragging) then
			TABLE_TableIndirection["FlatIdent_7366E%0"] = 0 - 0;
			TABLE_TableIndirection["delta%0"] = nil;
			while true do
				if ((952 - (802 + 150)) ~= TABLE_TableIndirection["FlatIdent_7366E%0"]) then
				else
					TABLE_TableIndirection["delta%0"] = input.Position - dragStart;
					TABLE_TableIndirection["frame%0"].Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + TABLE_TableIndirection["delta%0"].X, startPos.Y.Scale, startPos.Y.Offset + TABLE_TableIndirection["delta%0"].Y);
					break;
				end
			end
		end
	end);
	TABLE_TableIndirection["frame%0"].InputEnded:Connect(function(input)
		if ((100 <= 3123) and (input.UserInputType ~= Enum.UserInputType.MouseButton1)) then
		else
			dragging = false;
		end
	end);
	TABLE_TableIndirection["title%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\130\236\50\223\52\175\49\194\186", "\167\214\137\74\171\120\206\83"));
	TABLE_TableIndirection["title%0"].Size = UDim2.new(1, 0, 0, 80 - 50);
	TABLE_TableIndirection["title%0"].Position = UDim2.new(0, 0 - 0, 0 + 0, 997 - (915 + 82));
	TABLE_TableIndirection["title%0"].BackgroundColor3 = Color3.fromRGB(84 - 54, 18 + 12, 39 - 9);
	TABLE_TableIndirection["title%0"].Text = LUAOBFUSACTOR_DECRYPT_STR_0("\166\233\23\69\232\171\132\249\38\78\184\148\142\226\36\88\234\231\184\249\54\88", "\199\235\144\82\61\152");
	TABLE_TableIndirection["title%0"].TextColor3 = Color3.fromRGB(1442 - (1069 + 118), 578 - 323, 255);
	TABLE_TableIndirection["title%0"].TextSize = 20;
	TABLE_TableIndirection["title%0"].Font = Enum.Font.SourceSansBold;
	TABLE_TableIndirection["title%0"].Parent = TABLE_TableIndirection["frame%0"];
	local function createButton(name, position, color, callback)
		TABLE_TableIndirection["FlatIdent_43862%0"] = 0;
		TABLE_TableIndirection["button%0"] = nil;
		while true do
			if ((TABLE_TableIndirection["FlatIdent_43862%0"] ~= (3 - 1)) or (1369 > 4987)) then
			else
				TABLE_TableIndirection["button%0"].TextSize = 3 + 13;
				TABLE_TableIndirection["button%0"].Font = Enum.Font.SourceSans;
				TABLE_TableIndirection["button%0"].Parent = TABLE_TableIndirection["frame%0"];
				TABLE_TableIndirection["FlatIdent_43862%0"] = 4 - 1;
			end
			if ((TABLE_TableIndirection["FlatIdent_43862%0"] ~= (1 + 0)) or (863 >= 4584)) then
			else
				TABLE_TableIndirection["button%0"].BackgroundColor3 = color;
				TABLE_TableIndirection["button%0"].Text = name;
				TABLE_TableIndirection["button%0"].TextColor3 = Color3.fromRGB(1046 - (368 + 423), 255, 255);
				TABLE_TableIndirection["FlatIdent_43862%0"] = 6 - 4;
			end
			if (TABLE_TableIndirection["FlatIdent_43862%0"] ~= (21 - (10 + 8))) then
			else
				TABLE_TableIndirection["button%0"].MouseButton1Click:Connect(callback);
				return TABLE_TableIndirection["button%0"];
			end
			if (TABLE_TableIndirection["FlatIdent_43862%0"] ~= (0 - 0)) then
			else
				TABLE_TableIndirection["button%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\51\19\161\63\37\3\173\63\8\24", "\75\103\118\217"));
				TABLE_TableIndirection["button%0"].Size = UDim2.new(442 - (416 + 26), 830 - 570, 0, 13 + 17);
				TABLE_TableIndirection["button%0"].Position = position;
				TABLE_TableIndirection["FlatIdent_43862%0"] = 1 - 0;
			end
		end
	end
	TABLE_TableIndirection["btools%0"] = nil;
	TABLE_TableIndirection["bannedPlayers%0"] = {};
	createButton(LUAOBFUSACTOR_DECRYPT_STR_0("\224\93\102\17\249\60\211\91\127\24\170", "\126\167\52\16\116\217"), UDim2.new(0, 20, 0, 478 - (145 + 293)), Color3.fromRGB(577 - (44 + 386), 112, 1705 - (998 + 488)), function()
		if not TABLE_TableIndirection["btools%0"] then
			TABLE_TableIndirection["FlatIdent_104D4%0"] = 0 + 0;
			while true do
				if ((TABLE_TableIndirection["FlatIdent_104D4%0"] ~= 1) or (724 >= 1668)) then
				else
					TABLE_TableIndirection["btools%0"].Parent = TABLE_TableIndirection["player%0"].Backpack;
					break;
				end
				if ((428 < 1804) and (TABLE_TableIndirection["FlatIdent_104D4%0"] == 0)) then
					TABLE_TableIndirection["btools%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\224\33\48\144\177\11\222\193\32", "\156\168\78\64\224\212\121"));
					TABLE_TableIndirection["btools%0"].BinType = LUAOBFUSACTOR_DECRYPT_STR_0("\47\239\168\195\2\252", "\174\103\142\197");
					TABLE_TableIndirection["FlatIdent_104D4%0"] = 1;
				end
			end
		end
	end);
	createButton(LUAOBFUSACTOR_DECRYPT_STR_0("\114\45\83\61\49\91\184\119\58\82\43\101\22\185\87\37\80\63\48\77\177", "\152\54\72\63\88\69\62"), UDim2.new(0 + 0, 20, 772 - (201 + 571), 1218 - (116 + 1022)), Color3.fromRGB(574 - 436, 43, 133 + 93), function()
		for _, otherPlayer in pairs(TABLE_TableIndirection["Players%0"]:GetPlayers()) do
			TABLE_TableIndirection["FlatIdent_A9A3%0"] = 0;
			TABLE_TableIndirection["character%0"] = nil;
			while true do
				if (TABLE_TableIndirection["FlatIdent_A9A3%0"] ~= (0 - 0)) then
				else
					TABLE_TableIndirection["character%0"] = otherPlayer.Character;
					if (TABLE_TableIndirection["character%0"] or (3325 > 4613)) then
						TABLE_TableIndirection["leftArm%0"] = TABLE_TableIndirection["character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\248\193\232\72\148\229\252\81", "\60\180\164\142"));
						TABLE_TableIndirection["rightArm%0"] = TABLE_TableIndirection["character%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\106\87\2\33\51\173\51\74\83", "\114\56\62\101\73\71\141"));
						if TABLE_TableIndirection["leftArm%0"] then
							pcall(function()
								deleteRemote:FireServer(TABLE_TableIndirection["leftArm%0"]);
							end);
						end
						if TABLE_TableIndirection["rightArm%0"] then
							pcall(function()
								deleteRemote:FireServer(TABLE_TableIndirection["rightArm%0"]);
							end);
						end
					end
					break;
				end
			end
		end
	end);
	createButton(LUAOBFUSACTOR_DECRYPT_STR_0("\155\229\222\197\182\169\236\203\170\226\200\212\185\234\222\132\240\168\201\193\181\230\205\193\175\230\201\207\171\249\218\199\189\160", "\164\216\137\187"), UDim2.new(0 - 0, 20, 0, 120), Color3.fromRGB(148, 859 - (814 + 45), 519 - 308), function()
		TABLE_TableIndirection["FlatIdent_40CF%0"] = 0 + 0;
		TABLE_TableIndirection["objectsToDelete%0"] = nil;
		while true do
			if ((TABLE_TableIndirection["FlatIdent_40CF%0"] ~= (0 + 0)) or (4950 <= 4553)) then
			else
				TABLE_TableIndirection["objectsToDelete%0"] = {};
				for _, obj in pairs(workspace:GetChildren()) do
					TABLE_TableIndirection["FlatIdent_79536%0"] = 885 - (261 + 624);
					TABLE_TableIndirection["isPlayerCharacter%0"] = nil;
					TABLE_TableIndirection["isSpawnLocation%0"] = nil;
					while true do
						if ((2665 <= 3933) and (TABLE_TableIndirection["FlatIdent_79536%0"] ~= (0 - 0))) then
						else
							TABLE_TableIndirection["isPlayerCharacter%0"] = false;
							TABLE_TableIndirection["isSpawnLocation%0"] = obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\225\246\48\165\168\210\4\209\231\37\187\169\240", "\107\178\134\81\210\198\158"));
							TABLE_TableIndirection["FlatIdent_79536%0"] = 1081 - (1020 + 60);
						end
						if (TABLE_TableIndirection["FlatIdent_79536%0"] ~= 1) then
						else
							for _, p in pairs(TABLE_TableIndirection["Players%0"]:GetPlayers()) do
								if ((3273 == 3273) and p.Character and (obj == p.Character)) then
									TABLE_TableIndirection["isPlayerCharacter%0"] = true;
									break;
								end
							end
							if (not TABLE_TableIndirection["isPlayerCharacter%0"] and not TABLE_TableIndirection["isSpawnLocation%0"] and (obj.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\26\15\145\195\186\52\15\150\195", "\202\88\110\226\166")) and (obj.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\234\1\148\254\217\202\13\142\242\254\209\6\133\240\207\209\63\131\229\222", "\170\163\111\226\151")) and (obj.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\37\34\187\63\73\50\59\35\53\191\55\90\50", "\73\113\80\210\88\46\87"))) then
								table.insert(TABLE_TableIndirection["objectsToDelete%0"], obj);
							end
							break;
						end
					end
				end
				TABLE_TableIndirection["FlatIdent_40CF%0"] = 1424 - (630 + 793);
			end
			if (TABLE_TableIndirection["FlatIdent_40CF%0"] ~= 1) then
			else
				for _, obj in pairs(TABLE_TableIndirection["objectsToDelete%0"]) do
					spawn(function()
						pcall(function()
							deleteRemote:FireServer(obj);
						end);
					end);
				end
				wait(0.1);
				break;
			end
		end
	end);
	createButton(LUAOBFUSACTOR_DECRYPT_STR_0("\178\41\223\4\226\147\108\254\26\242\149\40\194\5\233", "\135\225\76\173\114"), UDim2.new(0, 67 - 47, 0, 160), Color3.fromRGB(153, 236 - 186, 204), function()
		for _, targetPlayer in pairs(TABLE_TableIndirection["Players%0"]:GetPlayers()) do
			pcall(function()
				deleteRemote:FireServer(targetPlayer);
			end);
		end
	end);
	createButton(LUAOBFUSACTOR_DECRYPT_STR_0("\56\236\182\240\156\177\166\3\232\170", "\199\122\141\216\208\204\221"), UDim2.new(0, 20, 0, 79 + 121), Color3.fromRGB(640 - 454, 1832 - (760 + 987), 211), function()
		TABLE_TableIndirection["FlatIdent_6A83E%0"] = 1913 - (1789 + 124);
		TABLE_TableIndirection["inputGui%0"] = nil;
		TABLE_TableIndirection["inputFrame%0"] = nil;
		TABLE_TableIndirection["textBox%0"] = nil;
		TABLE_TableIndirection["confirmButton%0"] = nil;
		while true do
			if (TABLE_TableIndirection["FlatIdent_6A83E%0"] ~= 0) then
			else
				TABLE_TableIndirection["inputGui%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\158\222\2\245\125\248\138\200\25", "\150\205\189\112\144\24"));
				TABLE_TableIndirection["inputGui%0"].Name = LUAOBFUSACTOR_DECRYPT_STR_0("\7\133\177\101\10\152\4\4\2\145\182", "\112\69\228\223\44\100\232\113");
				TABLE_TableIndirection["inputGui%0"].Parent = TABLE_TableIndirection["playerGui%0"];
				TABLE_TableIndirection["inputFrame%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\242\13\6\222\179", "\230\180\127\103\179\214\28"));
				TABLE_TableIndirection["FlatIdent_6A83E%0"] = 767 - (745 + 21);
			end
			if (TABLE_TableIndirection["FlatIdent_6A83E%0"] ~= (2 + 2)) then
			else
				TABLE_TableIndirection["confirmButton%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\184\0\71\82\198\84\244\152\10\81", "\128\236\101\63\38\132\33"));
				TABLE_TableIndirection["confirmButton%0"].Size = UDim2.new(0, 80, 0 - 0, 30);
				TABLE_TableIndirection["confirmButton%0"].Position = UDim2.new(0, 60, 0, 235 - 175);
				TABLE_TableIndirection["confirmButton%0"].BackgroundColor3 = Color3.fromRGB(0 + 0, 200, 0 + 0);
				TABLE_TableIndirection["FlatIdent_6A83E%0"] = 5;
			end
			if ((3824 > 409) and (TABLE_TableIndirection["FlatIdent_6A83E%0"] == 6)) then
				TABLE_TableIndirection["confirmButton%0"].MouseButton1Click:Connect(function()
					TABLE_TableIndirection["targetName%0"] = TABLE_TableIndirection["textBox%0"].Text;
					if ((2087 == 2087) and TABLE_TableIndirection["targetName%0"] and (TABLE_TableIndirection["targetName%0"] ~= LUAOBFUSACTOR_DECRYPT_STR_0("\137\167\5\65\164\171\223\160\168\8\65\164\171\193\173\164\20\4\185\249\143\168\160\2\84\186\234\214\236\167\16\73\179", "\175\204\201\113\36\214\139"))) then
						for _, targetPlayer in pairs(TABLE_TableIndirection["Players%0"]:GetPlayers()) do
							if ((targetPlayer.Name == TABLE_TableIndirection["targetName%0"]) or (targetPlayer.DisplayName == TABLE_TableIndirection["targetName%0"])) then
								pcall(function()
									deleteRemote:FireServer(targetPlayer);
								end);
								TABLE_TableIndirection["bannedPlayers%0"][targetPlayer.Name] = true;
							end
						end
					end
					TABLE_TableIndirection["inputGui%0"]:Destroy();
				end);
				break;
			end
			if ((TABLE_TableIndirection["FlatIdent_6A83E%0"] ~= (1060 - (87 + 968))) or (3404 > 4503)) then
			else
				TABLE_TableIndirection["confirmButton%0"].Text = LUAOBFUSACTOR_DECRYPT_STR_0("\101\205\59", "\100\39\172\85\188");
				TABLE_TableIndirection["confirmButton%0"].TextColor3 = Color3.fromRGB(1122 - 867, 232 + 23, 255);
				TABLE_TableIndirection["confirmButton%0"].TextSize = 16;
				TABLE_TableIndirection["confirmButton%0"].Parent = TABLE_TableIndirection["inputFrame%0"];
				TABLE_TableIndirection["FlatIdent_6A83E%0"] = 6;
			end
			if (TABLE_TableIndirection["FlatIdent_6A83E%0"] ~= (6 - 3)) then
			else
				TABLE_TableIndirection["textBox%0"].TextColor3 = Color3.fromRGB(255, 1668 - (447 + 966), 255);
				TABLE_TableIndirection["textBox%0"].Text = LUAOBFUSACTOR_DECRYPT_STR_0("\136\118\173\133\33\237\104\181\129\42\168\106\249\142\50\160\125\249\143\33\237\124\176\147\35\161\121\160\192\61\172\117\188", "\83\205\24\217\224");
				TABLE_TableIndirection["textBox%0"].TextSize = 16;
				TABLE_TableIndirection["textBox%0"].Parent = TABLE_TableIndirection["inputFrame%0"];
				TABLE_TableIndirection["FlatIdent_6A83E%0"] = 10 - 6;
			end
			if ((TABLE_TableIndirection["FlatIdent_6A83E%0"] ~= 1) or (3506 <= 1309)) then
			else
				TABLE_TableIndirection["inputFrame%0"].Size = UDim2.new(1817 - (1703 + 114), 200, 0, 801 - (376 + 325));
				TABLE_TableIndirection["inputFrame%0"].Position = UDim2.new(0.5, -(163 - 63), 0.5 - 0, -50);
				TABLE_TableIndirection["inputFrame%0"].BackgroundColor3 = Color3.fromRGB(50, 15 + 35, 110 - 60);
				TABLE_TableIndirection["inputFrame%0"].Parent = TABLE_TableIndirection["inputGui%0"];
				TABLE_TableIndirection["FlatIdent_6A83E%0"] = 2;
			end
			if (TABLE_TableIndirection["FlatIdent_6A83E%0"] == (16 - (9 + 5))) then
				TABLE_TableIndirection["textBox%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\210\192\213\41\196\202\213", "\93\134\165\173"));
				TABLE_TableIndirection["textBox%0"].Size = UDim2.new(376 - (85 + 291), 180, 1265 - (243 + 1022), 114 - 84);
				TABLE_TableIndirection["textBox%0"].Position = UDim2.new(0 + 0, 1190 - (1123 + 57), 0 + 0, 10);
				TABLE_TableIndirection["textBox%0"].BackgroundColor3 = Color3.fromRGB(70, 324 - (163 + 91), 2000 - (1869 + 61));
				TABLE_TableIndirection["FlatIdent_6A83E%0"] = 1 + 2;
			end
		end
	end);
	createButton(LUAOBFUSACTOR_DECRYPT_STR_0("\140\231\207\130\9\205\160\119\174\230", "\30\222\146\161\162\90\174\210"), UDim2.new(0 - 0, 30 - 10, 0 + 0, 329 - 89), Color3.fromRGB(196 + 12, 1597 - (1329 + 145), 1209 - (140 + 831)), function()
		TABLE_TableIndirection["triggerRemote%0"] = workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\209\92\121\13\226\75\98\56\224\67\127\30\224", "\106\133\46\16"));
		if not TABLE_TableIndirection["triggerRemote%0"] then
			TABLE_TableIndirection["warningGui%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\107\35\97\249\95\78\127\53\122", "\32\56\64\19\156\58"));
			TABLE_TableIndirection["warningGui%0"].Name = LUAOBFUSACTOR_DECRYPT_STR_0("\109\201\247\88\83\252\135\125\221\236", "\224\58\168\133\54\58\146");
			TABLE_TableIndirection["warningGui%0"].Parent = TABLE_TableIndirection["playerGui%0"];
			TABLE_TableIndirection["warningFrame%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\127\68\74\240\112", "\107\57\54\43\157\21\230\231"));
			TABLE_TableIndirection["warningFrame%0"].Size = UDim2.new(1850 - (1409 + 441), 1018 - (15 + 703), 0 + 0, 100);
			TABLE_TableIndirection["warningFrame%0"].Position = UDim2.new(0.5, -(588 - (262 + 176)), 1721.5 - (345 + 1376), -50);
			TABLE_TableIndirection["warningFrame%0"].BackgroundColor3 = Color3.fromRGB(50, 50, 738 - (198 + 490));
			TABLE_TableIndirection["warningFrame%0"].Parent = TABLE_TableIndirection["warningGui%0"];
			TABLE_TableIndirection["warningLabel%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\239\142\9\225\149\221\205\222\135", "\175\187\235\113\149\217\188"));
			TABLE_TableIndirection["warningLabel%0"].Size = UDim2.new(1, 0 - 0, 2 - 1, 1206 - (696 + 510));
			TABLE_TableIndirection["warningLabel%0"].BackgroundTransparency = 1;
			TABLE_TableIndirection["warningLabel%0"].Text = "Trigger remote not found!\nRun other operations first.";
			TABLE_TableIndirection["warningLabel%0"].TextColor3 = Color3.fromRGB(255, 0, 0);
			TABLE_TableIndirection["warningLabel%0"].TextSize = 20;
			TABLE_TableIndirection["warningLabel%0"].Font = Enum.Font.SourceSans;
			TABLE_TableIndirection["warningLabel%0"].Parent = TABLE_TableIndirection["warningFrame%0"];
			wait(3 - 1);
			TABLE_TableIndirection["warningGui%0"]:Destroy();
		else
			TABLE_TableIndirection["FlatIdent_6B983%0"] = 0;
			TABLE_TableIndirection["scriptGui%0"] = nil;
			TABLE_TableIndirection["scriptFrame%0"] = nil;
			TABLE_TableIndirection["scriptBox%0"] = nil;
			TABLE_TableIndirection["executeButton%0"] = nil;
			while true do
				if (TABLE_TableIndirection["FlatIdent_6B983%0"] ~= 5) then
				else
					TABLE_TableIndirection["scriptBox%0"].MultiLine = true;
					TABLE_TableIndirection["scriptBox%0"].ClearTextOnFocus = true;
					TABLE_TableIndirection["scriptBox%0"].Parent = TABLE_TableIndirection["scriptFrame%0"];
					TABLE_TableIndirection["FlatIdent_6B983%0"] = 6;
				end
				if (TABLE_TableIndirection["FlatIdent_6B983%0"] ~= 8) then
				else
					TABLE_TableIndirection["executeButton%0"].TextSize = 16;
					TABLE_TableIndirection["executeButton%0"].Parent = TABLE_TableIndirection["scriptFrame%0"];
					TABLE_TableIndirection["executeButton%0"].MouseButton1Click:Connect(function()
						TABLE_TableIndirection["FlatIdent_28F3E%0"] = 0;
						TABLE_TableIndirection["scriptText%0"] = nil;
						while true do
							if ((2955 == 2955) and (TABLE_TableIndirection["FlatIdent_28F3E%0"] ~= 0)) then
							else
								TABLE_TableIndirection["scriptText%0"] = TABLE_TableIndirection["scriptBox%0"].Text;
								if (TABLE_TableIndirection["scriptText%0"] and (TABLE_TableIndirection["scriptText%0"] ~= "") and (TABLE_TableIndirection["scriptText%0"] ~= LUAOBFUSACTOR_DECRYPT_STR_0("\113\226\193\124\226\106\108\57\239\152\67\246\107\56\47\172\147\69\243\109\56\52\170\147\73", "\24\92\207\225\44\131\25"))) then
									pcall(function()
										TABLE_TableIndirection["triggerRemote%0"]:FireServer(TABLE_TableIndirection["scriptText%0"]);
									end);
								end
								TABLE_TableIndirection["FlatIdent_28F3E%0"] = 1263 - (1091 + 171);
							end
							if (TABLE_TableIndirection["FlatIdent_28F3E%0"] == (1 + 0)) then
								TABLE_TableIndirection["scriptGui%0"]:Destroy();
								break;
							end
						end
					end);
					break;
				end
				if ((TABLE_TableIndirection["FlatIdent_6B983%0"] ~= 4) or (2903 == 1495)) then
				else
					TABLE_TableIndirection["scriptBox%0"].TextColor3 = Color3.fromRGB(802 - 547, 845 - 590, 629 - (123 + 251));
					TABLE_TableIndirection["scriptBox%0"].Text = LUAOBFUSACTOR_DECRYPT_STR_0("\6\158\248\124\26\110\95\214\248\85\20\104\89\147\171\79\9\116\91\199\248\68\30\111\78", "\29\43\179\216\44\123");
					TABLE_TableIndirection["scriptBox%0"].TextSize = 14;
					TABLE_TableIndirection["FlatIdent_6B983%0"] = 24 - 19;
				end
				if ((4546 >= 2275) and (TABLE_TableIndirection["FlatIdent_6B983%0"] ~= (701 - (208 + 490)))) then
				else
					TABLE_TableIndirection["scriptBox%0"].Size = UDim2.new(0, 33 + 347, 0 + 0, 1066 - (660 + 176));
					TABLE_TableIndirection["scriptBox%0"].Position = UDim2.new(0, 2 + 8, 202 - (14 + 188), 10);
					TABLE_TableIndirection["scriptBox%0"].BackgroundColor3 = Color3.fromRGB(70, 745 - (534 + 141), 70);
					TABLE_TableIndirection["FlatIdent_6B983%0"] = 4;
				end
				if ((819 >= 22) and (TABLE_TableIndirection["FlatIdent_6B983%0"] ~= 2)) then
				else
					TABLE_TableIndirection["scriptFrame%0"].BackgroundColor3 = Color3.fromRGB(21 + 29, 50, 50);
					TABLE_TableIndirection["scriptFrame%0"].Parent = TABLE_TableIndirection["scriptGui%0"];
					TABLE_TableIndirection["scriptBox%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\137\220\56\88\159\214\56", "\44\221\185\64"));
					TABLE_TableIndirection["FlatIdent_6B983%0"] = 3 + 0;
				end
				if (TABLE_TableIndirection["FlatIdent_6B983%0"] == 6) then
					TABLE_TableIndirection["executeButton%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\53\226\80\75\81\20\243\92\80\125", "\19\97\135\40\63"));
					TABLE_TableIndirection["executeButton%0"].Size = UDim2.new(0 + 0, 100, 0 - 0, 30);
					TABLE_TableIndirection["executeButton%0"].Position = UDim2.new(0 - 0, 420 - 270, 0, 260);
					TABLE_TableIndirection["FlatIdent_6B983%0"] = 7;
				end
				if (TABLE_TableIndirection["FlatIdent_6B983%0"] ~= (4 + 3)) then
				else
					TABLE_TableIndirection["executeButton%0"].BackgroundColor3 = Color3.fromRGB(0 + 0, 200, 0);
					TABLE_TableIndirection["executeButton%0"].Text = LUAOBFUSACTOR_DECRYPT_STR_0("\139\68\54\56\58\37\171", "\81\206\60\83\91\79");
					TABLE_TableIndirection["executeButton%0"].TextColor3 = Color3.fromRGB(651 - (115 + 281), 255, 593 - 338);
					TABLE_TableIndirection["FlatIdent_6B983%0"] = 7 + 1;
				end
				if (TABLE_TableIndirection["FlatIdent_6B983%0"] ~= 0) then
				else
					TABLE_TableIndirection["scriptGui%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\125\168\194\119\42\205\106\177\71", "\196\46\203\176\18\79\163\45"));
					TABLE_TableIndirection["scriptGui%0"].Name = LUAOBFUSACTOR_DECRYPT_STR_0("\139\33\108\23\52\239\198\182\50\107\10\3\238\230", "\143\216\66\30\126\68\155");
					TABLE_TableIndirection["scriptGui%0"].Parent = TABLE_TableIndirection["playerGui%0"];
					TABLE_TableIndirection["FlatIdent_6B983%0"] = 2 - 1;
				end
				if (TABLE_TableIndirection["FlatIdent_6B983%0"] == 1) then
					TABLE_TableIndirection["scriptFrame%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\218\12\198\192", "\129\202\168\109\171\165\195\183"));
					TABLE_TableIndirection["scriptFrame%0"].Size = UDim2.new(0, 1466 - 1066, 867 - (550 + 317), 433 - 133);
					TABLE_TableIndirection["scriptFrame%0"].Position = UDim2.new(0.5 - 0, -200, 0.5 - 0, -150);
					TABLE_TableIndirection["FlatIdent_6B983%0"] = 2;
				end
			end
		end
	end);
	TABLE_TableIndirection["UserInputService%0"].InputBegan:Connect(function(input)
		if ((3162 == 3162) and (input.UserInputType ~= Enum.UserInputType.MouseButton1)) then
		elseif ((TABLE_TableIndirection["btools%0"] and TABLE_TableIndirection["btools%0"].Active and (TABLE_TableIndirection["btools%0"].Parent == TABLE_TableIndirection["player%0"].Backpack)) or (2369 > 4429)) then
			TABLE_TableIndirection["mouse%0"] = TABLE_TableIndirection["player%0"]:GetMouse();
			TABLE_TableIndirection["camera%0"] = workspace.CurrentCamera;
			TABLE_TableIndirection["rayOrigin%0"] = TABLE_TableIndirection["camera%0"].CFrame.Position;
			TABLE_TableIndirection["rayDirection%0"] = (TABLE_TableIndirection["mouse%0"].Hit.Position - TABLE_TableIndirection["rayOrigin%0"]).Unit * (1285 - (134 + 151));
			TABLE_TableIndirection["raycastParams%0"] = RaycastParams.new();
			TABLE_TableIndirection["raycastParams%0"].FilterDescendantsInstances = {TABLE_TableIndirection["player%0"].Character};
			TABLE_TableIndirection["raycastParams%0"].FilterType = Enum.RaycastFilterType.Blacklist;
			TABLE_TableIndirection["raycastResult%0"] = workspace:Raycast(TABLE_TableIndirection["rayOrigin%0"], TABLE_TableIndirection["rayDirection%0"], TABLE_TableIndirection["raycastParams%0"]);
			if ((4095 >= 3183) and TABLE_TableIndirection["raycastResult%0"]) then
				TABLE_TableIndirection["FlatIdent_206F8%0"] = 0;
				TABLE_TableIndirection["target%0"] = nil;
				while true do
					if (((0 - 0) == TABLE_TableIndirection["FlatIdent_206F8%0"]) or (3711 < 1008)) then
						TABLE_TableIndirection["target%0"] = TABLE_TableIndirection["raycastResult%0"].Instance;
						if (TABLE_TableIndirection["target%0"] or (1049 <= 906)) then
							TABLE_TableIndirection["FlatIdent_3CF36%0"] = 1990 - (582 + 1408);
							while true do
								if ((4513 > 2726) and ((0 - 0) ~= TABLE_TableIndirection["FlatIdent_3CF36%0"])) then
								else
									TABLE_TableIndirection["target%0"]:Destroy();
									pcall(function()
										deleteRemote:FireServer(TABLE_TableIndirection["target%0"]);
									end);
									break;
								end
							end
						end
						break;
					end
				end
			end
		end
	end);
	if (addRemote or (1481 >= 2658)) then
		TABLE_TableIndirection["FlatIdent_4D434%0"] = 0 - 0;
		TABLE_TableIndirection["invisiblePartScript%0"] = nil;
		while true do
			if ((TABLE_TableIndirection["FlatIdent_4D434%0"] ~= 0) or (3220 == 1364)) then
			else
				TABLE_TableIndirection["invisiblePartScript%0"] = [[
            local part = Instance.new("Part")
            part.Name = "InvisibleTriggerPart"
            part.Size = Vector3.new(1, 1, 1)
            part.Position = Vector3.new(0, 200, 0)
            part.Anchored = true
            part.Transparency = 1
            part.CanCollide = false
            part.Parent = game.Workspace

            local script = Instance.new("Script")
            script.Name = "TestScript"
            script.Source = 'local Players = game:GetService("Players")\n' ..
                           'local function showTest()\n' ..
                           '    for _, plr in pairs(Players:GetPlayers()) do\n' ..
                           '        local gui = Instance.new("ScreenGui")\n' ..
                           '        gui.Name = "TestGui"\n' ..
                           '        gui.Parent = plr.PlayerGui\n' ..
                           '        local label = Instance.new("TextLabel")\n' ..
                           '        label.Size = UDim2.new(1, 0, 1, 0)\n' ..
                           '        label.Position = UDim2.new(0, 0, 0, 0)\n' ..
                           '        label.Text = "TEST"\n' ..
                           '        label.TextSize = 100\n' ..
                           '        label.TextColor3 = Color3.new(1, 0, 0)\n' ..
                           '        label.BackgroundTransparency = 1\n' ..
                           '        label.Font = Enum.Font.SourceSansBold\n' ..
                           '        label.Parent = gui\n' ..
                           '    end\n' ..
                           'end\n' ..
                           'game.Workspace:WaitForChild("TriggerRemote").OnServerEvent:Connect(function(player, scriptText)\n' ..
                           '    if scriptText then\n' ..
                           '        local func, err = loadstring(scriptText)\n' ..
                           '        if func then\n' ..
                           '            func()\n' ..
                           '        else\n' ..
                           '            warn("Script error: " .. err)\n' ..
                           '        end\n' ..
                           '    else\n' ..
                           '        showTest()\n' ..
                           '    end\n' ..
                           'end)'
            script.Parent = part

            local remote = Instance.new("RemoteEvent")
            remote.Name = "TriggerRemote"
            remote.Parent = game.Workspace
        ]];
				pcall(function()
					addRemote:FireServer(TABLE_TableIndirection["invisiblePartScript%0"]);
				end);
				TABLE_TableIndirection["FlatIdent_4D434%0"] = 1;
			end
			if (TABLE_TableIndirection["FlatIdent_4D434%0"] ~= 1) then
			else
				wait(1);
				break;
			end
		end
	end
end
TABLE_TableIndirection["deleteRemote%0"] = findServerDeleteRemote();
TABLE_TableIndirection["addRemote%0"] = findServerAddRemote();
if (TABLE_TableIndirection["deleteRemote%0"] or (1054 > 3392)) then
	createGUI(TABLE_TableIndirection["deleteRemote%0"], TABLE_TableIndirection["addRemote%0"]);
else
	TABLE_TableIndirection["screenGui%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\17\91\37\221\219\26\193\55\81", "\134\66\56\87\184\190\116"));
	TABLE_TableIndirection["screenGui%0"].Name = LUAOBFUSACTOR_DECRYPT_STR_0("\25\35\27\180\11\204\52\60", "\85\92\81\105\219\121\139\65");
	TABLE_TableIndirection["screenGui%0"].Parent = TABLE_TableIndirection["playerGui%0"];
	TABLE_TableIndirection["frame%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\219\161\81\72\121", "\191\157\211\48\37\28"));
	TABLE_TableIndirection["frame%0"].Size = UDim2.new(0 - 0, 300, 1824 - (1195 + 629), 132 - 32);
	TABLE_TableIndirection["frame%0"].Position = UDim2.new(0.5, -150, 0.5, -50);
	TABLE_TableIndirection["frame%0"].BackgroundColor3 = Color3.fromRGB(50, 291 - (187 + 54), 50);
	TABLE_TableIndirection["frame%0"].Parent = TABLE_TableIndirection["screenGui%0"];
	TABLE_TableIndirection["textLabel%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\235\26\236\8\22\222\29\241\16", "\90\191\127\148\124"));
	TABLE_TableIndirection["textLabel%0"].Size = UDim2.new(1, 0, 781 - (162 + 618), 0 + 0);
	TABLE_TableIndirection["textLabel%0"].BackgroundTransparency = 1;
	TABLE_TableIndirection["textLabel%0"].Text = "No delete remote found!\nGUI cannot be created.";
	TABLE_TableIndirection["textLabel%0"].TextColor3 = Color3.fromRGB(170 + 85, 0, 0 - 0);
	TABLE_TableIndirection["textLabel%0"].TextSize = 33 - 13;
	TABLE_TableIndirection["textLabel%0"].Font = Enum.Font.SourceSans;
	TABLE_TableIndirection["textLabel%0"].Parent = TABLE_TableIndirection["frame%0"];
	wait(1 + 1);
	TABLE_TableIndirection["screenGui%0"]:Destroy();
end