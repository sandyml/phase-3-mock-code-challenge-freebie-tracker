class Company < ActiveRecord::Base
 has_many :freebies
 has_many :devs, through: :freebies

 # takes a `dev` (an instance of the `Dev` class), an `item_name` (string), and a `value`
 # as arguments, and creates a new `Freebie` instance associated with this
 # company and the given dev
 def give_freebie(dev, item_name, value)
  self.freebies.create(dev: dev, item_name: item_name, value: value)
 end

# company = Company.second console
#<Company:0x00007fac2f2e06e8 id: 2, name: "Facebook", founding_year: 2004> make sure (natches inside with string and value)
# company.give_freebie(Dev.last) console
# company.give_freebie(Dev.last, "Book with a face on it", 4) console
# Freebie.last console
# Freebie.last.dev console
# Freebie.last.company console
# Company.oldest_company

 # `Company.oldest_company`
 # returns the `Company` instance(class) with the earliest founding year
 def self.oldest_company 
  self.order(founding_year: :asc)[0]
  # self.order(founding_year: :asc).first
  # self.order(founding_year: :asc).limit(1)
 end

end
