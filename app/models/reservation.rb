class Reservation < ActiveRecord::Base
  attr_accessible :age, :availseats, :status, :destination, :doj, :gender, :nooFpass, :paddress, :pname, :sourse, :tname
   belongs_to :gender
  
def display_gender
gen_type=['Male','Female','Unknown']
range= false
gen_type.each do |each_type|
gen = self.new(:gender=>each_type)
range = gen.save
end
puts range
end


def display_status
st=["A/c","First","Second","sleeper","General"]
r=false
st.each do |each_type|
ss=self.new(:status=>each_type)
r=ss.save
end
puts r
end





def display_source
s_type=["Salem","Bangalore","Tuticorin","Erode","Mysore","Trichy","Coimbatore","ChennaiEgmore","Trissur","Kottayam","Alapuzha","Kanniyakumari","Namakkal","cochin","Palagatt","Madurai","Karur","Trivendram","Mangalore","Khazarcode","Tirupati","Mumbai"]
s=false
s_type.each do |each_type|
se=self.new(:source=>each_type)
s=se.save
end
puts s
end
def display_destination
s_type=["Salem","Bangalore","Tuticorin","Erode","Mysore","Trichy","Coimbatore","ChennaiEgmore","Trissur","Kottayam","Alapuzha","Kanniyakumari","Namakkal","cochin","Palagatt","Madurai","Karur","Trivendram","Mangalore","Khazarcode","Tirupati","Mumbai"]
d=false
d_type.each do |each_type|
se=self.new(:destination=>each_type)
d=dn.save
end
puts d
end
def display_tname
t_type=["YercaudExpress","BangaloreNagarcoilExpress","BrindavanExpress","cheranExpress","MysorebangaloreExp","Malaikottaiexp","CoimbatoreNagarcoilExp","ChennaiEgmoreExp","TataAlaphi","VeegalandExp","AlapuzhaExp","KanniyakumariEgmoreexp","Maduraikottayam","Guruvayurexp","PalagattExp","MeenakshiExp","Kaversuperpast","Trivendramsuperfast","MangaloreExp","sataptiExp","TirupatikanniyakumariExp","MumbaiCst","NellaiExp"]
t=false
t_type.each do |each_type|
tn=self.new(:tname=>each_type)
t=tn.save
end
puts t
end
end

