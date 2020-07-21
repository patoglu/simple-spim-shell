	.data
greeting:	 .asciiz "\n                       ==========================================================
                       |                                                        |
                       |         <<<PALINDROME FINDER PROGRAM STARTED>>>        |                                       |
                       |                                                        |
                       ==========================================================\n\n"

new_line: 	 .asciiz "\n"

palindrome: 	.asciiz "is palindrome.\n"

no_palindrome: .asciiz "is not palindrome.\n"

colon:			.asciiz ": "

selection:       .asciiz "Do you want to continue (y/n)? "

last_request:     .asciiz "Please enter the last word: "

farewell:           .asciiz "Goodbye...\n"

user_input_word:            .space 60

user_selection:              .space 3

#PALINDROME LIST
str_abba:   .asciiz "abba"

str_anna:   .asciiz "anna"

str_civic:   .asciiz "civic"

str_kayak:   .asciiz "kayak"

str_level:   .asciiz "level"

str_madam:   .asciiz "madam"

str_mom:   .asciiz "mom"

str_racecar:   .asciiz "racecar"

str_radar:   .asciiz "radar"

str_rotator:   .asciiz "rotator"

#NO PALINDROME LIST

str_kobe:   .asciiz "kobe"

str_bean:   .asciiz "bean"

str_bryant:   .asciiz "bryant"

str_chauncey:   .asciiz "chauncey"

str_billups:   .asciiz "billups"

str_carmelo:   .asciiz "carmelo"

str_anthony:   .asciiz "anthony"

str_tyson:   .asciiz "tyson"

str_chandler:   .asciiz "chandler"

str_kyle:   .asciiz "kyle"

str_korver:   .asciiz "korver"

str_andrei:   .asciiz "andrei"

str_kirilenko:   .asciiz "kirilenko"

str_derek:   .asciiz "derek"

str_fisher:   .asciiz "fisher"

str_trevor:   .asciiz "trevor"

str_ariza:   .asciiz "ariza"

str_sasha:   .asciiz "sasha"

str_vujacic:   .asciiz "vujacic"

str_metta:   .asciiz "metta"

str_worldpeace:   .asciiz "worldpeace"

str_Ron:   .asciiz "Ron"

str_artest:   .asciiz "artest"

str_Dwight:   .asciiz "Dwight"

str_howard:   .asciiz "howard"

str_Andrew:   .asciiz "Andrew"

str_bynum:   .asciiz "bynum"

str_Lamar:   .asciiz "Lamar"

str_odom:   .asciiz "odom"

str_Jordan:   .asciiz "Jordan"

str_clarkson:   .asciiz "clarkson"

str_Julius:   .asciiz "Julius"

str_randle:   .asciiz "randle"

str_Dangelo:   .asciiz "Dangelo"

str_falcao:   .asciiz "falcao"

str_Brandon:   .asciiz "Brandon"

str_ingram:   .asciiz "ingram"

str_Kyrie:   .asciiz "Kyrie"

str_irving:   .asciiz "irving"

str_Kevin:   .asciiz "Kevin"

str_durant:   .asciiz "durant"

str_Russel:   .asciiz "Russel"

str_westbrook:   .asciiz "westbrook"

str_OJ:   .asciiz "OJ"

str_mayo:   .asciiz "mayo"

str_Paul:   .asciiz "Paul"

str_george:   .asciiz "george"

str_Larry:   .asciiz "Larry"

str_bird:   .asciiz "bird"

str_Earvin:   .asciiz "Earvin"

str_Magic:   .asciiz "Magic"

str_johnson:   .asciiz "johnson"

str_Michael:   .asciiz "Michael"

str_jordan:   .asciiz "jordan"

str_Wilt:   .asciiz "Wilt"

str_chamberlain:   .asciiz "chamberlain"

str_Kareem:   .asciiz "Kareem"

str_abdul:   .asciiz "abdul"

str_jabbar:   .asciiz "jabbar"

str_Drazen:   .asciiz "Drazen"

str_petrovic:   .asciiz "petrovic"

str_Rashard:   .asciiz "Rashard"

str_lewis:   .asciiz "lewis"

str_Tony:   .asciiz "Tony"

str_parker:   .asciiz "parker"

str_Manu:   .asciiz "Manu"

str_ginobili:   .asciiz "ginobili"

str_Tim:   .asciiz "Tim"

str_duncan:   .asciiz "duncan"

str_federer:   .asciiz "federer"

str_farmar:   .asciiz "farmar"

str_Luke:   .asciiz "Luke"

str_walton:   .asciiz "walton"

str_Daniel:   .asciiz "Daniel"

str_gyurta:   .asciiz "gyurta"

str_Chad:   .asciiz "Chad"

str_le:   .asciiz "le"

str_clos:   .asciiz "clos"

str_onyekuru:   .asciiz "onyekuru"

str_phelps:   .asciiz "phelps"

str_Ryan:   .asciiz "Ryan"

str_lochte:   .asciiz "lochte"

str_Candace:   .asciiz "Candace"

str_novak:   .asciiz "novak"

str_Diana:   .asciiz "Diana"

str_taurasi:   .asciiz "taurasi"

str_Gianna:   .asciiz "Gianna"

str_kamehameha:   .asciiz "kamehameha"

str_Shannon:   .asciiz "Shannon"

str_brown:   .asciiz "brown"



	.globl	palindrome_main
	.text
	main:
palindrome_:


    jal print_greeting_message	#Greet the user.

	li $t5, 1				#Declare t5 as counter.

	jal print_number
	jal print_colon
    la $a0, str_abba
	jal print_string
    jal str_len
	jal print_colon
	la $a0, str_abba
	jal is_palindrome

	addi $t5, $t5, 1

	jal print_number
	jal print_colon
    la $a0, str_civic
	jal print_string
    jal str_len
	jal print_colon
	la $a0, str_civic
	jal is_palindrome

	addi $t5, $t5, 1

	jal print_number
    jal print_colon
    la $a0, str_durant
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_durant
    jal is_palindrome


	addi $t5, $t5, 1

	jal print_number
    jal print_colon
    la $a0, str_odom
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_odom
    jal is_palindrome



	addi $t5, $t5, 1

	jal print_number
	jal print_colon
    la $a0, str_kayak
	jal print_string
    jal str_len
	jal print_colon
	la $a0, str_kayak
	jal is_palindrome

	addi $t5, $t5, 1



	jal print_number
    jal print_colon
    la $a0, str_federer
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_federer
    jal is_palindrome

	addi $t5, $t5, 1

	jal print_number
	jal print_colon
    la $a0, str_mom
	jal print_string
    jal str_len
	jal print_colon
	la $a0, str_mom
	jal is_palindrome


	addi $t5, $t5, 1

	jal print_number
    jal print_colon
    la $a0, str_falcao
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_falcao
    jal is_palindrome





	addi $t5, $t5, 1

	jal print_number
	jal print_colon
    la $a0, str_radar
	jal print_string
    jal str_len
	jal print_colon
	la $a0, str_radar
	jal is_palindrome


	addi $t5, $t5, 1

	jal print_number
	jal print_colon
    la $a0, str_rotator
	jal print_string
    jal str_len
	jal print_colon
	la $a0, str_rotator
	jal is_palindrome





	addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_kobe
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_kobe
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_bean
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_bean
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_bryant
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_bryant
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_chauncey
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_chauncey
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_billups
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_billups
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_carmelo
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_carmelo
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_anthony
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_anthony
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_tyson
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_tyson
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_chandler
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_chandler
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_kyle
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_kyle
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_korver
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_korver
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_andrei
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_andrei
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_kirilenko
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_kirilenko
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_derek
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_derek
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_fisher
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_fisher
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_trevor
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_trevor
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_ariza
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_ariza
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_sasha
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_sasha
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_vujacic
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_vujacic
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_metta
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_metta
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_worldpeace
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_worldpeace
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Ron
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Ron
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_artest
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_artest
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Dwight
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Dwight
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_howard
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_howard
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Andrew
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Andrew
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_bynum
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_bynum
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Lamar
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Lamar
    jal is_palindrome

    addi $t5, $t5, 1

	jal print_number
	jal print_colon
    la $a0, str_level
	jal print_string
    jal str_len
	jal print_colon
	la $a0, str_level
	jal is_palindrome


    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Jordan
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Jordan
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_clarkson
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_clarkson
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Julius
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Julius
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_randle
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_randle
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Dangelo
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Dangelo
    jal is_palindrome

    addi $t5, $t5, 1

	jal print_number
	jal print_colon
    la $a0, str_racecar
	jal print_string
    jal str_len
	jal print_colon
	la $a0, str_racecar
	jal is_palindrome


    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Brandon
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Brandon
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_ingram
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_ingram
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Kyrie
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Kyrie
    jal is_palindrome

    addi $t5, $t5, 1


    jal print_number
    jal print_colon
    la $a0, str_irving
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_irving
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Kevin
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Kevin
    jal is_palindrome

    addi $t5, $t5, 1

	jal print_number
	jal print_colon
    la $a0, str_anna
	jal print_string
    jal str_len
	jal print_colon
	la $a0, str_anna
	jal is_palindrome


    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Russel
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Russel
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_westbrook
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_westbrook
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_OJ
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_OJ
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_mayo
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_mayo
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Paul
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Paul
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_george
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_george
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Larry
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Larry
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_bird
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_bird
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Earvin
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Earvin
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Magic
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Magic
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_johnson
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_johnson
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Michael
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Michael
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_jordan
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_jordan
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Wilt
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Wilt
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_chamberlain
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_chamberlain
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Kareem
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Kareem
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_abdul
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_abdul
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_jabbar
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_jabbar
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Drazen
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Drazen
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_petrovic
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_petrovic
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Rashard
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Rashard
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_lewis
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_lewis
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Tony
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Tony
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_parker
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_parker
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Manu
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Manu
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_ginobili
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_ginobili
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Tim
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Tim
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_duncan
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_duncan
    jal is_palindrome

    addi $t5, $t5, 1

	jal print_number
	jal print_colon
    la $a0, str_madam
	jal print_string
    jal str_len
	jal print_colon
	la $a0, str_madam
	jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_farmar
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_farmar
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Luke
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Luke
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_walton
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_walton
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Daniel
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Daniel
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_gyurta
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_gyurta
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Chad
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Chad
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_le
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_le
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_clos
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_clos
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_onyekuru
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_onyekuru
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_phelps
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_phelps
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Ryan
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Ryan
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_lochte
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_lochte
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Candace
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Candace
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_novak
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_novak
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Diana
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Diana
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_taurasi
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_taurasi
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Gianna
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Gianna
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_kamehameha
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_kamehameha
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_Shannon
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_Shannon
    jal is_palindrome

    addi $t5, $t5, 1

    jal print_number
    jal print_colon
    la $a0, str_brown
    jal print_string
    jal str_len
    jal print_colon
    la $a0, str_brown
    jal is_palindrome

    #Print one last request
    li $v0, 4
    la $a0, selection
    syscall

    #Yes or no
    la $a0, user_selection
    li $a1, 3
    li $v0, 8
    syscall



    lb $t0, 0($a0) #Extract first byte of $a0
    li $t1, 'y' #Store y in t1

    bne	$t0, $t1, halt	# if  != $t1 then target

    #Print message input
    li $v0, 4
    la $a0, last_request
    syscall

    #User palindrome input
    la $a0, user_input_word
    li $a1, 60
    li $v0, 8
    syscall

    li $t0, 0 #Restore t registers.
    li $t1, 0 #Restore t registers.

    #Find the length of user entered string.
    jal str_len

    addi $s0, $s0, -1

    la $a0, user_input_word



    jal is_palindrome


halt:
    #Exiting program

    #Printing string
	li	$v0, 4          #system call for printing string.
	la	$a0, farewell     #load the starting address of string to $a0
	syscall             #syscall.


    li      $v0,10       # System call for halting.
    syscall



#Finding length of string.
str_len:
    li $v0, 0               #Store counter variable in $v0
while:
    lb $t0, 0($a0)          #Store current offset byte in $t0
    addi $a0, $a0, 1        #Move the offset pointer by 1 byte.
    beq	 $t0, $zero, done	# if $t0  == $zero then done
    addi $v0, 1
    j while

done:
    move $s0, $v0
    jr $ra

print_new_line:
    li	$v0, 4          #system call for printing string.
	la	$a0, new_line   #load the starting address of string to $a0
	syscall             #syscall.
    jr $ra

print_colon:
    li	$v0, 4          #system call for printing string.
	la	$a0, colon   #load the starting address of string to $a0
	syscall             #syscall.
    jr $ra

#Printing greeting message
print_greeting_message:
	    li	$v0, 4          #system call for printing string.
	    la	$a0, greeting   #load the starting address of string to $a0
	    syscall             #syscall.
        jr $ra

#Printing out the number
print_number:
    li $v0, 1
    move $a0, $t5
    syscall
    jr $ra

print_string:
	li	$v0, 4          #system call for printing string.
	syscall             #syscall.
	jr $ra


is_palindrome:
    move $t0, $a0               #t0 is i (starting index)
    move $t1, $s0             #String length in $t1 but we need to decrement it.
	addi $t1, $t1, -1
	add $t1, $t1, $t0
	li $t3, 0               #t3 is left char
	li $t4, 0               #t4 is right char
continue_palindrome:

	move $a0, $t0			#get $t0. byte to $a0
	lb $t3, 0($a0)          #Store the left char in $t3

	move $a0, $t1			#get $t1. byte to $a0
	lb $t4, 0($a0) 			#Store the left char in $t4

	bne $t3, $t4, not_palindrome	# i $t0 != $t1 then not_palindrome


    addi $t0, $t0, 1		#increment left ptr
	addi $t1, $t1, -1		#decrement right_ptr



	blt $t0, $t1, continue_palindrome  #if left < right continue

	#else print palindrome and exit.
	li	$v0, 4         				 #system call for printing string.
	la	$a0, palindrome
	syscall

	jr $ra


not_palindrome:
	#TO DO: PRINT NOT PALINDROME AND EXIT.
	li	$v0, 4         				 #system call for printing string.
	la	$a0, no_palindrome
	syscall

	jr $ra
