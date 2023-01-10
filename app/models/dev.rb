class Dev < ActiveRecord::Base
 has_many :freebies
 has_many :companies, through: :freebies

 # - `Dev#received_one?(item_name)`
 #  - accepts an `item_name` (string) and returns true if any of the freebies
 #    associated with the dev has that `item_name`, otherwise returns false
 def received_one?(item_name)
  !self.freebies.where(item_name: item_name).empty? #clean
  self.freebies.where(item_name: item_name).length > 0 #works too
 end
 # pry(main)> Dev.first.received_one?("Slippers") 
 # [1] pry(#<Dev>)> 
 # [5] pry(#<Dev>)> self.freebies.where(item_name: item_name)
 # [5] pry(#<Dev>)> self.freebies.where(item_name: "bananas") // []empty array
 # [6] pry(#<Dev>)> self.freebies.where(item_name: item_name).length  > 0
 # => true
  # [6] pry(#<Dev>)> !self.freebies.where(item_name: "bananas").length  > 0
 # => false
 # [6] pry(#<Dev>)> self.freebies.where(item_name: "bananas").empty?
 # => false
# pry(#<Dev>)> self.freebies.where(item_name: item_name).empty?
 # => true


# - `Dev#give_away(dev, freebie)`
 #  - accepts a `Dev` instance and a `Freebie` instance, changes the freebie's dev
 #    to be the given dev; your code should only make the change if the freebie
 #    belongs to the dev who's giving it away
 def give_away(dev, freebie)
  if freebie.dev.id == self.id
   # if the id matches then give it away 
   freebie.update(dev: dev)
   # Dev.first.received_one?("Slippers") // true 
   # dev = Dev.first
   # freebies = dev.freebies.first 
   # Dev.last
   # Dev.last.freebies // check if no "Slippers"
   # last_dev = Dev.last
   # dev.give_away(last_dev, freebies) // true 
   #  Dev.last.freebies
   #  Dev.first.freebies // to check if no slippers 
  end
 end



end
