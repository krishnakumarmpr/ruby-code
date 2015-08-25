class Layorreport < ActiveRecord::Base
  attr_accessible :city, :exp, :layorcode, :layorname, :rate
has_many :layorservices
has_many :mainreports
def Layorreport.default_values
	self.create(:layorcode=>101,:layorname=>'jp',:city=>'Ban',:exp=>2,:rate=>3) 
	self.create(:layorcode=>102,:layorname=>'ranjith',:city=>'erode',:exp=>5,:rate=>4) 
	end
end
