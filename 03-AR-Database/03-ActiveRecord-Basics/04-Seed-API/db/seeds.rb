require "json"
require "rest-client"

# TODO: Write a seed to insert 100 posts in the database fetched from the Hacker News API.

url = "https://hacker-news.firebaseio.com/v0/topstories.json"
ids = JSON.parse(RestClient.get url)

ids[0..9].each do |id|
  # details = "https://hacker-news.firebaseio.com/v0/item/#{id}.json"
  json = JSON.parse(RestClient.get "https://hacker-news.firebaseio.com/v0/item/#{id}.json")
  post = Post.new(name: json['title'], url: json['url'], votes: json['score'])
  post.save
end