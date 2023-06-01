# Note: Feel free to leave this class as-is unless modifications are required
# for the rest of your solution, in which case change whatever you'd like.

class VehicleRegistrationService
  def self.register_vehicle(vehicle)
    raise "Vehicle model is required to complete registration!" unless vehicle.is_a?(Vehicle)

    # Pretend we're making a request to an external service :)
    sleep(3)

    SecureRandom.alphanumeric(30)
  end
end
