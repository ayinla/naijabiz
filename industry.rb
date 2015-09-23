#industries and keywords mapping 
industries = {
    banking: %w[],
    food: %w[food party ],
    hotel: %w[travel food rest] ,
    it: %w[phone computer internet apple samsung],
    telecommunications: %w[phone recharge ],
    restaurant: %w[food ]
}

industries.each do |item, key|
    puts item
end
