require_relative('lib/post.rb')
require_relative('lib/sponsored_post.rb')
require_relative('lib/blog.rb')
require "sinatra"

my_blog = Blog.new
my_blog.add_post Post.new("My first post", Time.new(2016, 4, 5), "This is my first post on my awesome new blog.", "General", "Alvaro Castillo")
my_blog.add_post Post.new("My second post", Time.new(2016, 4, 6), "This is my second post... and it's awesome", "General", "Sarah Abogabir")

get "/" do
	@posts = my_blog.latest_posts
	erb :home
end

get "/post_details/:index" do
	@the_id = params[:index].to_i
	@the_post = my_blog.latest_posts[@the_id]
	erb :post_details
end

get "/new_post" do
	erb :create_post_page
end

post "/create_post" do
	new_title = params[:title]
	new_content = params[:content]
	new_category = params[:category]
	new_author = params[:author]
	my_blog.add_post Post.new(new_title, Time.now, new_content, new_category, new_author)
redirect to("/")
end
