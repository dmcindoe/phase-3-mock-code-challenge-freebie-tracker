class Company < ActiveRecord::Base
  has_many :freebies
  has_many :devs, through: :freebies

  def give_freebie(dev, item_name, value)
    Freebie.create(item_name: item_name, value: value, company: self, dev: dev)
    #to test this out, call on the instance of the Dev class(CAPITAL "Dev")
    #example should look like - google.give_freebie(Dev.first, "Jukebox", 200)
  end

  def self.oldest_company
    Company.all.order(:founding_year).first
    #to check this one, write out the correct method... since you are looking through an entire tables records,
    #you need to include a ".all" in your method. 
    #to test, call the class name, "Company.oldest_company"
  end
end
