#while (1 < 2)
#	puts "I love you."
#end

#all_tweets = [
#	"My first tweet"
#	"My second tweet"
#	"My third tweet"
#	"I have the world's most boring tweets"
#]

#all_tweets.each do |tweet|
#	puts tweet
#end

#total_number_of_tweets = all_tweets.size
#tweets_displayed = 0

#while (tweets_displayed <= total_number_of_tweets)
#	puts all_tweets[tweets_displayed]
#	tweets_displayed += 1
#   puts tweets_displayed
#end

num = 1
while (num <= 100)
	if (num % 3 == 0 && num % 5 == 0)
		puts "FizzBuzz"
	elsif (num % 5 == 0)
		puts "Buzz"
	elsif (num % 3 == 0)
		puts "Fizz"
	else
		puts num
	end
	num += 1
end