class StaticPagesController < ApplicationController

	def home
		if signed_in?
			@greeting = "Welcome"
		end
	end

	def help
	end

	def about
	end

	def contact
	end
	
end