require 'rails_helper'

describe 'user management' do

	context 'users are not signed in' do

		xit 'users can not share pictures' do

		end

		it 'users can sign up' do
			visit '/shares'
			click_link 'Register'
			fill_in 'Email', with: 'a@a.com'
			fill_in 'Password', with: '12345678'
			fill_in 'Password confirmation', with: '12345678'
			click_button 'Sign up'
			expect(page).to have_content 'Beardstagram Welcome! You have signed up successfully'
		end

	end

	context 'users are signed in' do

	end
	
end