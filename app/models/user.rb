class User < ActiveRecord::Base
  attr_accessible :address, :dob, :name,:gender_id
  belongs_to :gender
validates :address, presence: true
validates :name, presence: true
end
