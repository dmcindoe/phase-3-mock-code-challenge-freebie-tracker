puts "Creating companies..."
Company.find_or_create_by(name: "Google", founding_year: 1998)
Company.find_or_create_by(name: "Facebook", founding_year: 2004)
Company.find_or_create_by(name: "Dunder Mifflin", founding_year: 2002)
Company.find_or_create_by(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.find_or_create_by(name: "Rick")
Dev.find_or_create_by(name: "Morty")
Dev.find_or_create_by(name: "Mr. Meseeks")
Dev.find_or_create_by(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: find_or_create_by freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# find_or_create_by freebies Here
Freebie.find_or_create_by(item_name: "basketball", value: 12, company_id: 1, dev_id: 2)
Freebie.find_or_create_by(item_name: "baseball", value: 15, company_id: 2, dev_id: 3)
Freebie.find_or_create_by(item_name: "trading card", value: 20, company_id: 3, dev_id: 4)
Freebie.find_or_create_by(item_name: "mac book", value: 200, company_id: 4, dev_id: 5)
puts "Seeding done!"
