class Blog
	attr_reader :posts, :current_page
	def initialize
 		@posts = []
 		@current_page = 1
	end

	def add_post(single_post)
		@posts.push(single_post)
	end

	def latest_posts
		@posts.sort {|post1, post2| post2.date <=> post1.date}
	end
end