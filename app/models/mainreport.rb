class Mainreport < ActiveRecord::Base
  attr_accessible :city, :servicename,:layorservice_id,:layorreport_id
belongs_to :layorservice
belongs_to :layorreport
end
