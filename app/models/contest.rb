class Contest < ActiveRecord::Base
  validates_presence_of :contest_code
end
