class HomeController < ApplicationController
  def index

	 	@auth = {username: '', password: ''}
		options = { :digest_auth => @auth }	
  	@response = HTTParty.get('', options)




  end
	def device
		@name = params[:device_name]
		@auth = {username: '', password: ''}
		options = { :digest_auth => @auth }	
		@url = "#{params[:device_url]}"
	  @response = HTTParty.get(@url, options)
		@device =  JSON.parse(@response.body) 
		

	  respond_to do |format|
	    	format.js
        format.html
    end




	end


end
