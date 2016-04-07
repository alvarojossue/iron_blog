require_relative '../app.rb'
RSpec.describe "Post" do
	let (:my_blog) {Blog.new}
	let (:post_1) {Post.new("My first post", Time.new(2016, 4, 7), "This is my first post on my awesome new blog.")}
	let (:post_2) {Post.new("My second post", Time.new(2016, 4, 8), "This is my second post.")}

	it "returns an empty array of posts" do
		expect(my_blog.posts).to eq([])
	end

	it "add posts to the array of posts" do
		expect(my_blog.add_post(post_1)).to eq([post_1])
	end

	it "returns an array of the posts in the correct chronological order" do
		my_blog.add_post(post_1)
		my_blog.add_post(post_2)
		expect(my_blog.latest_posts).to eq([post_2,post_1])
	end
end

