class Lservice < ActiveRecord::Base
  attr_accessible :charge, :servicecode, :servicename,:lreport_id
belongs_to :lreport
#validates  :servicecode,:servicename, :presence=>true
validates :servicecode,:uniqueness=>true
end
