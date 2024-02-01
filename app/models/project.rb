class Project < ApplicationRecord
  has_prefix_id :proj

  belongs_to :user
end
