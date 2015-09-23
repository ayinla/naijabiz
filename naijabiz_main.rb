load "states.rb"
load "biz.rb"
load "functions.rb"
require 'json'
require 'digest'
#require 'mongo'
#include Mongo


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

#print "What state do you want to search: "
#state_search = gets.chomp
#search_state state_search

$reviewed =  $naijabiz.values[rand($naijabiz.size)]
#puts $reviewed.print

review

puts $reviewed.to_dict


#client = Mongo::Client.new(['127.0.0.1:27017'], :database => 'naijabiz')

#result = client[:biz].insert_one($reviewed.todb)

$lagos.each do |item|
    10 .times do 
        Random.new_seed
        givestar $naijabiz[item], rand(5) + 1
    end
    $naijabiz[item].average_star
    puts $naijabiz[item].to_dict
    puts $naijabiz[item].email
end

