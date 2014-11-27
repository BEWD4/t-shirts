class Tshirt < ActiveRecord::Base
  def self.search(search)
    self.where(  "name LIKE ?", "%#{search}%" ).first
  end
end
