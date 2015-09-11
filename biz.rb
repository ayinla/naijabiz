class Review
  def initialize reviewer, comment=""
    @reviewer = reviewer
    @comment =""
    @time = Time.now
    @location = ""
  end
  
 attr_accessor :reviewer, :comment
 attr_reader :time, :location
  def puts
  	print "\nName: #{@reviewer} \nReview:  #{@comment} \nTime: #{@time}"
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
  attr_reader :phone, :address, :state, :city
  
end

class Biz
	@@count = 0
	def  initialize (bizhash)
		@name = bizhash["name"]
		@contact = Contact.new(bizhash["contact"])
		@product, @join_date  = bizhash["product"],  Time.now
		@@count = @@count +1
	  @bizhash	= hash
	  @reviews = Array.new
	 
	  case  state.downcase
			when 'lagos' ; $lagos.push(@bizhash) 
   	 	when 'osun' ; $osun.push(@bizhash)
   	 	when 'sokoto' ; $sokoto.push(@bizhash)
   	 	when 'abia' ; $abia.push(@bizhash)
   	 	when 'oyo' ; $oyo.push(@bizhash)
   	 	else
   	 		puts state
   	end
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
	def state
		@contact.state
	end
	
	public
	def getreview reviewer, comment
		@review = Review.new reviewer, comment
		
		@review.reviewer = reviewer
		@review.comment = comment
		
		@reviews.push(@review)
	end
	
	def showreviews
		@reviews.each do |item|
			item.puts
		end
	end
end







































