class Customer
	@@no_of_customers = 0
	def initialize(id, name, addr)
		@cust_id = id
		@cust_name = name
		@cust_addr = addr
	end
	def display_details()
		puts "Customer id #{@cust_id}"
		puts "Customer name #{@cust_name}"
		puts "Customer address #{@cust_addr}"
	end
	def total_no_of_customers()
		@@no_of_customers += 1
		puts "Total number of customers: #{@@no_of_customers}"
	end
end

cust1 = Customer.new("1", "John", "Strawberry Fields")
cust2 = Customer.new("2", "Paul", "Liverpool")
cust3 = Customer.new("3", "George", "Bangladesh")
cust4 = Customer.new("4", "Ringo", "In the shadow of the rest of them")

cust1.display_details()
cust1.total_no_of_customers()
cust2.display_details()
cust2.total_no_of_customers()
cust3.display_details()
cust3.total_no_of_customers()
cust4.display_details()
cust4.total_no_of_customers()

class Dog
	def initialize(breed, name)
		@breed = breed
		@name = name
	end

	def bark
		puts "Ruff! Ruff!"
	end

	def display
		puts "I am of #{@breed} breed and my name is #{@name}"
	end
end

d = Dog.new('Labrador', 'Ichiro')

puts d.methods.sort

puts "The id of d is #{d.object_id}"

d.bark
d.display

d1 = d
d1.display

d = nil
d.display

di = nil

d = Dog.new('Alsatian', 'Lassie')
puts d.class.to_s 
###############################
class Blog
  @@all_posts = []
  @@total_posts = 0

  def self.all
    @@all_posts
  end

  def self.add(post)
    @@all_posts << post
    @@total_posts += 1
  end

  def self.publish
    @@all_posts.each do |post|
      puts "Title: #{post.get_title}"
      puts "Author: #{post.get_author}"
      puts "Publish Date: #{post.get_publish_date}"
      puts "Post Content: #{post.get_content}"
    end

  end
end

  class Post < Blog
    def self.create
      post = new
      print "Title:"
      post.title = gets.chomp
      print "Author:"
      post.author = gets.chomp
      post.publish_date = Time.now
      print "Post Content:"
      post.content = gets.chomp
      post.save

      puts "Do you want to create another post? [Y/N]"
      if ( gets.chomp.downcase == 'y' ) then 
         Post.create
      else
       	Post.publish
        end

    end

    def save
      Post.add(self)
    end

    attr_accessor :title, :author, :publish_date, :content

  end

  Post.create
  all_posts = Post.all