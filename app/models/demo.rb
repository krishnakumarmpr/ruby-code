class Demo < ActiveRecord::Base
  attr_accessible :name,:gender_id,:address,:dob,:doj,:place_id,:email,:mob,:src,:dest,:status,:tno,:tname,:amt,:check,:prf,:idno,:mpay,:cno,:sno,:tickno
  belongs_to :gender
  after_destroy :log_destroy_action
  belongs_to :place
  validates  :email,:mob,:dest,:src,:sno,:tno,:status,:prf,:idno,:mpay ,:tickno, :presence=> true
  validates :sno,uniqueness: true, numericality: { only_integer: true }
  validates :email, format: /@/#{ with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
validates :name, length: { maximum: 30 }
   def log_destroy_action
    puts 'Article destroyed'
  end         
end
