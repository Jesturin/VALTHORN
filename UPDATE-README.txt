2020-10-03

- NEW Realtime and FULLY customizable reborn system has been coded
- NEW FULLY customizable boss event has been added (F10-Mautareta style with customizable EXP per level)
- NEW customizable sin event system (that can either start with command or eventtimer)
- NEW customizable skill upgrading system has been added (You can control any skill's learning/upgrading)
- NEW bound storage system has been added enabling players to add specific items into storage
- NEW Emok INT certificates have been coded (You can now add/customize your emok certificate however you want (EXP/Time)
- NEW Area protection has been added where you can set level limits to rects ((Area (Rect %d %d %d %d)(Level %d-%d) in Area.txt) 
- NEW Item Combine system has been added where you can combine multiple items of a player and save them into one spot.
- NEW Aggro system has been added where you can set specific mobs to calculate the aggro only from pure damage
- EXP System has been recoded (Huge EXP Amounts / Party EXP / EXP Events do not give minus values anymore)
- Talisman of expert has been completely re-coded and now can work on ANY item (not only weapon/armors/ornaments)
- Artillery skills for thief/shaman have been coded
- F10 has now fully customizable EXP/reward per level
- Mautareta has now fully customizable EXP/reward per level
- Skills calculations have been improved and can now also have PVP editing in details
- Str,Int,Wis,Agi,Hth,Otp,Eva have been added as new settings of calculations
- Event Maps new feature: auto rb when dead
- Event Maps new feature: Relogging/c/l people will now get back inside the system
- Event Maps new feature: starting register/system with command (/eventmap QuestID Flag and /registeron QuestID Flag)
- Channel system: New and more fluid way of creating/joining channels
- Mage/Shaman hit level difference can now be disabled/changed
- Magical talismans now work on Shaman weapons
- EB enchanting now works on Shaman weapons
- Grade 1 mixings are now available
- Kill Command has been added
- Realtime name changing system (no need to relog anymore)
- MI is now working like int
- Much more in the package!

2020-08-26 (Updated Engine.dll - Core.dll)

- 2004 Blue screen issue has been fixed and is now stable

- Mining system has been re-coded and you can now fully edit it in Mining.txt and MakeItem.txt

- NEW Aggro system has been coded and can be applied for speicifc mobs inside MonsterDamage.txt (Uses Raw damage instead of general's pww etc)

- Battlefield has been updated and is now more customizable, Safezones can now be made by rects (Bottom Left = (X1,Y1) and Top Right = (X2,Y2))

- F10 has been updated, you can now edit which exp you want for a specific level and give rewards to each levels.

- F10 chance items have been added (% of players can receive special drops)

- New option for daily quests has been added:

//Configs/DailyQuest.txt
[EXPGap]
Active = 1

[Reward]
Bound = 0

- NEW repeatable item quest have been added to dailyquest.txt

(RepeatItem (Index 48)(Quests 118,119,120,121)(Permanent 1))

- NEW Item rewards have been added to ItemUse.txt

(ItemReward (Index 48)(RewardID 1))

- New names addons have been added (To change systems names) more names will be added there

- NEW range option has been added to battlefield alongside with Z coordinates when porting

- 1Hit bug and immortal have been fixed

- Attack abuse with key has been disabled

- AreaQuests have been updated and can now have as many areas as wanted.

- Channel system has been updated and most bugs in it are now fixed

- Calculations have been fixed and are now working smoother

- Picking pets issues have been fixed

- Daily quests finishing bug has been fixed

- Costumes skin on and skin off views and effects have been fixed

- Memory leaks have been all fixed

- Stability has been set to 100%

2020-06-06 (Updated Pulse.dll - Core.dll - Engine.dll)

- NEW fully int-like suffering valley system has been added

- Castle war Cannons have been implemented (You can disable packetblock 160 if you want to use it)

- NEW Assassin kill feature added (With daily limit and same user protection)

- Rupture AOE option has been added
//Skills/Thief.txt
[Rupture]
AOE = 1;
PVPAOE = 0;
AOERange = 4;
PVPReduce=34;
Multiply=4;
GradeDamageIncreaseMin=50;
GradeDamageIncreaseMax=80;

- NEW feature added to enable assassin drops in specific areas

- /Winners folder has been implemented to keep track of all pvps winners

- Destructing Keys/Protect Leader/Suffering Valley selection bugs have been fixed

- Party Wooden boxes drop has been fixed 

- Lawless points range in party fixed

- NEW Son of blessing sky learning item added
//Configs/Protection.txt
[BlessingSonOfTheSky]
ItemIndex = 237 //Setting this to a value other than 0 will disable the auto learn for the skill

- Lawless EXP effect showing bugs have been fixed

- PVP systems not attacking bug have been fixed

- Last man standing colors bug have been fixed

- Channel system bag drops have been fixed

- Castle war red/blue names not showing bug has been fixed

- Unlimited HP Hack has been fixed 

- Triangular battle bugs have been fixed (Dont forget to add item index 1941 to your inititem)

- Events timer not starting/stopping bug have been fixed

- World cup final round bug has been fixed

- Protect leader doors opening bug has been fixed

- Honor name bugs has been fixed

- Filter.txt can now work for commands as well

- Defense incarnation 6 grade bug has been fixed

- Minor guild buffs bugs have been fixed

- Hide bug (not showing) has been fixed

- New debugging command added for admins (Mainly for the archer 1hit bug)

- Minor bugs fixes

2020-05-31
- NEW fully int-like triangular battle system added fully customizable (Description in config file)

- Level based teams applied for battlefield and Triangular battle

- NEW customizable sound system added
//config.pk sound.dat example for it
(sound "bgm002" (rect 8362 7595 8365 7599) (particle "effect_ef080"))
(sound "bgm001" (ksm 32_29))

- Fixes for channel system aggro
- Fixes for hunting system exp
- Fixes for lawless area assassin name showing
- Fixes for lawless area exp effect

2020-05-22
/Add to F10.txt and Mautareta.txt
;Level 100+
[Eighth]
Amount = 10500000000

2020-05-21 - Updated DLLs: Core,Pulse,Engine

- NEW int-like lawless system has been added where you get points and extra exp for killing pvp/pve

- NEW unlimited and fully customizable instance dungeons system has been added

//Example on Configs/EventMaps.txt
(InstanceDungeon (Name 'XEA Instance System') (PartySize 3) (Quest 1392 1) (ReqItem 31) (ReqAmount 5000000) (Level 80-255) (Teleport 266113 248231) (Mobs 422-421,422,453-421,424-421,426-452,429,451-452,449-452,449-452,450-452) (Amount 1-10,1,1-10,1-10,1-10,1,1-10,1-10,1-10,1-10) (SpawnX 266100,266063,265184,265593,266880,268211,268280,268255,268246,268250) (SpawnY 248337,249261,250243,251822,251993,251690,250426,250154,249866,249414) (Duration 1800) (Lapse 15) (Cooldown 1800) (Reward 1,12,31,4,5,6,7,8,9))

- NEW engine's custom Weapons effects have been added (action 44 1 and action 45 1)

- NEW RewardLimit option added for castle war for people who use multi-clients to get rewards

[CastleWar]
Enable = true
Day = 4
StartHour = 20
EndHour = 21
GuildRewardID = 1
AllianceRewardID = 2
LoserRewardID = 3
RewardLimit = 1
//configs/protection.txt

- NEW Rewardlimit protection added
[LimitCheck]
HWID = 1

HWID = 1 -> wont check by IP but by PC HWID, 0 -> Will use IP

- NEW type of timed quest added with reset time
(TimedQuest (index 92015 12)(maxrepeat 1)(resettime '00:25:00'))
in Configs/TimedQuests.txt

- NEW options added for OrnamentBuff to enable/disable and in pvp
[OrnamentBuff]
Active = 1

[PVP]
Enable = 1

in Configs/OrnamentBuff.txt

- Fish items chances have been fixed (you can have as many fish items as you wish)
//example: (Configs/Fishing.txt)
(FishItem (index 47)(amount 1)(chance 10))
(FishItem (index 48)(amount 2)(chance 10))
(FishItem (index 49)(amount 5)(chance 10))
(FishItem (index 50)(amount 5)(chance 10))
(FishItem (index 51)(amount 10)(chance 20))
(FishItem (index 52)(amount 25)(chance 20))

- Perfect party adjusted for servers with only 3 characters enabled

- /resetlevel and /levelup level 100 limit has been raised

- Memory leaks fixes

- Ungap party problem has been fixed

- castle war red/blue bug has been fixed

- Calculations.txt MagAtk has been fixed

- Destructing keys / protecting leader honor bug has been fixed

- MD5 bug have been fixed

- Fixed wrong honor tags reading

- Guild flags speed up issue has been fixed

- Guild flags wearing has been fixed

- Auto events not ending bug has been fixed

- Some fake players bugs have been fixed

- Asadal -5 requirement bug has been fixed

- Battlefield rect safe zones have been fixed
[RedRectSafeZone]
MaxX = 0
MinX = 0

[BlueRectSafeZone]
MaxX = 0
MinX = 0

- AFKChecks false/positives have been fixed

2020-05-15
- Daily Quest Reward Bound:
[Reward]
Bound = 1
in Configs/DailyQuest.txt

[TastyItems]
PermanentIndex = 6723
OneTimeUseIndex = 6724

[Scrolls]
PermanentIndex = 6720
OneTimeUseIndex = 6721
In Configs/ItemUse.txt

2020-05-05
- New Ornament buff feature (infos at : https://www.kalonline.ga/ornament.php), you need latest int effects for it (mostly accessory.dat related)

- New feature: packet cooldown at :

//add in PacketBlock.txt
//protection against highgamer bots
(PacketSpam (type 57)(cooldown 4000))
(PacketSpam (type 24)(cooldown 1000))
(PacketSpam (type 25)(cooldown 1000))
(PacketSpam (type 80)(cooldown 1000))

- Channel System improvements:
You will now need to enable each map where it shall be used in config example: (enable (file 31_34))
Its best if you dont use it in multiple areas/multiple channels on (if you have multiple mobs in server, you will feel some lags)
You will also need to enable each channel number (/channelon 1 to turn on channel 1, /channeloff 1 to turn it off)

- Added new bound option in rewards.txt 
//exemple:
(Reward (ID 1) (ItemIndex 31,47,48) (ItemAmount 5000,2,23) (HonorPt 2112) (RewardPt 215) (EXP 510000) (HTML 10001) (Bound 1))

- Added new FatalDamage control for classes/specialties and pvp/pve rates

- Battlefield improvements:
//battlefield.txt
[BlueStone]
X = 276460
Y = 315762

[RedStone]
X = 275535
Y = 314195

- MD5 false positives are now fixed

- Added new guild raid system

- Added new Mautareta system

- Added new pk password protection (very hard to find now)

- Added new client protection (cheat engine, debugger, highgamer bot etc)

- Added new feature to disable standard item buff (flag buffs during cw)
//in Standardbreak.txt
[StandardBuff]
Active = 0

- Fixed speed up skill upgrading hack 

- Added battleEnable option to enable quests during battle mode (battlefield,gvg,lms,1v1,etc)
//QuestDisable.txt
(BattleEnable (index 1234 5))

- Protection.txt addons

[GoldenCoin]
Index = 649
Amount = 1
Time = 1800

[ShopReward]
Active = true
Bound = 1
Time = 10
Index = 515,31,48
Amount = 2,10,1

[CastleWar]
Enable = true
Day = 4
StartHour = 20
EndHour = 21
GuildRewardID = 1
AllianceRewardID = 2
LoserRewardID = 3

- Fixed c/l problem during big lures

- Boxes.txt change: example
(box (index 11555)(rewardindex 3002)(amount 1)(prefix 207)(defense 0)(evasion 0)(attack 15)(magic 0)(toa 5)(upgrade 15)(mix 1310720)(bof 0)(dss 237)(itemstat 1400)(bound 0))

- Fixed hidden gm char detecting with bot

- Fixed monster crash issue

- Fixed some engine freezes/random c/ls