class Clip < ActiveRecord::Base
	has_and_belongs_to_many :shares

	def to_param
    text.delete('#')
  end
  
end
