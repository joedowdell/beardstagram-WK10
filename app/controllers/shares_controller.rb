class SharesController < ApplicationController

	def index
		@shares = Share.all
	end

	def new
		@share = Share.new
	end

	def create
		@share = Share.new(params[:share].permit(:title, :picture))
		@share.save
		redirect_to '/shares'
	end

end
