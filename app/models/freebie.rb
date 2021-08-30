class Freebie < ActiveRecord::Base
  belongs_to :dev
  belongs_to :company

  def print_details
    "#{dev.name} owns a #{item_name} from #{company.name}"
    #to test this, set the variable name to the instance of the record
    #baseball=Freebie.find_by(item_name: "baseball")
    #the above code, saves it to your terminal, which you can then use to call:
    #baseball.print_details... then this should work. 
  end
end
