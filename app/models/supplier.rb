class Supplier < ApplicationRecord
  validates :name, :contact_name, :phone, :city, presence: true
  before_save {|supplier|supplier.name=supplier.name.downcase}
  before_save {|supplier|supplier.contact_name=supplier.contact_name.downcase}
  before_save {|supplier|supplier.city=supplier.city.downcase}
end
