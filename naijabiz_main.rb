load "states.rb"
load "biz.rb"
require 'json'
require 'digest'
require 'mongo'

include Mongo


$naijabiz = Hash.new
file =  File.read('biz.json')

hashes = JSON.parse(file)

hashes.each do |biz|
  bizob = Biz.new( (biz[-1]))
  #setstate bizob.state
  $naijabiz[bizob.bizhash] = bizob
end

=begin
$naijabiz.each do |key, value|
	puts value.print 
	puts value.join_date 
	puts
	
end
=end

def search_state state
    $naijabiz.each do |item, value|
        if value.state.downcase == state.downcase
            puts value.print; puts
        end
    end
end


#print "What state do you want to search: "
#state_search = gets.chomp
#search_state state_search

$reviewed =  $naijabiz.values[rand($naijabiz.size)]
puts $reviewed.print

def review
     puts "Write a review about the above coy " 
    print "Your name:  "
    name = gets.chomp
    print "Enter your comment : "
    comment = gets
    $reviewed.getreview name, comment
end

puts $reviewed.todb

#client = Mongo::Client.new(['127.0.0.1:27017'], :database => 'naijabiz')

#result = client[:biz].insert_one($reviewed.todb)