class AdBuilder
  def self.create_ad(vehicle)
    AdBuilder.method("create_ad_for_#{vehicle.vehicleable.class.to_s.downcase}").call(vehicle).join("\n")
  end

  def self.create_ad_for_sedan(vehicle)
    self.core_ad(vehicle, vehicle.nickname)
  end

  def self.create_ad_for_coupe(vehicle)
    self.core_ad(vehicle, vehicle.nickname)
  end

  def self.create_ad_for_minivan(vehicle)
    ["Looking for a Mini-Van? Look no further!", ""] +
    self.core_ad(vehicle,  
      "~~~ #{vehicle.nickname} ~~~\n",
    [
      "Regular Doors: #{vehicle.vehicleable.doors}",
      "Sliding Doors: #{vehicle.vehicleable.sliding_doors}"
    ])
  end

  def self.create_ad_for_motorcycle(vehicle)
    ["~~~ Motorcycle for Sale ~~~", ""] + 
    self.core_ad(
      vehicle,  
      "#{vehicle.nickname}\n", 
      ["Seat: ", vehicle.vehicleable.seat_status],
      "\n") 
  end

  def self.core_ad(vehicle, nickname, footer = [], line_seperator = '')
    [
      nickname,
      "Registration number: #{line_seperator}#{vehicle.registration}#{line_seperator}",
      "Mileage: #{line_seperator}#{vehicle.mileage_to_s}#{line_seperator}",
      "Engine: #{line_seperator}#{vehicle.engine_status}#{line_seperator}"
    ] + 
    footer +
    [""]
  end
end