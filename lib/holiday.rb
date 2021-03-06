require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)

holiday_supplies[:winter][:christmas] << "#{supply}"

holiday_supplies[:winter][:new_years] << "#{supply}"

end


def add_supply_to_memorial_day(holiday_hash, supply)
holiday_supplies[:spring][:memorial_day] << "#{supply}"

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

  holiday_hash[season][holiday_name] = supply_array

holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)

new_array = []
  
new_array <<(holiday_supplies[:winter][:christmas])

new_array <<(holiday_supplies[:winter][:new_years])

new_array.flatten

end

# holiday_supplies = {
#   :winter => {
#     :christmas => ["Lights", "Wreath"],
#     :new_years => ["Party Hats"]
#   },
#   :summer => {
#     :fourth_of_july => ["Fireworks", "BBQ"]
#   },
#   :fall => {
#     :thanksgiving => ["Turkey"]
#   },
#   :spring => {
#     :memorial_day => ["BBQ"]
#   }
# }

def all_supplies_in_holidays(holiday_hash)

  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize}:"
      
    holidays.each do |holiday, supplies|
      # binding.pry
      puts "  #{holiday.to_s.split("_").collect {|word| word.capitalize}.join(' ')}: #{supplies.join(", ")}"
    end
  end

end 

  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  
barbeque_array = []

  holiday_hash.each do |season, holidays|
  
    holidays.each do |holiday, supplies|
      if supplies.include?("BBQ")
        barbeque_array << holiday

    end
  end
end

barbeque_array.flatten
end





