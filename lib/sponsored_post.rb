class SponsoredPost < Post
	def display
		puts "****** Sponsored Post *******"
		super
		puts "****** Sponsored Post *******"
	end
end