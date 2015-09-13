require 'mongo'

include Mongo

client = Mongo::Client.new(['127.0.0.1:27017'], :database => 'mydb')

result = client[:artists].update({name: 'ladeji'})
result = client[:artists].insert_many([
	{:name => 'flying lotus'},
	{:name => 'Aphex Twin'}
	])

client[:artists].find(:name => 'flying lotus').each do |document|
 puts document
end
result.n