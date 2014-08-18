require 'rails_helper'

describe 'shares' do 
	
	context 'no shares' do

		it 'shows a message' do
			visit '/shares'
			expect(page).to have_content 'No shares'
		end
		
	end

end