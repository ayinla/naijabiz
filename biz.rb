
class Ratings
	@@stars = 0	
end


class Review
  def initialize reviewer, comment=""
    @reviewer = reviewer
    @comment =""
    @time = Time.now
    @location = ""
  end
  
 attr_accessor :reviewer, :comment
 attr_reader :time, :location
  def to_dict
  	{Name: @reviewer, Review:  @comment.chomp , Time: @time}
  end
end

class Contact
  def initialize contact
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
	 
	  case  state.downcase
		when 'lagos' ; $lagos.push(@bizhash) 
   	 	when 'osun' ; $osun.push(@bizhash)
   	 	when 'sokoto' ; $sokoto.push(@bizhash)
   	 	when 'abia' ; $abia.push(@bizhash)
   	 	when 'oyo' ; $oyo.push(@bizhash)
   	 	when 'ogun' ; $ogun.push(@bizhash)
   	 	when 'ekiti' ; $ekiti.push(@bizhash)
   	 	when 'abuja' ; $abuja.push(@bizhash)
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

	def print 
		"Name: #{@name} \nAddress: #{@contact.address } #{@contact.city}, 
		\nState: #{@contact.state }. \nPhone: #{@contact.phone} \nProduct: #{@product}\n"
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
		
		@reviews.push(@review.to_dict)
	end
	
	def showreviews
		@reviews.each do |item|
			item.puts
		end
	end

	def todb
		{_id: self.hash, name: @name, contact: @contact.to_dict , product: @product,
		 join_date: @join_date, reviews: @reviews
		 }
	end
end







































