require 'rails_helper'

describe 'clip posts' do

	before(:each) do 
			user = User.create(email: 'a@a.com', password: '12345678', password_confirmation: '12345678')
			login_as(user, scope: :user) 
	end

	it 'displays clips as links in the shares' do 

		visit '/shares'
		click_link 'New share'
		fill_in 'Title' , with: 'A brand new beard'
		fill_in 'Clips', with: '#hairy!, #stubble'
		click_button 'Create share'

		expect(page).to have_link '#hairy!'
		expect(page).to have_link '#stubble'
	end

end