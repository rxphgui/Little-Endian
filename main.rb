#first programme in ruby by Rxphgui
require 'pwn'
bit1 = 64
bit2 = 32
raph = <<-'EOF'
 _     _ _   _   _        _____          _ _             
| |   (_) | | | | |      |  ___|        | (_)            
| |    _| |_| |_| | ___  | |__ _ __   __| |_  __ _ _ __  
| |   | | __| __| |/ _ \ |  __| '_ \ / _` | |/ _` | '_ \ 
| |___| | |_| |_| |  __/ | |__| | | | (_| | | (_| | | | |
\_____/_|\__|\__|_|\___| \____/_| |_|\__,_|_|\__,_|_| |_|

EOF


puts (raph)
puts "\nBienvene dans Little endian."
puts "Quel est le type d'adresse que vous voulez rentrer ? (64-32)"
choix = gets.chomp.to_i

if choix == bit1
    system ("cls")
    puts (raph)
    puts ("\nVous avez choisie de passer une adresse 64 bits en Litlle Endian")
    puts ("\nVeuillez rentrer une adresse (8 byte) :")
    adresse = gets.chomp.to_i(16)
    print (p64(0x8048087).to_i(16))
elsif choix == bit2
    system ("cls")
    puts (raph)
    puts "\nVous avez choisie de passer une adresse 32 bits en Litlle Endian"
    puts ("\nVeuillez rentrer une adresse (4 byte) :")
    adresse = gets.chomp
    adresse = adresse[2..-1]
else
    puts ("Vous devez choisir soit 64 soit 32.")
end
