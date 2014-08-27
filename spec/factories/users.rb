FactoryGirl.define do 
	factory :user do 
		email 'email@gmail.com'
		password '12345678'
		password_confirmation '12345678'
	end
end