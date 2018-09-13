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
  tweet_ary = tweet.split(", ")
  tweet_ary.each do |x|
    if tweet_ary.include?(dictionary)
      tweet_ary.gsub(x, dictionary)
