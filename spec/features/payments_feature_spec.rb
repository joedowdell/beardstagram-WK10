require 'rails_helper'

describe 'payments' do 

	context 'when a share is being created' do 

		before (:each) do 
			joe = create(:user)
			login_as joe
		end

		it 'a user can add a price' do 
			visit '/shares'
			click_link 'New Share'
			fill_in 'Title', with: 'Baby Beard'
			fill_in	'Sale Price', with: 9.99
			attach_file 'Picture', Rails.root.join('spec/images/baby_beard.jpeg')
			click_button 'Create share'
			expect(page).to have_content '£9.99'
		end

		it 'a user can make a payment' do 
			a_post = create(:share)
			visit '/shares'
			expect(page).to have_content ('Pay with Card')
		end
	end
end