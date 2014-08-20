class ClipsController < ApplicationController

	def show
		@clip = Clip.find_by!(text: '#' + params[:id])		
	end
end
