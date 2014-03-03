##############################################################################
# zmoji: A fun oh_my_zsh theme with an OSX emoji character in your prompt
# 
# Uses the moonphase and emoji-clock plugins to provide moon phase and time
#
# Open this link in Safari to see a master list:
# http://www.grumdrig.com/emoji-list/
#
# You can specify the emoji you want to setting the ICON environment variable
# otherwise a random one will be chosen for each shell.
#
# 2014-02-28 - version 1.0 released
##############################################################################

# Master hash of emoji characters and keys
typeset -A EMOJI
EMOJI=(SMILING_FACE_WITH_OPEN_MOUTH 😃 GRINNING_FACE 😀 SMILING_FACE_WITH_SMILING_EYES 😊 WHITE_SMILING_FACE ☺ WINKING_FACE 😉 SMILING_FACE_WITH_HEART-SHAPED_EYES 😍 FACE_THROWING_A_KISS 😘 KISSING_FACE_WITH_CLOSED_EYES 😚 KISSING_FACE 😗 KISSING_FACE_WITH_SMILING_EYES 😙 FACE_WITH_STUCK-OUT_TONGUE_AND_WINKING_EYE 😜 FACE_WITH_STUCK-OUT_TONGUE_AND_TIGHTLY-CLOSED_EYES 😝 FACE_WITH_STUCK-OUT_TONGUE 😛 FLUSHED_FACE 😳 GRINNING_FACE_WITH_SMILING_EYES 😁 PENSIVE_FACE 😔 RELIEVED_FACE 😌 UNAMUSED_FACE 😒 DISAPPOINTED_FACE 😞 PERSEVERING_FACE 😣 CRYING_FACE 😢 FACE_WITH_TEARS_OF_JOY 😂 LOUDLY_CRYING_FACE 😭 SLEEPY_FACE 😪 DISAPPOINTED_BUT_RELIEVED_FACE 😥 FACE_WITH_OPEN_MOUTH_AND_COLD_SWEAT 😰 SMILING_FACE_WITH_OPEN_MOUTH_AND_COLD_SWEAT 😅 FACE_WITH_COLD_SWEAT 😓 WEARY_FACE 😩 TIRED_FACE 😫 FEARFUL_FACE 😨 FACE_SCREAMING_IN_FEAR 😱 ANGRY_FACE 😠 POUTING_FACE 😡 FACE_WITH_LOOK_OF_TRIUMPH 😤 CONFOUNDED_FACE 😖 SMILING_FACE_WITH_OPEN_MOUTH_AND_TIGHTLY-CLOSED_EYES 😆 FACE_SAVOURING_DELICIOUS_FOOD 😋 FACE_WITH_MEDICAL_MASK 😷 SMILING_FACE_WITH_SUNGLASSES 😎 SLEEPING_FACE 😴 DIZZY_FACE 😵 ASTONISHED_FACE 😲 WORRIED_FACE 😟 FROWNING_FACE_WITH_OPEN_MOUTH 😦 ANGUISHED_FACE 😧 SMILING_FACE_WITH_HORNS 😈 IMP 👿 FACE_WITH_OPEN_MOUTH 😮 GRIMACING_FACE 😬 NEUTRAL_FACE 😐 CONFUSED_FACE 😕 HUSHED_FACE 😯 FACE_WITHOUT_MOUTH 😶 SMILING_FACE_WITH_HALO 😇 SMIRKING_FACE 😏 EXPRESSIONLESS_FACE 😑 MAN_WITH_GUA_PI_MAO 👲 MAN_WITH_TURBAN 👳 POLICE_OFFICER 👮 CONSTRUCTION_WORKER 👷 GUARDSMAN 💂 BABY 👶 BOY 👦 GIRL 👧 MAN 👨 WOMAN 👩 OLDER_MAN 👴 OLDER_WOMAN 👵 PERSON_WITH_BLOND_HAIR 👱 BABY_ANGEL 👼 PRINCESS 👸 SMILING_CAT_FACE_WITH_OPEN_MOUTH 😺 GRINNING_CAT_FACE_WITH_SMILING_EYES 😸 SMILING_CAT_FACE_WITH_HEART-SHAPED_EYES 😻 KISSING_CAT_FACE_WITH_CLOSED_EYES 😽 CAT_FACE_WITH_WRY_SMILE 😼 WEARY_CAT_FACE 🙀 CRYING_CAT_FACE 😿 CAT_FACE_WITH_TEARS_OF_JOY 😹 POUTING_CAT_FACE 😾 JAPANESE_OGRE 👹 JAPANESE_GOBLIN 👺 SEE-NO-EVIL_MONKEY 🙈 HEAR-NO-EVIL_MONKEY 🙉 SPEAK-NO-EVIL_MONKEY 🙊 SKULL 💀 EXTRATERRESTRIAL_ALIEN 👽 PILE_OF_POO 💩 SPARKLES ✨ GLOWING_STAR 🌟 DIZZY_SYMBOL 💫 COLLISION_SYMBOL 💥 ANGER_SYMBOL 💢 SPLASHING_SWEAT_SYMBOL 💦 DROPLET 💧 SLEEPING_SYMBOL 💤 DASH_SYMBOL 💨 EAR 👂 EYES 👀 NOSE 👃 TONGUE 👅 MOUTH 👄 THUMBS_UP_SIGN 👍 THUMBS_DOWN_SIGN 👎 OK_HAND_SIGN 👌 FISTED_HAND_SIGN 👊 RAISED_FIST ✊ VICTORY_HAND ✌ WAVING_HAND_SIGN 👋 RAISED_HAND ✋ OPEN_HANDS_SIGN 👐 WHITE_UP_POINTING_BACKHAND_INDEX 👆 WHITE_DOWN_POINTING_BACKHAND_INDEX 👇 WHITE_RIGHT_POINTING_BACKHAND_INDEX 👉 WHITE_LEFT_POINTING_BACKHAND_INDEX 👈 PERSON_RAISING_BOTH_HANDS_IN_CELEBRATION 🙌 PERSON_WITH_FOLDED_HANDS 🙏 WHITE_UP_POINTING_INDEX ☝ CLAPPING_HANDS_SIGN 👏 FLEXED_BICEPS 💪 PEDESTRIAN 🚶 RUNNER 🏃 DANCER 💃 MAN_AND_WOMAN_HOLDING_HANDS 👫 FAMILY 👪 TWO_MEN_HOLDING_HANDS 👬 TWO_WOMEN_HOLDING_HANDS 👭 KISS 💏 COUPLE_WITH_HEART 💑 WOMAN_WITH_BUNNY_EARS 👯 FACE_WITH_OK_GESTURE 🙆 FACE_WITH_NO_GOOD_GESTURE 🙅 INFORMATION_DESK_PERSON 💁 HAPPY_PERSON_RAISING_ONE_HAND 🙋 FACE_MASSAGE 💆 HAIRCUT 💇 NAIL_POLISH 💅 BRIDE_WITH_VEIL 👰 PERSON_WITH_POUTING_FACE 🙎 PERSON_FROWNING 🙍 PERSON_BOWING_DEEPLY 🙇 TOP_HAT 🎩 CROWN 👑 WOMANS_HAT 👒 ATHLETIC_SHOE 👟 MANS_SHOE 👞 WOMANS_SANDAL 👡 HIGH-HEELED_SHOE 👠 WOMANS_BOOTS 👢 T-SHIRT 👕 NECKTIE 👔 WOMANS_CLOTHES 👚 DRESS 👗 RUNNING_SHIRT_WITH_SASH 🎽 JEANS 👖 KIMONO 👘 BIKINI 👙 BRIEFCASE 💼 HANDBAG 👜 POUCH 👝 PURSE 👛 EYEGLASSES 👓 RIBBON 🎀 CLOSED_UMBRELLA 🌂 LIPSTICK 💄 YELLOW_HEART 💛 BLUE_HEART 💙 PURPLE_HEART 💜 GREEN_HEART 💚 HEAVY_BLACK_HEART ❤ BROKEN_HEART 💔 GROWING_HEART 💗 BEATING_HEART 💓 TWO_HEARTS 💕 SPARKLING_HEART 💖 REVOLVING_HEARTS 💞 HEART_WITH_ARROW 💘 LOVE_LETTER 💌 KISS_MARK 💋 RING 💍 GEM_STONE 💎 BUST_IN_SILHOUETTE 👤 BUSTS_IN_SILHOUETTE 👥 SPEECH_BALLOON 💬 FOOTPRINTS 👣 THOUGHT_BALLOON 💭 DOG_FACE 🐶 WOLF_FACE 🐺 CAT_FACE 🐱 MOUSE_FACE 🐭 HAMSTER_FACE 🐹 RABBIT_FACE 🐰 FROG_FACE 🐸 TIGER_FACE 🐯 KOALA 🐨 BEAR_FACE 🐻 PIG_FACE 🐷 PIG_NOSE 🐽 COW_FACE 🐮 BOAR 🐗 MONKEY_FACE 🐵 MONKEY 🐒 HORSE_FACE 🐴 SHEEP 🐑 ELEPHANT 🐘 PANDA_FACE 🐼 PENGUIN 🐧 BIRD 🐦 BABY_CHICK 🐤 FRONT-FACING_BABY_CHICK 🐥 HATCHING_CHICK 🐣 CHICKEN 🐔 SNAKE 🐍 TURTLE 🐢 BUG 🐛 HONEYBEE 🐝 ANT 🐜 LADY_BEETLE 🐞 SNAIL 🐌 OCTOPUS 🐙 SPIRAL_SHELL 🐚 TROPICAL_FISH 🐠 FISH 🐟 DOLPHIN 🐬 SPOUTING_WHALE 🐳 WHALE 🐋 COW 🐄 RAM 🐏 RAT 🐀 WATER_BUFFALO 🐃 TIGER 🐅 RABBIT 🐇 DRAGON 🐉 HORSE 🐎 GOAT 🐐 ROOSTER 🐓 DOG 🐕 PIG 🐖 MOUSE 🐁 OX 🐂 DRAGON_FACE 🐲 BLOWFISH 🐡 CROCODILE 🐊 BACTRIAN_CAMEL 🐫 DROMEDARY_CAMEL 🐪 LEOPARD 🐆 CAT 🐈 POODLE 🐩 PAW_PRINTS 🐾 BOUQUET 💐 CHERRY_BLOSSOM 🌸 TULIP 🌷 FOUR_LEAF_CLOVER 🍀 ROSE 🌹 SUNFLOWER 🌻 HIBISCUS 🌺 MAPLE_LEAF 🍁 LEAF_FLUTTERING_IN_WIND 🍃 FALLEN_LEAF 🍂 HERB 🌿 EAR_OF_RICE 🌾 MUSHROOM 🍄 CACTUS 🌵 PALM_TREE 🌴 EVERGREEN_TREE 🌲 DECIDUOUS_TREE 🌳 CHESTNUT 🌰 SEEDLING 🌱 BLOSSOM 🌼 GLOBE_WITH_MERIDIANS 🌐 SUN_WITH_FACE 🌞 FULL_MOON_WITH_FACE 🌝 NEW_MOON_WITH_FACE 🌚 NEW_MOON_SYMBOL 🌑 WAXING_CRESCENT_MOON_SYMBOL 🌒 FIRST_QUARTER_MOON_SYMBOL 🌓 WAXING_GIBBOUS_MOON_SYMBOL 🌔 FULL_MOON_SYMBOL 🌕 WANING_GIBBOUS_MOON_SYMBOL 🌖 LAST_QUARTER_MOON_SYMBOL 🌗 WANING_CRESCENT_MOON_SYMBOL 🌘 LAST_QUARTER_MOON_WITH_FACE 🌜 FIRST_QUARTER_MOON_WITH_FACE 🌛 CRESCENT_MOON 🌙 EARTH_GLOBE_EUROPE-AFRICA 🌍 EARTH_GLOBE_AMERICAS 🌎 EARTH_GLOBE_ASIA-AUSTRALIA 🌏 VOLCANO 🌋 MILKY_WAY 🌌 SHOOTING_STAR 🌠 WHITE_MEDIUM_STAR ⭐ BLACK_SUN_WITH_RAYS ☀ SUN_BEHIND_CLOUD ⛅ CLOUD ☁ HIGH_VOLTAGE_SIGN ⚡ UMBRELLA_WITH_RAIN_DROPS ☔ SNOWFLAKE ❄ SNOWMAN_WITHOUT_SNOW ⛄ CYCLONE 🌀 FOGGY 🌁 RAINBOW 🌈 WATER_WAVE 🌊 PINE_DECORATION 🎍 HEART_WITH_RIBBON 💝 JAPANESE_DOLLS 🎎 SCHOOL_SATCHEL 🎒 GRADUATION_CAP 🎓 CARP_STREAMER 🎏 FIREWORKS 🎆 FIREWORK_SPARKLER 🎇 WIND_CHIME 🎐 MOON_VIEWING_CEREMONY 🎑 JACK-O-LANTERN 🎃 GHOST 👻 FATHER_CHRISTMAS 🎅 CHRISTMAS_TREE 🎄 WRAPPED_PRESENT 🎁 TANABATA_TREE 🎋 PARTY_POPPER 🎉 CONFETTI_BALL 🎊 BALLOON 🎈 CROSSED_FLAGS 🎌 CRYSTAL_BALL 🔮 MOVIE_CAMERA 🎥 CAMERA 📷 VIDEO_CAMERA 📹 VIDEOCASSETTE 📼 OPTICAL_DISC 💿 DVD 📀 MINIDISC 💽 FLOPPY_DISK 💾 PERSONAL_COMPUTER 💻 MOBILE_PHONE 📱 BLACK_TELEPHONE ☎ TELEPHONE_RECEIVER 📞 PAGER 📟 FAX_MACHINE 📠 SATELLITE_ANTENNA 📡 TELEVISION 📺 RADIO 📻 SPEAKER_WITH_THREE_SOUND_WAVES 🔊 SPEAKER_WITH_ONE_SOUND_WAVE 🔉 SPEAKER 🔈 SPEAKER_WITH_CANCELLATION_STROKE 🔇 BELL 🔔 BELL_WITH_CANCELLATION_STROKE 🔕 PUBLIC_ADDRESS_LOUDSPEAKER 📢 CHEERING_MEGAPHONE 📣 HOURGLASS_WITH_FLOWING_SAND ⏳ HOURGLASS ⌛ ALARM_CLOCK ⏰ WATCH ⌚ OPEN_LOCK 🔓 LOCK 🔒 LOCK_WITH_INK_PEN 🔏 CLOSED_LOCK_WITH_KEY 🔐 KEY 🔑 RIGHT-POINTING_MAGNIFYING_GLASS 🔎 ELECTRIC_LIGHT_BULB 💡 ELECTRIC_TORCH 🔦 HIGH_BRIGHTNESS_SYMBOL 🔆 LOW_BRIGHTNESS_SYMBOL 🔅 ELECTRIC_PLUG 🔌 BATTERY 🔋 LEFT-POINTING_MAGNIFYING_GLASS 🔍 BATHTUB 🛁 BATH 🛀 SHOWER 🚿 TOILET 🚽 WRENCH 🔧 NUT_AND_BOLT 🔩 HAMMER 🔨 DOOR 🚪 SMOKING_SYMBOL 🚬 BOMB 💣 PISTOL 🔫 HOCHO 🔪 PILL 💊 SYRINGE 💉 MONEY_BAG 💰 BANKNOTE_WITH_YEN_SIGN 💴 BANKNOTE_WITH_DOLLAR_SIGN 💵 BANKNOTE_WITH_POUND_SIGN 💷 BANKNOTE_WITH_EURO_SIGN 💶 CREDIT_CARD 💳 MONEY_WITH_WINGS 💸 MOBILE_PHONE_WITH_RIGHTWARDS_ARROW_AT_LEFT 📲 E-MAIL_SYMBOL 📧 INBOX_TRAY 📥 OUTBOX_TRAY 📤 ENVELOPE ✉ ENVELOPE_WITH_DOWNWARDS_ARROW_ABOVE 📩 INCOMING_ENVELOPE 📨 POSTAL_HORN 📯 CLOSED_MAILBOX_WITH_RAISED_FLAG 📫 CLOSED_MAILBOX_WITH_LOWERED_FLAG 📪 OPEN_MAILBOX_WITH_RAISED_FLAG 📬 OPEN_MAILBOX_WITH_LOWERED_FLAG 📭 POSTBOX 📮 PACKAGE 📦 MEMO 📝 PAGE_FACING_UP 📄 PAGE_WITH_CURL 📃 BOOKMARK_TABS 📑 BAR_CHART 📊 CHART_WITH_UPWARDS_TREND 📈 CHART_WITH_DOWNWARDS_TREND 📉 SCROLL 📜 CLIPBOARD 📋 CALENDAR 📅 TEAR-OFF_CALENDAR 📆 CARD_INDEX 📇 FILE_FOLDER 📁 OPEN_FILE_FOLDER 📂 BLACK_SCISSORS ✂ PUSHPIN 📌 PAPERCLIP 📎 BLACK_NIB ✒ PENCIL ✏ STRAIGHT_RULER 📏 TRIANGULAR_RULER 📐 CLOSED_BOOK 📕 GREEN_BOOK 📗 BLUE_BOOK 📘 ORANGE_BOOK 📙 NOTEBOOK 📓 NOTEBOOK_WITH_DECORATIVE_COVER 📔 LEDGER 📒 BOOKS 📚 OPEN_BOOK 📖 BOOKMARK 🔖 NAME_BADGE 📛 MICROSCOPE 🔬 TELESCOPE 🔭 NEWSPAPER 📰 ARTIST_PALETTE 🎨 CLAPPER_BOARD 🎬 MICROPHONE 🎤 HEADPHONE 🎧 MUSICAL_SCORE 🎼 MUSICAL_NOTE 🎵 MULTIPLE_MUSICAL_NOTES 🎶 MUSICAL_KEYBOARD 🎹 VIOLIN 🎻 TRUMPET 🎺 SAXOPHONE 🎷 GUITAR 🎸 ALIEN_MONSTER 👾 VIDEO_GAME 🎮 PLAYING_CARD_BLACK_JOKER 🃏 FLOWER_PLAYING_CARDS 🎴 MAHJONG_TILE_RED_DRAGON 🀄 GAME_DIE 🎲 DIRECT_HIT 🎯 AMERICAN_FOOTBALL 🏈 BASKETBALL_AND_HOOP 🏀 SOCCER_BALL ⚽ BASEBALL ⚾ TENNIS_RACQUET_AND_BALL 🎾 BILLIARDS 🎱 RUGBY_FOOTBALL 🏉 BOWLING 🎳 FLAG_IN_HOLE ⛳ MOUNTAIN_BICYCLIST 🚵 BICYCLIST 🚴 CHEQUERED_FLAG 🏁 HORSE_RACING 🏇 TROPHY 🏆 SKI_AND_SKI_BOOT 🎿 SNOWBOARDER 🏂 SWIMMER 🏊 SURFER 🏄 FISHING_POLE_AND_FISH 🎣 HOT_BEVERAGE ☕ TEACUP_WITHOUT_HANDLE 🍵 SAKE_BOTTLE_AND_CUP 🍶 BABY_BOTTLE 🍼 BEER_MUG 🍺 CLINKING_BEER_MUGS 🍻 COCKTAIL_GLASS 🍸 TROPICAL_DRINK 🍹 WINE_GLASS 🍷 FORK_AND_KNIFE 🍴 SLICE_OF_PIZZA 🍕 HAMBURGER 🍔 FRENCH_FRIES 🍟 POULTRY_LEG 🍗 MEAT_ON_BONE 🍖 SPAGHETTI 🍝 CURRY_AND_RICE 🍛 FRIED_SHRIMP 🍤 BENTO_BOX 🍱 SUSHI 🍣 FISH_CAKE_WITH_SWIRL_DESIGN 🍥 RICE_BALL 🍙 RICE_CRACKER 🍘 COOKED_RICE 🍚 STEAMING_BOWL 🍜 POT_OF_FOOD 🍲 ODEN 🍢 DANGO 🍡 COOKING 🍳 BREAD 🍞 DOUGHNUT 🍩 CUSTARD 🍮 SOFT_ICE_CREAM 🍦 ICE_CREAM 🍨 SHAVED_ICE 🍧 BIRTHDAY_CAKE 🎂 SHORTCAKE 🍰 COOKIE 🍪 CHOCOLATE_BAR 🍫 CANDY 🍬 LOLLIPOP 🍭 HONEY_POT 🍯 RED_APPLE 🍎 GREEN_APPLE 🍏 TANGERINE 🍊 LEMON 🍋 CHERRIES 🍒 GRAPES 🍇 WATERMELON 🍉 STRAWBERRY 🍓 PEACH 🍑 MELON 🍈 BANANA 🍌 PEAR 🍐 PINEAPPLE 🍍 ROASTED_SWEET_POTATO 🍠 AUBERGINE 🍆 TOMATO 🍅 EAR_OF_MAIZE 🌽 KEYCAP_1 1⃣ KEYCAP_2 2⃣ KEYCAP_3 3⃣ KEYCAP_4 4⃣ KEYCAP_5 5⃣ KEYCAP_6 6⃣ KEYCAP_7 7⃣ KEYCAP_8 8⃣ KEYCAP_9 9⃣ KEYCAP_0 0⃣ KEYCAP_TEN 🔟 INPUT_SYMBOL_FOR_NUMBERS 🔢 INPUT_SYMBOL_FOR_SYMBOLS 🔣 UPWARDS_BLACK_ARROW ⬆ DOWNWARDS_BLACK_ARROW ⬇ LEFTWARDS_BLACK_ARROW ⬅ BLACK_RIGHTWARDS_ARROW ➡ INPUT_SYMBOL_FOR_LATIN_CAPITAL_LETTERS 🔠 INPUT_SYMBOL_FOR_LATIN_SMALL_LETTERS 🔡 INPUT_SYMBOL_FOR_LATIN_LETTERS 🔤 NORTH_EAST_ARROW ↗ NORTH_WEST_ARROW ↖ SOUTH_EAST_ARROW ↘ SOUTH_WEST_ARROW ↙ LEFT_RIGHT_ARROW ↔ UP_DOWN_ARROW ↕ ANTICLOCKWISE_DOWNWARDS_AND_UPWARDS_OPEN_CIRCLE_ARROWS 🔄 BLACK_LEFT-POINTING_TRIANGLE ◀ BLACK_RIGHT-POINTING_TRIANGLE ▶ UP-POINTING_SMALL_RED_TRIANGLE 🔼 DOWN-POINTING_SMALL_RED_TRIANGLE 🔽 LEFTWARDS_ARROW_WITH_HOOK ↩ RIGHTWARDS_ARROW_WITH_HOOK ↪ INFORMATION_SOURCE ℹ BLACK_LEFT-POINTING_DOUBLE_TRIANGLE ⏪ BLACK_RIGHT-POINTING_DOUBLE_TRIANGLE ⏩ BLACK_UP-POINTING_DOUBLE_TRIANGLE ⏫ BLACK_DOWN-POINTING_DOUBLE_TRIANGLE ⏬ ARROW_POINTING_RIGHTWARDS_THEN_CURVING_DOWNWARDS ⤵ ARROW_POINTING_RIGHTWARDS_THEN_CURVING_UPWARDS ⤴ SQUARED_OK 🆗 TWISTED_RIGHTWARDS_ARROWS 🔀 CLOCKWISE_RIGHTWARDS_AND_LEFTWARDS_OPEN_CIRCLE_ARROWS 🔁 CLOCKWISE_RIGHTWARDS_AND_LEFTWARDS_OPEN_CIRCLE_ARROWS_WITH_CIRCLED_ONE_OVERLAY 🔂 SQUARED_NEW 🆕 SQUARED_UP_WITH_EXCLAMATION_MARK 🆙 SQUARED_COOL 🆒 SQUARED_FREE 🆓 SQUARED_NG 🆖 ANTENNA_WITH_BARS 📶 CINEMA 🎦 SQUARED_KATAKANA_KOKO 🈁 SQUARED_CJK_UNIFIED_IDEOGRAPH-6307 🈯 SQUARED_CJK_UNIFIED_IDEOGRAPH-7A7A 🈳 SQUARED_CJK_UNIFIED_IDEOGRAPH-6E80 🈵 SQUARED_CJK_UNIFIED_IDEOGRAPH-5408 🈴 SQUARED_CJK_UNIFIED_IDEOGRAPH-7981 🈲 CIRCLED_IDEOGRAPH_ADVANTAGE 🉐 SQUARED_CJK_UNIFIED_IDEOGRAPH-5272 🈹 SQUARED_CJK_UNIFIED_IDEOGRAPH-55B6 🈺 SQUARED_CJK_UNIFIED_IDEOGRAPH-6709 🈶 SQUARED_CJK_UNIFIED_IDEOGRAPH-7121 🈚 RESTROOM 🚻 MENS_SYMBOL 🚹 WOMENS_SYMBOL 🚺 BABY_SYMBOL 🚼 WATER_CLOSET 🚾 POTABLE_WATER_SYMBOL 🚰 PUT_LITTER_IN_ITS_PLACE_SYMBOL 🚮 NEGATIVE_SQUARED_LATIN_CAPITAL_LETTER_P 🅿 WHEELCHAIR_SYMBOL ♿ NO_SMOKING_SYMBOL 🚭 SQUARED_CJK_UNIFIED_IDEOGRAPH-6708 🈷 SQUARED_CJK_UNIFIED_IDEOGRAPH-7533 🈸 SQUARED_KATAKANA_SA 🈂 CIRCLED_LATIN_CAPITAL_LETTER_M Ⓜ PASSPORT_CONTROL 🛂 BAGGAGE_CLAIM 🛄 LEFT_LUGGAGE 🛅 CUSTOMS 🛃 CIRCLED_IDEOGRAPH_ACCEPT 🉑 CIRCLED_IDEOGRAPH_SECRET ㊙ CIRCLED_IDEOGRAPH_CONGRATULATION ㊗ SQUARED_CL 🆑 SQUARED_SOS 🆘 SQUARED_ID 🆔 NO_ENTRY_SIGN 🚫 NO_ONE_UNDER_EIGHTEEN_SYMBOL 🔞 NO_MOBILE_PHONES 📵 DO_NOT_LITTER_SYMBOL 🚯 NON-POTABLE_WATER_SYMBOL 🚱 NO_BICYCLES 🚳 NO_PEDESTRIANS 🚷 CHILDREN_CROSSING 🚸 NO_ENTRY ⛔ EIGHT_SPOKED_ASTERISK ✳ SPARKLE ❇ NEGATIVE_SQUARED_CROSS_MARK ❎ WHITE_HEAVY_CHECK_MARK ✅ EIGHT_POINTED_BLACK_STAR ✴ HEART_DECORATION 💟 SQUARED_VS 🆚 VIBRATION_MODE 📳 MOBILE_PHONE_OFF 📴 NEGATIVE_SQUARED_LATIN_CAPITAL_LETTER_A 🅰 NEGATIVE_SQUARED_LATIN_CAPITAL_LETTER_B 🅱 NEGATIVE_SQUARED_AB 🆎 NEGATIVE_SQUARED_LATIN_CAPITAL_LETTER_O 🅾 DIAMOND_SHAPE_WITH_A_DOT_INSIDE 💠 DOUBLE_CURLY_LOOP ➿ BLACK_UNIVERSAL_RECYCLING_SYMBOL ♻ ARIES ♈ TAURUS ♉ GEMINI ♊ CANCER ♋ LEO ♌ VIRGO ♍ LIBRA ♎ SCORPIUS ♏ SAGITTARIUS ♐ CAPRICORN ♑ AQUARIUS ♒ PISCES ♓ OPHIUCHUS ⛎ SIX_POINTED_STAR_WITH_MIDDLE_DOT 🔯 AUTOMATED_TELLER_MACHINE 🏧 CHART_WITH_UPWARDS_TREND_AND_YEN_SIGN 💹 HEAVY_DOLLAR_SIGN 💲 CURRENCY_EXCHANGE 💱 COPYRIGHT_SIGN © REGISTERED_SIGN ® TRADE_MARK_SIGN ™ CROSS_MARK ❌ DOUBLE_EXCLAMATION_MARK ‼ EXCLAMATION_QUESTION_MARK ⁉ HEAVY_EXCLAMATION_MARK_SYMBOL ❗ BLACK_QUESTION_MARK_ORNAMENT ❓ WHITE_EXCLAMATION_MARK_ORNAMENT ❕ WHITE_QUESTION_MARK_ORNAMENT ❔ HEAVY_LARGE_CIRCLE ⭕ TOP_WITH_UPWARDS_ARROW_ABOVE 🔝 END_WITH_LEFTWARDS_ARROW_ABOVE 🔚 BACK_WITH_LEFTWARDS_ARROW_ABOVE 🔙 ON_WITH_EXCLAMATION_MARK_WITH_LEFT_RIGHT_ARROW_ABOVE 🔛 SOON_WITH_RIGHTWARDS_ARROW_ABOVE 🔜 CLOCKWISE_DOWNWARDS_AND_UPWARDS_OPEN_CIRCLE_ARROWS 🔃 CLOCK_FACE_TWELVE_OCLOCK 🕛 CLOCK_FACE_TWELVE-THIRTY 🕧 CLOCK_FACE_ONE_OCLOCK 🕐 CLOCK_FACE_ONE-THIRTY 🕜 CLOCK_FACE_TWO_OCLOCK 🕑 CLOCK_FACE_TWO-THIRTY 🕝 CLOCK_FACE_THREE_OCLOCK 🕒 CLOCK_FACE_THREE-THIRTY 🕞 CLOCK_FACE_FOUR_OCLOCK 🕓 CLOCK_FACE_FOUR-THIRTY 🕟 CLOCK_FACE_FIVE_OCLOCK 🕔 CLOCK_FACE_FIVE-THIRTY 🕠 CLOCK_FACE_SIX_OCLOCK 🕕 CLOCK_FACE_SEVEN_OCLOCK 🕖 CLOCK_FACE_EIGHT_OCLOCK 🕗 CLOCK_FACE_NINE_OCLOCK 🕘 CLOCK_FACE_TEN_OCLOCK 🕙 CLOCK_FACE_ELEVEN_OCLOCK 🕚 CLOCK_FACE_SIX-THIRTY 🕡 CLOCK_FACE_SEVEN-THIRTY 🕢 CLOCK_FACE_EIGHT-THIRTY 🕣 CLOCK_FACE_NINE-THIRTY 🕤 CLOCK_FACE_TEN-THIRTY 🕥 CLOCK_FACE_ELEVEN-THIRTY 🕦 HEAVY_MULTIPLICATION_X ✖ HEAVY_PLUS_SIGN ➕ HEAVY_MINUS_SIGN ➖ HEAVY_DIVISION_SIGN ➗ BLACK_SPADE_SUIT ♠ BLACK_HEART_SUIT ♥ BLACK_CLUB_SUIT ♣ BLACK_DIAMOND_SUIT ♦ WHITE_FLOWER 💮 HUNDRED_POINTS_SYMBOL 💯 HEAVY_CHECK_MARK ✔ BALLOT_BOX_WITH_CHECK ☑ RADIO_BUTTON 🔘 LINK_SYMBOL 🔗 CURLY_LOOP ➰ WAVY_DASH 〰 PART_ALTERNATION_MARK 〽 TRIDENT_EMBLEM 🔱 BLACK_MEDIUM_SQUARE ◼ WHITE_MEDIUM_SQUARE ◻ BLACK_MEDIUM_SMALL_SQUARE ◾ WHITE_MEDIUM_SMALL_SQUARE ◽ BLACK_SMALL_SQUARE ▪ WHITE_SMALL_SQUARE ▫ UP-POINTING_RED_TRIANGLE 🔺 BLACK_SQUARE_BUTTON 🔲 WHITE_SQUARE_BUTTON 🔳 MEDIUM_BLACK_CIRCLE ⚫ MEDIUM_WHITE_CIRCLE ⚪ LARGE_RED_CIRCLE 🔴 LARGE_BLUE_CIRCLE 🔵 DOWN-POINTING_RED_TRIANGLE 🔻 WHITE_LARGE_SQUARE ⬜ BLACK_LARGE_SQUARE ⬛ LARGE_ORANGE_DIAMOND 🔶 LARGE_BLUE_DIAMOND 🔷 SMALL_ORANGE_DIAMOND 🔸 SMALL_BLUE_DIAMOND 🔹 )
EMOJI_KEYS=(${(k)EMOJI})

# This array stores emoji for each hour of the day
ICONLIST=(
  ALIEN_MONSTER                 # 1 am
  IMP                           # 2 am
  JAPANESE_GOBLIN               # 3 am
  SKULL                         # 4 am
  EXTRATERRESTRIAL_ALIEN        # 5 am
  SUN_WITH_FACE                 # 6 am
  COOKING                       # 7 am
  HOT_BEVERAGE                  # 8 am
  PERSONAL_COMPUTER             # 9 am
  FLOPPY_DISK                  # 10 am
  SEE-NO-EVIL_MONKEY           # 11 am
  HEAR-NO-EVIL_MONKEY          # 12 am
  SPEAK-NO_EVIL_MONKEY         #  1 pm
  DIZZY_SYMBOL                 #  2 pm
  SAILBOAT                     #  3 pm
  SURFER                       #  4 pm
  BEER_MUG                     #  5 pm
  CURRY_AND_RICE               #  6 pm
  COCKTAIL_GLASS               #  7 pm
  MAN_AND_WOMAN_HOLDING_HANDS  #  8 pm
  DANCER                       #  9 pm
  WOMAN_WITH_BUNNY_EARS        # 10 pm
  KISS                         # 11 pm
  SMILING_FACE_WITH_HORNS      # 12 am
)

autoload -U colors && colors

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

# Uses the batcharge.py script; need to refactor this into pure zsh
function battery_charge() {
  if [ -e ~/bin/batcharge.py ]
  then
    echo `python ~/bin/batcharge.py`
  else
    echo ''
  fi
}

function setprompt {
  # Here we let the user choose an emoji, or pick a random one.
  if (($EMOJI_KEYS[(Ie)$ICON])); then
    # Use this prompt if you want to set your ICON manually
    #PROMPT='[%{$fg[yellow]%}%2~%{$reset_color%}] %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}% %{$reset_color%} $EMOJI[$ICON]  '
    # Use this prompt if you want your ICON to change every hour
    PROMPT='[%{$fg[yellow]%}%2~%{$reset_color%}] %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}% %{$reset_color%} %(0T.$EMOJI[$ICONLIST[24]].%(1T.$EMOJI[$ICONLIST[1]].%(2T.$EMOJI[$ICONLIST[2]].%(3T.$EMOJI[$ICONLIST[3]].%(4T.$EMOJI[$ICONLIST[4]].%(5T.$EMOJI[$ICONLIST[5]].%(6T.$EMOJI[$ICONLIST[6]].%(7T.$EMOJI[$ICONLIST[7]].%(8T.$EMOJI[$ICONLIST[8]].%(9T.$EMOJI[$ICONLIST[9]].%(10T.$EMOJI[$ICONLIST[10]].%(11T.$EMOJI[$ICONLIST[11]].%(12T.$EMOJI[$ICONLIST[12]].%(13T.$EMOJI[$ICONLIST[13]].%(14T.$EMOJI[$ICONLIST[14]].%(15T.$EMOJI[$ICONLIST[15]].%(16T.$EMOJI[$ICONLIST[16]].%(17T.$EMOJI[$ICONLIST[17]].%(18T.$EMOJI[$ICONLIST[18]].%(19T.$EMOJI[$ICONLIST[19]].%(20T.$EMOJI[$ICONLIST[20]].%(21T.$EMOJI[$ICONLIST[21]].%(22T.$EMOJI[$ICONLIST[22]].%(23T.$EMOJI[$ICONLIST[23]].\$))))))))))))))))))))))))  '
    # RPROMPT includes battery monitor, clock, and moon phase
    RPROMPT='%{$fg[green]%} $(battery_charge)%{$reset_color%} %(17T.$EMOJI[BEER_MUG].$(emoji-clock))  $(printmoon)'
  fi
}

function p {
  # The p function changes your prompt icon
  NEWICON=$1
  EMOJI_KEYS=(${(k)EMOJI})
  if (($EMOJI_KEYS[(Ie)$NEWICON])); then
    export ICON=$1
  else
    echo "Emoji not found."
  fi
}

function showemoji {
  # Running 'showemoji' will give you the whole list of emoji with names
  # printf '%s => %s\n' ${(vk)EMOJI}
  for e in ${(k)EMOJI}
  print "$EMOJI[$e]   $e"
}

# Finally set the prompt
setprompt
