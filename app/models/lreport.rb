class Lreport < ActiveRecord::Base
  attr_accessible :city, :exp, :layorcode, :layorname, :rate
has_many :lservices
end
