class StaticPagesController < ApplicationController
	def home
	end

	def search
  	@params = params
  	puts params[:key]
		params[:restaurants] = params[:concern].include? 'Restaurants'
		params[:gym] = params[:concern].include? 'Gym'
		params[:laundromat] = params[:concern].include? 'Laundromat'
		params[:pet] = params[:concern].include? 'Pet'
		params[:healthcare] = params[:concern].include? 'Healthcare'
		params[:school] = params[:concern].include? 'School'

		puts params
  	conn = Faraday.new(:url => 'http://127.0.0.1:5000')
  	# ret = conn.get "/"
  	# ret = conn.post "/test_post", {:key => params[:key]}
  	
  	msg = "/?company_address=#{params[:address].to_param}&commute_time_limit=#{params[:commute_time]}&means_of_transport=#{params[:transportation]}&safety_concern=#{params[:safety]}&restaurants=#{params[:restaurants]}&gyms=#{params[:gym]}&laundromat=#{params[:laundromat]}&pet=#{params[:pet]}&healthcare=#{params[:healthcare]}&school=#{params[:school]}"

  	puts msg
  	ret = conn.post msg

  	@map = JSON.parse(ret.body)
  	@page = @map["map_page"].html_safe
  	puts @page


	end

end
