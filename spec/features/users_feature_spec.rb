require 'rails_helper'

describe 'user management' do

	context 'users are not signed in' do

		it 'users can not share pictures' do
			visit '/shares'
			expect(page).not_to have_link 'New share'

		end

		it 'users can sign up' do
			visit '/shares'
			click_link 'Sign Up'
			fill_in 'Email', with: 'a@a.com'
			fill_in 'Password', with: '12345678'
			fill_in 'Password confirmation', with: '12345678'
			click_button 'Sign up'
			expect(page).to have_content 'Welcome! You have signed up successfully'
		end

		it 'users can sign in' do 
			user = User.create(email: 'a@a.com', password: '12345678', password_confirmation: '12345678')
			visit '/shares'
			click_link 'Sign In'
			fill_in 'Email', with: 'a@a.com'
			fill_in 'Password', with: '12345678'
			click_button 'Sign in'
			expect(page).to have_content 'Signed in successfully.'
		end

	end

	context 'users are signed in' do

	end
	
end