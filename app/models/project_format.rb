class ProjectFormat < ApplicationRecord
  belongs_to :project
  has_one :format
end
