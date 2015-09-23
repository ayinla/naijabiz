def say &block
    block.call
end

myblock = lambda {
    1.upto 10 do |i|
        puts i if i%2==0
    end
}
