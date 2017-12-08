class App

	def initialize(b)
		@browser = b
	end

	def signup
		SignUpPage.new @browser
	end

end
