


class Review
  def initialize reviewer, comment=""
    @reviewer = reviewer
    @comment =""
    @time = Time.now
    @location = ""
    @star = 0
  end
  
 attr_accessor :reviewer, :comment
 attr_reader :time, :location
  def to_dict
  	{Reviewer: @reviewer, Review:  @comment.chomp , Time: @time}
  end
end


class Contact
  def initialize contact
    @phone, @address, @city, @state  = contact['phone'], contact['address'], contact['city'] ,contact['state']
    @coordinates =''
    @website = contact['website']
    @email = contact['email']|| ""
  end
  
  def updatecontact contact
  	@phone, @address, @city, @state  = contact['phone'], contact['address'], contact['city'] ,contact['state']
    @coordinates =''
    @website = contact['website']
    @email = contact['email']|| ""
  end
  
  attr_reader :phone, :address, :state, :city, :email
  
  def to_dict
  	{address: @address, city: @city, state: @state, website: @website, email: @email}
  end
  
end

class Biz
	def  initialize (bizhash)
		@contact = Contact.new(bizhash["contact"])
		@name, @product, @join_date  = bizhash["name"], bizhash["product"],  Time.now
	  	@bizhash	= hash
	  	@reviews = Array.new
	  	setstate @contact.state
	  	@stars = {1 => 0, 2=>0, 3=>0, 4=>0, 5 => 0}
	  	@average_star = 0

	end
	
	def updatebiz
		@contact = Contact.new(bizhash["contact"])
		@name, @product = bizhash["name"], bizhash["product"]
	  	@bizhash	= hash
	  	@reviews = Array.new
	  	setstate @contact.state
	end
	
	def setstate state
		case  state.downcase
			when 'lagos' ; $lagos.push(@bizhash) 
   	 		when 'osun' ; $osun.push(@bizhash)
   	 		when 'sokoto' ; $sokoto.push(@bizhash)
   	 		when 'abia' ; $abia.push(@bizhash)
   	 		when 'oyo' ; $oyo.push(@bizhash)
   	 		when 'ogun' ; $ogun.push(@bizhash)
   	 		when 'ekiti' ; $ekiti.push(@bizhash)
   	 		when 'abuja' ; $abuja.push(@bizhash)
   	 		when 'delta' ; $delta.push(@bizhash)
   	 		when 'enugu' ; $enugu.push(@bizhash)
   	 		when 'edo' ; $edo.push(@bizhash)
   	 		when 'delta'; $delta.push(@bizhash)
   	 		else
   	 			puts state
		end
	end
  
	def hash
	  	sha1 = Digest::SHA1.new
    	ob = @name+ @contact.phone +  @contact.address  + @product +
    	@join_date.to_s + @contact.email 
		sha1.hexdigest ob
	end
	
  	def self.count
		@@count
	end


	attr_reader :bizhash, :join_date
	attr_accessor :stars
	def state
		@contact.state
	end
	
	public
	def getreview reviewer, comment
		@review = Review.new reviewer, comment
		
		@review.reviewer = reviewer
		@review.comment = comment
		
		@reviews.push(@review.to_dict)
	end
	
	def showreviews
		@reviews.each do |item|
			item.puts
		end
	end

	def to_dict
		{_id: self.hash, name: @name, contact: @contact.to_dict , product: @product,
		 join_date: @join_date, reviews: @reviews, stars:@stars, average_star: @average_star
		 }
	end
	
	def average_star 
    	sum = 0
    	@stars.each do |key, value|
			sum += value *key
    	end
    	@average_star = sum/10.0
	end

end



































