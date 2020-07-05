class MapsController < ApplicationController
  def create
  	data = params[:detail]
  	if data.present?
  		@map = Map.new(details: eval(data))
  		if @map.valid?
  			@map.save
  		end
  	end
  	@maps = Map.all
  end
end
