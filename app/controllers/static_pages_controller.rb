class StaticPagesController < ApplicationController
	def home
	end

	def search
  	@params = params
  	ret = Faraday.get "http://127.0.0.1:5000/"
  	# , {params}
  	puts ret.body => {
  		html: "..."
  	}
	end

end
