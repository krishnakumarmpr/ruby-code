class Gender < ActiveRecord::Base
  attr_accessible :gender_type
  has_many :users
  has_many :reservations
  has_many :demos, dependent: :destroy
def Gender.default_gender_type
gen_type=['Male','Female','Unknown']
status= false
gen_type.each do |each_type|
gen = self.new(:gender_type=>each_type)
status = gen.save
end
puts status
end
end
