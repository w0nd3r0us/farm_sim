class Field
  @@fields = []
  @@total_harvested = 0

  def initialize(type, area)
    @type = type
    @area = area
  end

  def type
    @type
  end

  def area
    @area
  end

  def self.create(type, area)
    new_field = Field.new(type, area)
    @@fields << new_field
  end


  def self.harvest
    @@fields.each do |field|
      total_food = field.area.to_i * 200
      puts "Harvesting #{total_food} from #{field.area} hectare #{field.type} field."
      @@total_harvested += total_food
    end
    puts "The farm has #{@@total_harvested} food so far."
  end

  def self.info
    @@fields.each do |field|
      puts "#{field.type.capitalize} field is #{field.area} hectares."
    end
    puts "The farm has #{@@total_harvested} food so far."
  end

  def self.description
    @@fields.each do |field|
      total_corn_area = 0
      total_wheat_area = 0
      if field.type == "corn"
        total_corn_area += field.area.to_i
      elsif field.type == "wheat"
        total_wheat_area += field.area.to_i
      end
      puts "#{total_corn_area} hectares of tall green stalks rustling in the breeze fill your horizon."
      puts "The sun hangs low, casting an orange glow on a sea of #{total_wheat_area} hectares of wheat."
    end
  end


end
