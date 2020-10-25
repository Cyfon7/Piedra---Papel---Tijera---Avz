def print_menu ()
    print '
    __     __    ________    ___    __    __     __
   |  \   /  |  |    ____|  |   \  |  |  |  |   |  |
   |   \_/   |  |   |____   |    \_|  |  |  |   |  |
   |         |  |    ____|  |   _     |  |  |   |  |
   |  |\_/|  |  |   |____   |  | \    |  |  \___/  |
   |__|   |__|  |________|  |__|  \___|   \_______/ '
end

def print_winner ()
    print '
    __     __    ________    ___    __    ___    __    ________    _______
   |  | _ |  |  |__    __|  |   \  |  |  |   \  |  |  |    ____|  |   __  \
   |  |/ \|  |     |  |     |    \_|  |  |    \_|  |  |   |____   |  |__|  |
   |    _    |     |  |     |   _     |  |   _     |  |    ____|  |   _   /
   |   / \   |   __|  |__   |  | \    |  |  | \    |  |   |____   |  | \  \
   |__/   \__|  |________|  |__|  \___|  |__|  \___|  |________|  |__|  \__\ ' 
end

def print_player (player)

    if (player == 1)
        print '
                             _______     
                            |   __  \       111 
                            |  |__|  |    11111    
                            |   ____/       111 
                            |  |            111 
                            |__|            111'
    else
        print '
                             _______     
                            |   __  \      22222 
                            |  |__|  |    22   22  
                            |   ____/         22
                            |  |            222
                            |__|          2222222'
    end
    print "\n\n\n"
end

def clear_screen ()    #Limpia la pantalla solo en Visual Studio Code
    print "\e[2J\e[f"
end

def opc_invalid (opc)  #Valida la opcion del menu
    !((opc >= 1) && (opc <= 4))
end

def show_menu (player, invalid_opc)       #Muestra menu
    
    print_menu()

    print "\nTurno jugador "
    if player == 1
        print "uno"
    else
        print "dos"
    end

    if invalid_opc
        puts "     Ingrese una Opcion Valida"
    else
        puts " "
    end

    puts "1. Piedra"
    puts "2. Papel"
    puts "3. Tijeras"
    puts "4. Salir"

end

def winner (opc_p1,opc_p2)

    if (opc_p1 == opc_p2)                  #Empate
        0
    else
        piedra = ((opc_p1 == 1) && (opc_p2 == 3))
        papel = ((opc_p1 == 2) && (opc_p2 == 1))
        tijera = ((opc_p1 == 3) && (opc_p2 == 2))

        if (piedra || papel || tijera)     #Winner player 1
            1
        else                               #Winner player 2
            2
        end
    end
end

def show_winner(win_player)
    print_winner()
    print_player(win_player)    
end

=begin "
                                                                             ████          ████  
                                                 ██▒▒                      ▓▓░░░░▓▓      ▓▓░░░░▓▓
                                           ██▓▓▓▓░░░░▓▓▓▓██                ██░░░░██      ██░░░░██
                                        ██░░░░██░░░░██░░░░██                ██░░░░██    ██░░░░██
                                    ▓▓▓▓██░░░░██░░░░██░░░░██                ██░░░░██  ░░░░░░░░██
                                  ▓▓░░░░██░░░░██░░░░██░░░░██                ██░░░░██  ██░░░░▓▓  
        ▓▓▓▓  ▓▓▓▓  ██▒▒          ██░░░░██░░░░██░░░░██░░░░██              ▓▓██▓▓░░░░▓▓██░░░░██  
  ██████░░░░██░░░░██░░░░██        ██░░░░██░░░░██░░░░██░░░░██        ██████░░░░██░░░░██░░░░██    
▓▓░░░░██░░░░██░░░░██░░░░██        ██░░░░██░░░░██░░░░██░░░░██      ██░░░░██░░░░██░░░░██░░░░██    
▓▓░░░░██░░░░██░░░░██░░░░██        ██░░░░██░░░░██░░░░██░░░░██      ██░░░░██░░░░██░░░░░░░░░░██    
▓▓░░░░██░░░░██░░░░██░░░░██        ██░░░░░░░░░░░░░░░░░░░░░░██      ██░░░░██░░░░██░░░░░░░░░░██    
██░░░░██░░░░██████████████        ▓▓░░░░░░░░░░██████████████      ██░░░░██░░░░████████████▓▓    
▓▓░░░░██░░░░██░░░░░░░░░░░░██      ▓▓░░░░░░░░░░██░░░░░░░░░░░░██    ▓▓░░░░██░░░░██░░░░░░░░░░░░██  
▓▓▓▓▓▓▒▒▓▓▓▓██░░░░░░░░░░░░██      ██░░░░░░░░░░██░░░░░░░░░░░░██    ██▓▓▓▓▒▒▓▓▓▓██░░░░░░░░░░░░██  
▓▓░░░░░░░░░░░░██▒▒▓▓▓▓░░░░██      ██░░░░░░░░░░░░▓▓▒▒▓▓▓▓░░░░▓▓    ▓▓░░▒▒░░░░░░░░▓▓▓▓▒▒▒▒░░░░██  
░░░░░░░░░░░░░░░░▒▒░░░░░░░░██      ██░░░░░░░░░░░░░░░░░░░░░░░░▓▓    ▓▓░░░░░░░░░░░░░░░░░░░░░░░░██  
░░░░░░░░░░░░░░░░░░░░░░░░░░▓▓      ██░░░░░░░░░░░░░░░░░░░░░░░░██    ██░░░░░░░░░░░░░░░░░░░░░░░░██  
░░░░░░░░░░░░░░░░░░░░░░░░██        ██░░░░░░░░░░░░░░░░░░░░░░██      ██░░░░░░░░░░░░░░░░░░░░░░██    
██░░░░░░░░░░░░░░░░░░░░██          ██░░░░░░░░░░░░░░░░░░░░██        ██░░░░░░░░░░░░░░░░░░░░██    
██░░░░░░░░░░░░░░░░░░██            ██░░░░░░░░░░░░░░░░░░██          ██░░░░░░░░░░░░░░░░░░██      
██░░░░░░░░░░░░░░██                ██░░░░░░░░░░░░░░██              ██░░░░░░░░░░░░░░██        
██░░░░░░░░░░░░░░██                ██░░░░░░░░░░░░░░██              ██░░░░░░░░░░░░░░██        
██░░░░░░░░░░░░░░██                ██░░░░░░░░░░░░░░██              ██░░░░░░░░░░░░░░██        
██░░░░░░░░░░░░░░██                ██░░░░░░░░░░░░░░██              ██░░░░░░░░░░░░░░██        
██░░░░░░░░░░░░░░██                ██░░░░░░░░░░░░░░██              ██░░░░░░░░░░░░░░██        
██░░░░░░░░░░░░░░██                ██░░░░░░░░░░░░░░██              ██░░░░░░░░░░░░░░██        
██░░░░░░░░░░░░░░██                ██░░░░░░░░░░░░░░██              ██░░░░░░░░░░░░░░██        
██░░░░░░░░░░░░░░██                ██░░░░░░░░░░░░░░██              ██░░░░░░░░░░░░░░██        

" 
=end

=begin
puts "    _    _"      
puts "   (_)  / )"     
puts "     | (_/ "    
puts "    _+/  "       
puts "   //|\ "       
puts "  // | )"        
puts " (/  |/  "       

     ________
    |        |\  
    |  ~~  ~~|_\
    |  ~~~     |
    |  ~~~~~   |
    |  ~~~~~~  |
    |__________|






                               _.._      _
                              (\   `-../' `\
                     _..--..__|_)      )   )`-.
                    (_       |  |     /   |    `-..,,
                    | )      |  |    (   ,'         )
                    |,'\     (  (    '  (          ,'
               __..-'   \     )  )      |         ,\.__
              `\         \    `. `.     )        ,'    ``--,
                `\        \    )  )    (        ,'        /
                  `\_      |   (  (    |       (        ,'"Y8a,_
              __,,ad8b,    (   `. `.   |      ,'     _,'     `""Y8a,_
      __,,aad8P""'' _,8b    )   )  )   |     ,'   _,d88b          `""Y8a
_,aad8P""''       ,d8888b   )   (  (   (    (  ,d8888P"'    __,,aadd8PP8
8"Y8b,_           `Y888888a,(,,,,),,),aabaaadgd8PP"'__,,aadd8PP""''    8
8   ""Y8a,_          ``""YYYYY88888PPPP"""''__,,aadd8PP""''            8
8       ""Y8a,_                     __,,aadd8PP""''           Normand  8
8           ""Y8a,_         __,,aadd8PP""''                   Veilleux 8
8               ""Y8a,,,aadd8PP""''                                    8
8                   "8P""''                                           _8
8                    8                                         _,,aadd88
8b,_                 8                                  _,,aadd88888888P
8888ba,              8                           _,,aadd88888888PP""''
 `"Y8888b,_          8                    _,,aadd88888888PP""''
    `"Y8888ba,       8             _,,aadd88888888PP""''
       `"Y88888b,_   8      _,,aadd88888888PP""''
           ""88888ba,8,,aadd88888888PP""''
              `"Y888888888888PP""''
                 `"Y88PP""''
                     "

        


=end

current_opc = 0
opc_player_1 = 0
opc_player_2 = 0
current_player = 1
end_game = false
close_menu = false
show_invalid = false

#Menu & Validation 

while ((opc_invalid(opc_player_1) || opc_invalid(opc_player_2)) && (!close_menu) && (!end_game))
    
    clear_screen()

    show_menu(current_player,show_invalid)       #Muestra Menu
    current_opc = gets.to_i

    if (!opc_invalid(current_opc))               #Opcion es Valida
        if current_opc == 4                      #Caso Salir
            end_game = true
        elsif current_player == 1                #Guardar Opcion Player 1
            opc_player_1 = current_opc
            current_player = 2
        elsif current_player == 2                #Guardar Opcion Player 2
            opc_player_2 = current_opc
            close_menu  = true
        else                                     #Esto nunca deberia pasar
            clear_screen()
            current_player = 1
        end
        show_invalid = false
    else                                         #Proximo refresh mostrara Opcion Invalida
        show_invalid = true
    end
end

if !end_game
    result = winner(opc_player_1,opc_player_2)

    clear_screen()

    if result == 0
        
    else
        show_winner(result)
    end
end