This repack was fixed by HighGamer.com (Discord: HighGamer.com#8990), 

If you have problems like Application Error (The application was unable to start correctly (0xc0000142). Click OK to close the application. 

I have no idea how to fix this error but it goes away if you run MainSvrT.exe many times I would prefer just holding down the Enter key while clicking on MainSvrT.exe this usually starts it right away.

Under the approval of XEAxMaste (Discord: XEAxMaste#8117)
This Clean Repack Made By Scintyx (Discord: Scintyx:6419), updated on 2020-10-04 by XEAxMaste for AbaddonKal

Clean Repack V1.0 22/7/2020:


Important Note:
#This Repack is going to be updated as International Updates [As they release new items/mobs/areas/etc, so stay tuned]


Features:
#This Repack Includes All the international items/npc/monsters up to date until 22/7/2020
#Includes All Suits (Even the latest summer suits 2020)
#Includes All Decoration Items
#Includes All Premium pets (Includes the latest 4th pet [Small Ship])
#Includes All Riding Pets
#Includes All Normal Pets
#Includes the international areas
#Includes the international mob spawns
#Includes a Launcher


Missing Features:
#The Latest Mobs doesnt have the international stats (hp/atk/dmg/etc) since there is no way for me to get it. [you have to work on your own stats]
#The Skill Cooldowns is not the default ones,, change it to whatever cooldowns you are suited with in both [Jobsystem > Client Side < , and Server side ]
#The Inititems namings is not done yet[mostly shows ????], but it have the default indexes
#Some of the default npc shops doesnt open correctly, so you have to redirect them through Macro [Config.pk] and HTML [Script.pk]


Guide Lines Using This Repack:
#If you have a client that you want to use, Copy over this clean client over the client you want to use.
#Use the config.pk & Script.pk provided in the clean repack, If you have your own work just open the clean client pk files and edit them only.
#It is very recommended that you rename your (Custom Items) indexes to 30000+ ,, do not overwrite or replace with the indexes in the inititem.
	*For Ex: 
	;G80 Trinket
	(item (name 30000) (Index 30000) (Image "Item605") (class ornament trinket) (code 5 13 0 0) (country 0 1 2) (wear 1)(level 80)(limit all 1)(buy 0)(sell 3000)(endurance 10)(specialty(hp 500) (mp 500)(Str 1)(Dex 1)(Int 1)(Wis 1)(hth 1)))
	;G90 Trinket
	(item (name 30001) (Index 30001) (Image "Item605") (class ornament trinket) (code 5 13 0 0) (country 0 1 2) (wear 1)(level 80)(limit all 1)(buy 0)(sell 3000)(endurance 10)(specialty(hp 500) (mp 500)(Str 1)(Dex 1)(Int 1)(Wis 1)(hth 1)))
	
	*This is because whenever International Kalonline make new pets/rides/items/etc, its not going to conflict with your own work (Just to stay in the safe side)

#If you have you custom areas, copy them after overwriting this repack to your old client.
#If you have you own macro, DO NOT replace it with the one in config.pk, just add your custom lines to the current one in config.pk [Macro.dat]
#If you have you own pets/rides/items gb,gtx files, DO NOT be LAZY and copy the whole folder, just COPY the custom files only [Applies with MAPS/Effects/etc]
#Its Very recommended to rename your custom hypertext files to new ones [better if they be the same as item index number]





Setup Instructions: [If you dont have any previous engine client, skip up to step number 10]	PK PASSWORD: EV)O8@BL$3O2E

Step 1:
Make Two Copies of your previous client and name them [New Client & Backup Client]

Step 2:
Copy the clean repack files to your New Client folder [Overwrite it]

Step 3:
Open up your previous server side Inititem file, and rename your own custom items indexes as shown above in the Guide lines

Step 4:
Copy your renewed items with the new indexes at the end of the Clean Repack server side Inititem [There should be no conflict], dont forget to copy them into config.pk [Client side] Inititem.dat, The same for naming in masseges.dat.

Step 5:
Copy your custom Maps/pets/ride/weapons/armors Files [Not the whole folder] from Backup Client folder to New Client Folder

Step 6:
Copy your renewed hypertext files to the New Client Folder

Step 7:
Replace your edited stats for the Initmonster Indexes with the one in clean repack [For Ex: I have edited (Index 1) mob which is the vulgar, I will replace only (Index 1) stats I have with the one in Initmonster (clean repack serverside)]

Step 8:
You can replace all the itemgroup, Quests, Prefixes from you previous Client with the one in Clean Repack [Dont forget to do the same in config.pk for prefixes]

Step 9:
Open up New Client Script.pk and copy over your work done in the previous client [Recommended to create new html files rather than replacing the existed ones]

Step 10:
Copy the engine.dll provided from [XEAxMaste] to your New Client.

Step 11:
Open Up Config.pk & Script.pk with PK EDITOR and save them with your new PK Password.

Step 12:
Edit the Launcher Config in Client [client\data\Launcher\Config.ini] to your server infos.

Step 13:
Edit your configs/systems in Server side

Step 14:
Run up the server side and enjoy developing your new engine.



Note: If you are having a problem with the repack or the instruction, you are welcome to contact me on discord [Discord: Scintyx:6419] after taking a permission from [XEAxMaste]



At Last, I know it might be alot of work for those who have a previous client but believe me, you will have an organizied files which is easy to follow and update later in the future updates.
Best Regards,
Scintyx