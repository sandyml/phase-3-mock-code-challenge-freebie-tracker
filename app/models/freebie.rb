class Freebie < ActiveRecord::Base
 belongs_to :dev
 belongs_to :company

 # Freebie.first.print_details
 def print_details
  "#{self.dev.name} owns a #{self.item_name} from #{self.company.name} " 
 end

end
