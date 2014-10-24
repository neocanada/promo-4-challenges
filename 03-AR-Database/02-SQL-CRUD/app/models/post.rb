# You can use a global variable, DB, built as is:
require 'sqlite3'
DB = SQLite3::Database.new("../02-SQL-CRUD/db/posts.db")

class Post
  # TODO: implement some reader and/or writers
  attr_reader :id, :date, :votes
  attr_accessor :title, :url

  def initialize(options = {})
    # TODO: initialize instance variables from the hash options.
    @id = options[:id]
    @title = options[:title]
    @url = options[:url]
    @date = options[:date] || Time.now
    @votes = options[:votes] || 0
  end

  # TODO: implement all the class methods and instance methods
  #       to have a full CRUD support on your Post model
  def save
   if @id.nil?
     DB.execute("INSERT INTO posts (title, url, date, votes)
     VALUES ('#{@title}', '#{@url}', #{@date.to_i}, #{@votes});")
     @id = DB.last_insert_row_id
   else
     DB.execute("UPDATE posts
     SET title = '#{@title}', url = '#{@url}', date = #{@date.to_i}, votes = #{votes}
     WHERE id = #{@id}
     ;")
   end
 end

  def upvote
    @votes += 1
  end

  def to_s
    "#{id} - #{title} - #{url} - #{date} - #{votes}"
  end




  def self.all
    all = DB.execute("SELECT * FROM posts;")
    p all
    posts = []
    all.each do |post|
      posts << Post.new( id: post[0], title: post[1], url: post[2], date: Time.at(post[3]), votes: post[4] )
    end
    posts
  end


  def self.find(id)
    find = DB.execute("SELECT * FROM posts WHERE id = #{id};").flatten

    if find[0].nil?
      return nil
    else
      Post.new({ id: find[0], title: find[1], url: find[2], date: Time.at(find[3]), votes: find[4]})
    end
  end

  def destroy
    DB.execute("DELETE FROM posts WHERE id = #{@id};")
  end
end






