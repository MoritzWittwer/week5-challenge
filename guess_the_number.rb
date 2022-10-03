random_number = rand(100)
puts random_number

print "bitte gib eine Zahl ein zwischen 0 und 100 ein: " 
eingabe=gets.chomp.to_i
puts "du hast #{eingabe} eingegeben"

unless (eingabe == random_number)
        if eingabe.negative? == true
            print "bitte gib eine positive Zahl ein: "
        elsif eingabe > 100
            print"bitte gib eine Zahl kleiner als 100 ein: "
        else 
            loop do
                if eingabe > random_number
                    print "die Zahl war zu gross gib eine weitere zahl ein: "
                    eingabe = gets.chomp.to_i
                elsif eingabe < random_number 
                    print "die Zahl war zu klein gib eine weitere zahl ein: "
                    eingabe = gets.chomp.to_i
                else
                    print "*****Super du hast mit der Zahl #{eingabe} einen Volltreffer gelandet*****"   
                    exit
                end
            end 
        end
end
print "Super du hast mit der Zahl #{eingabe} einen Volltreffer gelandet"   
exit