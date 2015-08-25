class Place < ActiveRecord::Base
  attr_accessible :dest, :src
   has_many :demos
def Place.default_src
s_type=["Salem","Bangalore","Tuticorin","Erode","Mysore","Trichy","Coimbatore","ChennaiEgmore","Trissur","Kottayam","Alapuzha","Kanniyakumari","Namakkal","cochin","Palagatt","Madurai","Karur","Trivendram","Mangalore","Khazarcode","Tirupati","Mumbai"]
s_type.each do |each_type|
se=self.new(:src=>each_type)
s=se.save
end
puts s
end
def Place.default_dest
s_type=["Salem","Bangalore","Tuticorin","Erode","Mysore","Trichy","Coimbatore","ChennaiEgmore","Trissur","Kottayam","Alapuzha","Kanniyakumari","Namakkal","cochin","Palagatt","Madurai","Karur","Trivendram","Mangalore","Khazarcode","Tirupati","Mumbai"]
d_type.each do |each_type|
se=self.new(:dest=>each_type)
d=dn.save
end
puts d
end
end

