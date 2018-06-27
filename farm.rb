require_relative "field"

class Farm

  def initialize

  end


  def options
    while true
      print_options
      user_selected = gets.chomp
      user_option(user_selected)
    end
  end

  def print_options
    puts "Options:"
    puts "field -> adds a new field"
    puts "harvest -> harvests crops and adds to total harvested"
    puts "status -> displays some information about the farm"
    puts "relax -> provides lovely descriptions of your fields"
    puts "exit -> exits the program"
    puts "Type the option: "
  end

  def user_option(user_selected)
    case user_selected
    when "field" then add_new_field
    when "harvest" then crop_and_add
    when "status" then info_about_farm
    when "relax" then description_field
    when "exit" then exit
    end
  end

  def add_new_field
    puts "What kind of field is it: corn or wheat?"
    type = gets.chomp
    puts "How large is the field in hectares?"
    area = gets.chomp
    Field.create(type, area)
    puts "Added a #{type} field of #{area} hectares!"
  end

  def crop_and_add
    return Field.harvest
  end

  def info_about_farm
    return Field.info
  end

  def description_field
    return Field.description
  end


  # def description_field

end

farm = Farm.new
farm.options
