require_relative "../views/post_view.rb"

class PostsController
  def initialize
    @view = PostView.new
  end

  def index
    # DO NOT WRITE SQL QUERIES
    # TODO: gather all posts from the database
    # TODO: give them to the view to be printed
    posts = Post.all
    @view.print_posts(posts)
  end

  def create
    # DO NOT WRITE SQL QUERIES
    # TODO: create a post
    name = @view.ask("What is the title of your post ?")
    url = @view.ask("What is the url of your post ?")
    post = Post.new(name: name, url: url)
    post.save
  end

  def update
    # DO NOT WRITE SQL QUERIES
    # TODO: update a post
    id = @view.ask("What is the id of the post you want to update ?").to_i
    post = Post.find(id)
    post.name = @view.ask("What is the new name ?")
    post.url = @view.ask("What is the new URL ?")
    post.save
  end

  def destroy
    # DO NOT WRITE SQL QUERIES
    # TODO: destroy a post
    id = @view.ask("What is the id of the post you want to delete ?").to_i
    post = Post.find(id)
    post.destroy
  end

  def upvote
    # DO NOT WRITE SQL QUERIES
    # TODO: increment the `votes` column for a post
    id = @view.ask("What is the id of the post you want to update ?").to_i
    post = Post.find(id)
    post.votes = post.votes || 0
    post.votes += 1
    post.save
  end
end