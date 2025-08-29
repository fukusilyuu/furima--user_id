class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  self.abstract_class = true

  def self.ransackable_associations(auth_object = nil)
    ["item"]
  end

end
