require 'pry'

def dictionary
  words_to_be_substituted = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "be" => "be",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_ary = Array.new
  tweet.split.map do |x|
    if dictionary.keys.include?(x.downcase)
      tweet_ary << x
    else
    tweet_ary << x
    end
  end
tweet_ary.join(" ")
end
