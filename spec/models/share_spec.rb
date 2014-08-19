require 'rails_helper'

RSpec.describe Share, :type => :model do
  
  describe '#clip_list=' do
  	let(:share) { Share.create(title: 'Example post') }

  	context 'no clips provided' do
  		it 'gives 0 clips to the post' do
  			share.clip_list = ''
  			expect(share.clips).to be_empty
  		end

  	end

  	context 'multiple tags' do

  		it 'gives 1 clip to the post' do 
  			share.clip_list = "#Beardy"
  			expect(share.clips.count).to eq 1
  		end

  		it 'adds all the tags seperately' do
  			share.clip_list = "#Beardy, #Beardo!"
  			expect(share.clips.count).to eq 2
  		end
		end
		context 'with existing clips' do 
			before {Clip.create(text: '#Beardy')}
			
			it 'reuses them' do 
				share.clip_list = "#Beardy, #dreadz"
				expect(Clip.count).to eq 2
			end
		end

		context 'with duplicate clips' do
			it 'does not duplicate clips' do
				share.clip_list = "#Beardy, #dreadz, #Beardy"
				expect(share.clips.count).to eq 2
			end

		end

end
end
