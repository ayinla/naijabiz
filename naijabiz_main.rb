load "states.rb"

load "biz.rb"

require 'json'
require 'digest'


#def setstate (state)
	
#end


naijabiz = Hash.new
file =  File.read('biz.json')

hashes = JSON.parse(file)

hashes.each do |biz|
  bizob = Biz.new( (biz[-1]))
  #setstate bizob.state
  naijabiz[bizob.bizhash] = bizob

end

naijabiz.each do |key, value|
	puts value.print 
	puts value.join_date 
	puts
	
end


puts $lagos.size