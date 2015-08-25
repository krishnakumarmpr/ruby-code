class Layorservice < ActiveRecord::Base
  attr_accessible :charge, :servicecode, :servicename,:layorcode
  belongs_to :layorreport
has_many :mainreports
  def Layorservice.default_values
  	self.create(:layorcode=>101,:servicecode=>1001,:servicename=>'divorce',:charge=>'1000')
  end
end
