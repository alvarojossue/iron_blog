require_relative '../app.rb'

RSpec.describe "Post" do
	let (:post_1) {Post.new("My first post", Time.new(2016, 4, 7), "This is my first post on my awesome new blog.")}
	let (:post_2) {Post.new("My second post", Time.new(2016, 4, 8), "This is my second post.")}
	let (:my_blog) {Blog.new(post)}

	it "#title returns title" do
		expect( post_1.title).to eq("My first post")
		expect( post_2.title).to eq("My second post")
	end

	it "#date returns date" do
		expect( post_1.date).to eq(Time.new(2016, 4, 7))
		expect( post_2.date).to eq(Time.new(2016, 4, 8))
	end

	it "#text returns text" do
		expect( post_1.text).to eq("This is my first post on my awesome new blog.")
		expect( post_2.text).to eq("This is my second post.")
	end
end