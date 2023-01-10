# puts "Deleting Company/Dev/Freebie data..."
# Company.destroy_all
# Dev.destroy_all
# Freebie.destroy_all

puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
facebook = Company.create(name: "Facebook", founding_year: 2004)
dunder_mifflin = Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
mr_meseeks = Dev.create(name: "Mr. Meseeks")
gazorpazop = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."
Freebie.create([
 {item_name: "Slippers", value: 15, dev: rick, company: google},
 {item_name: "Slippers", value: 15, dev: morty, company: google},
 {item_name: "Backpack", value: 15, dev: rick, company: enron},
 {item_name: "Backpack", value: 15, dev: morty, company: enron},
 {item_name: "Backpack", value: 15, dev: mr_meseeks, company: enron},
 {item_name: "Backpack", value: 15, dev: gazorpazop, company: enron},
 {item_name: "VR Headset", value: 15, dev: gazorpazop, company: facebook},
 {item_name: "VR Headset", value: 15, dev: morty, company: facebook},
 {item_name: "Signed Orange Juice", value: 15, dev: morty, company: dunder_mifflin},
])
# Dev.first.freebies
# Dev.first
# Dev.second
# Dev.second.freebies
# Dev.second.companies
# Dev.second.companies.pluck(:name) just the names

# Company.first.devs
# Company.first
# Company.first.freebies
# Company.first.freebies for uniq
# Company.first.freebies.length
# Company.first.freebies.where(item_name: "Slippers").length

# Freebie.first
# Freebie.first.dev
# Freebie.first.company

puts "Seeding done!"
