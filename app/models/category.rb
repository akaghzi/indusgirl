class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: {case_sensitive: false, scope: [:parent_id]}
  before_save {|category|category.name=category.name.downcase}
end
