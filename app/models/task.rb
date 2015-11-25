require_relative '../../config/application'

class Task < ActiveRecord::Base

  validates :taskname, presence: true

end