require 'pry'

def dictionary
  words_to_be_substituted = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
    "four" => "4",
    "for" => "4"

  }
end

def word_substituter(tweet)
  tweet_ary = Array.new
  tweet.split.map do |x|
    if dictionary.keys.include?(x.downcase)
      tweet_ary << dictionary[x.downcase]
    else
    tweet_ary << x
    end
  end
tweet_ary.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |x|
    puts word_substituter(x)
  end
end
