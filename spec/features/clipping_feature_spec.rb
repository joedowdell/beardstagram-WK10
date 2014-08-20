require 'rails_helper'

describe 'clip posts' do

	before(:each) do 
			user = User.create(email: 'a@a.com', password: '12345678', password_confirmation: '12345678')
			login_as(user, scope: :user) 
	end

	it 'displays clips as links in the shares' do 

		visit '/shares'
		click_link 'New Share'
		fill_in 'Title' , with: 'A brand new beard'
		fill_in 'Clips', with: '#hairy!, #stubble'
		click_button 'Create share'

		expect(page).to have_link '#hairy!'
		expect(page).to have_link '#stubble'
	end


end

describe 'filtering by clips' do

	before do
		Share.create(title: 'Share A', clip_list: '#beardo, #dreadz')
		Share.create(title: 'Share B', clip_list: '#beardy, #dreadz')
	end

	it 'filters to only show clipped posts' do 
		visit '/shares'
		click_link '#beardo'
		expect(page).to have_css 'h2', text: 'Shares clipped with #beardo'
		expect(page).to have_content 'Share A'
		expect(page).not_to have_content 'Share B'
	end

	it 'accessible via pretty URLs' do
    visit '/clips/beardo' 

    expect(page).to have_content 'Share A'
  end 

end

