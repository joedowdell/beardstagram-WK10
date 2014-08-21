class MapsController < ApplicationController

def show
	@share = Share.find(params[:share_id])
end

end
