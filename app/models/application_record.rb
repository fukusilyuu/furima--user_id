class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
<<<<<<< Updated upstream
=======
  has_many :items
  def self.ransackable_attributes(auth_object = nil)
    ["item"]
  end
>>>>>>> Stashed changes
end
