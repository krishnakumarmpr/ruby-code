class Lab < ActiveRecord::Base
  # attr_accessible :title, :body
has_many :teaching_assistants, as: :ta_duty
end
