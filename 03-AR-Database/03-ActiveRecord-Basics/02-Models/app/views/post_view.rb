class PostView
  # TODO: implement some methods here when controller needs to `puts` or `gets`
  def print_posts(posts)
    posts.each do |post|
      puts "#{post.id} - #{post.name} - #{post.url} - #{post.votes}"
    end
  end

  def ask(question)
    puts question
    gets.chomp
  end
end