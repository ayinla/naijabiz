load "states.rb"
require 'json'
require 'digest'

naijabiz = Hash.new

class Review
  def initialize reviewer
    @reviewer = reviewer
    @comment =""
    @time = Time.now
    @location = ""
  end
end

class Contact
  def initialize contact
    @phone = contact['phone']
    @address = contact['address']
    @coordinates =''
    @city = contact['city']
    @state = contact['state']
    @website = contact['website']
  end
  
  attr_reader :phone
  attr_reader :address
  attr_reader :city
  attr_reader :state
end

class Biz
	@@count = 0
	def  initialize (bizhash)
		@name = bizhash["name"]
		@contact = Contact.new(bizhash["contact"])
		@product, @join_date  = bizhash["product"],  Time.now
		@@count = @@count +1
	  @bizhash	= hash
	  @Review = Array.new
	end
  
	def hash
	  sha1 = Digest::SHA1.new
    ob = @name+ @contact.phone +  @contact.address  + @product
		sha1.hexdigest ob
	end
	
  def self.count
		@@count
	end

	def print 
		"Name: #{@name} \nAddress: #{@contact.address } #{@contact.city}, \nState: #{@contact.state }. \nPhone: #{@contact.phone} \nProduct: #{@product}\n"
	end
	
	attr_reader :bizhash, :join_date
	
	
end


file =  File.read('biz.json')

hashes = JSON.parse(file)

hashes.each do |biz|
  bizob = Biz.new( (biz[-1]))
	naijabiz[bizob.bizhash] = bizob
end

naijabiz.each do |key, value|
	puts value.print 
	puts value.join_date 
	puts
	
end


puts abuja.class




































