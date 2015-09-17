def givestar biz, star
    biz.stars[star] +=1	
end

def search_state state
    $naijabiz.each do |item, value|
        if value.state.downcase == state.downcase
            puts value.print; puts
        end
    end
end


def review
     puts "Write a review about the above coy " 
    print "Your name:  "
    name = gets.chomp
    print "Enter your comment : "
    comment = gets
    $reviewed.getreview name, comment
end

