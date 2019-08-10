#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#MaxThreadsPerHotkey 2
#SingleInstance, Force
SetBatchLines, -1
SetMouseDelay, 1
SetKeyDelay, -1
word_list1 := ["cd","tv", "ant", "arm", "axe", "bag", "bat", "bed", "bow", "box", "boy", "bug", "bus", "cap", "car", "cat", "cow", "cup", "dog", "ear", "egg", "elf", "eye", "fat", "fly", "gun", "hat", "ice", "jam", "jar", "key", "owl", "pen", "pie", "pig", "rug", "sea", "ski", "sun", "usb", "zoo", "ants", "baby", "ball", "bank", "barn", "base", "bear", "beer", "bell", "bike", "bird", "boar", "boat", "bomb", "bone", "book", "bowl", "burn", "cage", "cake", "cape", "card", "cave", "chef", "chin", "coal", "coat", "cold", "cone", "cork", "corn", "cort", "crab", "crib", "desk", "dice", "doll", "door", "drum", "duck", "ears", "eggs", "eyes", "face", "fall", "farm", "fire", "fist", "flag", "food", "frog", "gate", "gift", "girl", "gold", "hair", "hand", "hang", "head", "hill", "hobo", "hook", "horn", "ipod", "jump", "keys", "king", "kiss", "kite", "knot", "lake", "lamb", "lamp", "lava", "leaf", "lion", "lips", "love", "mail", "math", "milk", "moon", "nail", "neck", "nose", "park", "pool", "poop", "pull", "push", "rain", "rice", "ring", "road", "roll", "roof", "rope", "rose", "shoe", "sled", "soap", "sock", "soda", "song", "soup", "star", "taco", "tail", "tank", "tape", "taxi", "tent", "time", "tiny", "toys", "tree", "vest", "wind", "wolf", "worm", "xbox", "yawn"] ;163

word_list2 := ["acorn", "alien", "angel", "ankle", "anvil", "apple", "armor", "bacon", "bagel", "beach", "beans", "beard", "bells", "bench", "berry", "boots", "booty", "brain", "bread", "brush", "bunny", "cabin", "camel", "candy", "chair", "chalk", "chard", "cheek", "chess", "chest", "cigar", "clock", "cloud", "clown", "comet", "couch", "crack", "crowd", "crown", "dance", "darts", "diary", "disco", "donut", "dream", "dress", "drill", "drink", "drool", "drums", "eagle", "earth", "elbow", "erupt", "flint", "flute", "fries", "ghast", "ghost", "giant", "golem", "grass", "grave", "guard", "heart", "hippo", "horse", "house", "igloo", "joker", "kirby", "lance", "leash", "light", "llama", "luigi", "magic", "mario", "melon", "miner", "money", "moose", "mouse", "mouth", "movie", "music", "night", "ninja", "ocean", "paint", "panda", "pants", "paper", "party", "peach", "pepsi", "phone", "photo", "piano", "pizza", "plane", "plant", "plate", "prize", "punch", "puppy", "purse", "queen", "quick", "radar", "radio", "rifle", "river", "robot", "round", "royal", "ruins", "ruler", "salad", "salsa", "santa", "scale", "scarf", "screw", "shark", "sheep", "shell", "shirt", "shout", "skate", "skirt", "skull", "skunk", "skype", "slide", "slime", "sloth", "smile", "snail", "snake", "socks", "spoon", "spray", "squid", "stage", "stain", "stamp", "stars", "state", "stool", "storm", "stump", "sugar", "sushi", "swing", "syrup", "table", "tears", "teddy", "thief", "thorn", "thumb", "tiger", "toast", "tooth", "torch", "towel", "tower", "trash", "trick", "truck", "vomit", "wagon", "waist", "watch", "water", "whale", "wheat", "whisk", "witch", "yo-yo", "yoshi", "zebra"] ;183

word_list3 := ["anchor", "archer", "autumn", "bamboo", "banana", "barbie", "batman", "beaver", "bikini", "blocks", "booger", "bottle", "bowtie", "branch", "bridge", "bubble", "bucket", "burger", "button", "cactus", "camera", "canada", "candle", "carrot", "castle", "cereal", "cheese", "cherry", "cinema", "circle", "circus", "coffee", "cookie", "crayon", "crying", "cyclop", "desert", "domino", "dragon", "eggnog", "eraser", "family", "father", "filing", "finger", "flower", "forest", "fridge", "frozen", "galaxy", "garden", "grapes", "grinch", "grocer", "guitar", "hammer", "helmet", "hockey", "hotdog", "icicle", "jacket", "juggle", "jungle", "kitten", "laptop", "letter", "lizard", "magnet", "mickey", "monkey", "mother", "mudkip", "muffin", "nether", "orange", "palace", "peanut", "pencil", "person", "pickle", "picnic", "pillow", "pirate", "pistol", "piston", "planet", "police", "portal", "potato", "prince", "prison", "puppet", "rabbit", "remote", "rocket", "saddle", "school", "seesaw", "shield", "shorts", "shovel", "skiing", "skinny", "sleigh", "spider", "spikes", "sponge", "spring", "sprout", "stable", "stairs", "statue", "summer", "sunset", "teapot", "temple", "tennis", "tetris", "throne", "toilet", "tomato", "turtle", "violin", "wallet", "window", "winter", "wither", "wizard", "wrench", "zipper", "zombie", "alcohol", "america", "baggage", "balloon", "battery", "beehive", "bicycle", "blanket", "capture", "chicken", "chimney", "coconut", "compass", "cookies", "creeper", "cupcake", "cyclops", "diamond", "dolphin", "doormat", "emerald", "fishing", "flowers", "frisbee", "gapples", "garbage", "giraffe", "glacier", "glasses", "hamster", "iceberg", "kitchen", "ladybug", "lasagna", "lobster", "mailman", "mansion", "mittens", "monitor", "muscles", "noodles", "octagon", "pajamas", "pancake", "peasant", "penguin", "pikachu", "plumber", "pokemon", "popcorn", "present", "pretzel", "pumpkin", "pyramid", "racecar", "rainbow", "rubbish", "scrooge", "shotgun", "snorlax", "snowman", "speaker", "stomach", "sunrise", "sweater", "toaster", "tornado", "trumpet", "twitter", "unicorn", "volcano", "whistle", "yelling", "youtube"] ;205

word_list4 := ["airplane", "balloons", "baseball", "bathroom", "bookcase", "bracelet", "building", "campfire", "cannibal", "cauldron", "chestnut", "children", "computer", "confused", "diamonds", "dinosaur", "dominoes", "elephant", "elevator", "emeralds", "eyepatch", "facebook", "fighting", "flamingo", "football", "fountain", "godzilla", "goldfish", "hedgehog", "hospital", "icecream", "kangaroo", "keyboard", "lipstick", "lollipop", "mattress", "minecart", "mineplex", "mosquito", "mountain", "mushroom", "necklace", "nintendo", "notebook", "obsidian", "ornament", "painting", "pinecone", "pinwheel", "pokeball", "popsicle", "pregnant", "princess", "puncture", "redstone", "reindeer", "sailboat", "sandwich", "scissors", "seahorse", "seashell", "sidewalk", "skeleton", "sleeping", "slippers", "snowball", "squirrel", "stingray", "stocking", "suitcase", "superman", "swimming", "t-series", "treasure", "umbrella", "uppercut", "villager", "windmill", "alligator", "astronaut", "australia", "bookstore", "bumblebee", "butterfly", "chocolate", "christmas", "explosion", "fireplace", "graveyard", "halloween", "handcuffs", "hopscotch", "jellyfish", "lawnmower", "letterbox", "lightbulb", "lightning", "microsoft", "minecraft", "mistletoe", "motorbike", "newspaper", "nightmare", "pewdiepie", "pineapple", "presenter", "raspberry", "sideburns", "snowboard", "snowflake", "spaceship", "spaghetti", "speedboat", "staircase", "stoplight", "sunflower", "swordfish", "telephone", "telescope", "treehouse", "waterfall", "basketball", "battleship", "binoculars", "broomstick", "calculator", "charmander", "chestplate", "flashlight", "gravestone", "headphones", "helicopter", "lighthouse", "lightsaber", "motorcycle", "nutcracker", "photograph", "restaurant", "rhinoceros", "skateboard", "strawberry", "sunglasses", "technology", "television", "toothbrush", "watermelon"] ;146

word_list5 := ["decorations", "electricity", "frenchfries", "gingerbread", "playstation", "cheeseburger", "construction", "refrigerator", "top hat", "iron ore", "camp fire", "door knob", "golf club", "hula hoop", "ice cream", "ping pong", "santa hat", "shoe lace", "snow fort", "stop sign", "water gun", "candy cane", "hair dryer", "ice hockey", "james bond", "night time", "north pole", "pool party", "scooby doo", "snow fight", "troll face", "video game", "alarm clock", "fishing rod", "grim reaper", "ice skating", "pot of gold", "pumpkin pie", "belly button", "ender dragon", "fishing pole", "harry potter", "horse riding", "jingle bells", "watering can", "birthday cake", "draw my thing", "holding hands", "hot chocolate", "jungle kitten", "mountain bike", "nether portal", "rocking chair", "shopping cart", "swimming pool", "tennis racket", "united states", "zombie pigman", "arcade machine", "christmas tree", "snowball fight", "traffic lights", "trick or treat", "gingerbread man", "hot air balloon", "salt and pepper", "washing machine", "basketball court"]  ;214
gui, +alwaysontop
gui, margin, 20, 20
gui, font, s25, Arial

loop, 16
	{
		x_slot := "x"A_Index*40-20
		gui, font, s25, Arial
		gui, add, edit, r1 ghint%A_Index% w30 limit1 %x_slot% y134 vhint%A_Index%, 
		gui, font, s15, Arial
		gui, add, text, %x_slot% y110, %A_Index%
	}
gui, font, s10, Arial
gui, add, button, default w380 x270 y5 gclear_letters, Clear Letters [Press Home]
gui, add, slider, w250 x20 y5 vslider gslider range1-16 tooltiptop
gui, add, edit, r4 vword_list_display w630 x20 y40 ReadOnly
gui, show, autosize x20 y20
return

slider:
	gui, submit, nohide
	word_list_words := ""
	send_text := []
	loop, 5
		{
			total_arrays := ["163","183","205","146","214"]
			current_array := A_Index
			loop, % total_arrays[A_Index]
				{
					letter_hint := hint1
					current_word := % word_list%current_array%[A_Index]
					letter_slot := InStr(current_word, letter_hint)
					word_length := StrLen(current_word)
					
					if (1 = letter_slot)
						{
							if (word_length = slider)
								{
									word_list_words .= current_word ", "
									send_text.Push(current_word)
								}
						}
				}
			guicontrol, text, word_list_display, % word_list_words
		}
return

hint1:
	gui, submit, nohide
	word_list_words := ""
	send_text := []
	loop, 5
		{
			total_arrays := ["163","183","205","146","214"]
			current_array := A_Index
			loop, % total_arrays[A_Index]
				{
					letter_hint := hint1
					current_word := % word_list%current_array%[A_Index]
					letter_slot := InStr(current_word, letter_hint)
					word_length := StrLen(current_word)
					
					if (1 = letter_slot)
						{
							if (word_length = slider)
								{
									word_list_words .= current_word ", "
									send_text.Push(current_word)
								}
						}
				}
			guicontrol, text, word_list_display, % word_list_words
		}
return

hint2:
	gui, submit, nohide
	word_list_words := ""
	send_text := []
	loop, 5
		{
			total_arrays := ["163","183","205","146","214"]
			current_array := A_Index
			loop, % total_arrays[A_Index]
				{
					letter_hint := hint2
					current_word := % word_list%current_array%[A_Index]
					letter_slot := InStr(current_word, letter_hint)
					word_length := StrLen(current_word)
					
					if (2 = letter_slot)
						{
							if (word_length = slider)
								{
									word_list_words .= current_word ", "
									send_text.Push(current_word)
								}
						}
				}
			guicontrol, text, word_list_display, % word_list_words
		}
return
hint3:
	gui, submit, nohide
	word_list_words := ""
	send_text := []
	loop, 5
		{
			total_arrays := ["163","183","205","146","214"]
			current_array := A_Index
			loop, % total_arrays[A_Index]
				{
					letter_hint := hint3
					current_word := % word_list%current_array%[A_Index]
					letter_slot := InStr(current_word, letter_hint)
					word_length := StrLen(current_word)
					
					if (3 = letter_slot)
						{
							if (word_length = slider)
								{
									word_list_words .= current_word ", "
									send_text.Push(current_word)
								}
						}
				}
			guicontrol, text, word_list_display, % word_list_words
		}
return
hint4:
	gui, submit, nohide
	word_list_words := ""
	send_text := []
	loop, 5
		{
			total_arrays := ["163","183","205","146","214"]
			current_array := A_Index
			loop, % total_arrays[A_Index]
				{
					letter_hint := hint4
					current_word := % word_list%current_array%[A_Index]
					letter_slot := InStr(current_word, letter_hint)
					word_length := StrLen(current_word)
					
					if (4 = letter_slot)
						{
							if (word_length = slider)
								{
									word_list_words .= current_word ", "
									send_text.Push(current_word)
								}
						}
				}
			guicontrol, text, word_list_display, % word_list_words
		}
return
hint5:
	gui, submit, nohide
	word_list_words := ""
	send_text := []
	loop, 5
		{
			total_arrays := ["163","183","205","146","214"]
			current_array := A_Index
			loop, % total_arrays[A_Index]
				{
					letter_hint := hint5
					current_word := % word_list%current_array%[A_Index]
					letter_slot := InStr(current_word, letter_hint)
					word_length := StrLen(current_word)
					
					if (5 = letter_slot)
						{
							if (word_length = slider)
								{
									word_list_words .= current_word ", "
									send_text.Push(current_word)
								}
						}
				}
			guicontrol, text, word_list_display, % word_list_words
		}
return
hint6:
	gui, submit, nohide
	word_list_words := ""
	send_text := []
	loop, 5
		{
			total_arrays := ["163","183","205","146","214"]
			current_array := A_Index
			loop, % total_arrays[A_Index]
				{
					letter_hint := hint6
					current_word := % word_list%current_array%[A_Index]
					letter_slot := InStr(current_word, letter_hint)
					word_length := StrLen(current_word)
					
					if (6 = letter_slot)
						{
							if (word_length = slider)
								{
									word_list_words .= current_word ", "
									send_text.Push(current_word)
								}
						}
				}
			guicontrol, text, word_list_display, % word_list_words
		}
return
hint7:
	gui, submit, nohide
	word_list_words := ""
	send_text := []
	loop, 5
		{
			total_arrays := ["163","183","205","146","214"]
			current_array := A_Index
			loop, % total_arrays[A_Index]
				{
					letter_hint := hint7
					current_word := % word_list%current_array%[A_Index]
					letter_slot := InStr(current_word, letter_hint)
					word_length := StrLen(current_word)
					
					if (7 = letter_slot)
						{
							if (word_length = slider)
								{
									word_list_words .= current_word ", "
									send_text.Push(current_word)
								}
						}
				}
			guicontrol, text, word_list_display, % word_list_words
		}
return
hint8:
	gui, submit, nohide
	word_list_words := ""
	send_text := []
	loop, 5
		{
			total_arrays := ["163","183","205","146","214"]
			current_array := A_Index
			loop, % total_arrays[A_Index]
				{
					letter_hint := hint8
					current_word := % word_list%current_array%[A_Index]
					letter_slot := InStr(current_word, letter_hint)
					word_length := StrLen(current_word)
					
					if (8 = letter_slot)
						{
							if (word_length = slider)
								{
									word_list_words .= current_word ", "
									send_text.Push(current_word)
								}
						}
				}
			guicontrol, text, word_list_display, % word_list_words
		}
return
hint9:
	gui, submit, nohide
	word_list_words := ""
	send_text := []
	loop, 5
		{
			total_arrays := ["163","183","205","146","214"]
			current_array := A_Index
			loop, % total_arrays[A_Index]
				{
					letter_hint := hint9
					current_word := % word_list%current_array%[A_Index]
					letter_slot := InStr(current_word, letter_hint)
					word_length := StrLen(current_word)
					
					if (9 = letter_slot)
						{
							if (word_length = slider)
								{
									word_list_words .= current_word ", "
									send_text.Push(current_word)
								}
						}
				}
			guicontrol, text, word_list_display, % word_list_words
		}
return
hint10:
	gui, submit, nohide
	word_list_words := ""
	send_text := []
	loop, 5
		{
			total_arrays := ["163","183","205","146","214"]
			current_array := A_Index
			loop, % total_arrays[A_Index]
				{
					letter_hint := hint10
					current_word := % word_list%current_array%[A_Index]
					letter_slot := InStr(current_word, letter_hint)
					word_length := StrLen(current_word)
					
					if (10 = letter_slot)
						{
							if (word_length = slider)
								{
									word_list_words .= current_word ", "
									send_text.Push(current_word)
								}
						}
				}
			guicontrol, text, word_list_display, % word_list_words
		}
return
hint11:
	gui, submit, nohide
	word_list_words := ""
	send_text := []
	loop, 5
		{
			total_arrays := ["163","183","205","146","214"]
			current_array := A_Index
			loop, % total_arrays[A_Index]
				{
					letter_hint := hint11
					current_word := % word_list%current_array%[A_Index]
					letter_slot := InStr(current_word, letter_hint)
					word_length := StrLen(current_word)
					
					if (11 = letter_slot)
						{
							if (word_length = slider)
								{
									word_list_words .= current_word ", "
									send_text.Push(current_word)
								}
						}
				}
			guicontrol, text, word_list_display, % word_list_words
		}
return
hint12:
	gui, submit, nohide
	word_list_words := ""
	send_text := []
	loop, 5
		{
			total_arrays := ["163","183","205","146","214"]
			current_array := A_Index
			loop, % total_arrays[A_Index]
				{
					letter_hint := hint12
					current_word := % word_list%current_array%[A_Index]
					letter_slot := InStr(current_word, letter_hint)
					word_length := StrLen(current_word)
					
					if (12 = letter_slot)
						{
							if (word_length = slider)
								{
									word_list_words .= current_word ", "
									send_text.Push(current_word)
								}
						}
				}
			guicontrol, text, word_list_display, % word_list_words
		}
return
hint13:
	gui, submit, nohide
	word_list_words := ""
	send_text := []
	loop, 5
		{
			total_arrays := ["163","183","205","146","214"]
			current_array := A_Index
			loop, % total_arrays[A_Index]
				{
					letter_hint := hint13
					current_word := % word_list%current_array%[A_Index]
					letter_slot := InStr(current_word, letter_hint)
					word_length := StrLen(current_word)
					
					if (13 = letter_slot)
						{
							if (word_length = slider)
								{
									word_list_words .= current_word ", "
									send_text.Push(current_word)
								}
						}
				}
			guicontrol, text, word_list_display, % word_list_words
		}
return
hint14:
	gui, submit, nohide
	word_list_words := ""
	send_text := []
	loop, 5
		{
			total_arrays := ["163","183","205","146","214"]
			current_array := A_Index
			loop, % total_arrays[A_Index]
				{
					letter_hint := hint14
					current_word := % word_list%current_array%[A_Index]
					letter_slot := InStr(current_word, letter_hint)
					word_length := StrLen(current_word)
					
					if (14 = letter_slot)
						{
							if (word_length = slider)
								{
									word_list_words .= current_word ", "
									send_text.Push(current_word)
								}
						}
				}
			guicontrol, text, word_list_display, % word_list_words
		}
return
hint15:
	gui, submit, nohide
	word_list_words := ""
	send_text := []
	loop, 5
		{
			total_arrays := ["163","183","205","146","214"]
			current_array := A_Index
			loop, % total_arrays[A_Index]
				{
					letter_hint := hint15
					current_word := % word_list%current_array%[A_Index]
					letter_slot := InStr(current_word, letter_hint)
					word_length := StrLen(current_word)
					
					if (15 = letter_slot)
						{
							if (word_length = slider)
								{
									word_list_words .= current_word ", "
									send_text.Push(current_word)
								}
						}
				}
			guicontrol, text, word_list_display, % word_list_words
		}
return
hint16:
	gui, submit, nohide
	word_list_words := ""
	send_text := []
	loop, 5
		{
			total_arrays := ["163","183","205","146","214"]
			current_array := A_Index
			loop, % total_arrays[A_Index]
				{
					letter_hint := hint16
					current_word := % word_list%current_array%[A_Index]
					letter_slot := InStr(current_word, letter_hint)
					word_length := StrLen(current_word)
					
					if (16 = letter_slot)
						{
							if (word_length = slider)
								{
									word_list_words .= current_word ", "
									send_text.Push(current_word)
								}
						}
				}
			guicontrol, text, word_list_display, % word_list_words
		}
return




Home::
loop, 16
{
	guicontrol,, hint%A_Index%, % ""
}
Return
clear_letters:
Loop, 16
{
	guicontrol,, hint%A_Index%, % ""
}
Return

*XButton2::
	Loop, % send_text.Count()
		{
			if (Break_Loop = 1)
				{
					break
					Break_Loop := 0
				}
			Sendraw, /
			Sleep, 150
			Send, % send_text[A_Index]
			Sleep, 150
			Send, {Enter}
			Sleep, 250			
		}
Return

*XButton1::
	Break_Loop := 1
return

`::
	Suspend
Return

^Esc::
	Reload
Return

^+Esc::
	ExitApp
Return
