# Note: Feel free to leave this class as-is unless modifications are required
# for the rest of your solution, in which case change whatever you'd like.

class VehiclePromotionService
  def self.create_ad(ad_text)
    raise "ad_text must be a String!" unless ad_text.is_a?(String)

    # Pretend we're making a request to an external service :)
    sleep(3)

    SecureRandom.alphanumeric(30)
  end

  def self.update_ad(ad_id, ad_text)
    raise "ad_id must be 30 characters long!" unless ad_id.is_a?(String) && ad_id.length == 30
    raise "ad_text must be a String!" unless ad_text.is_a?(String)

    # Pretend we're making a request to an external service :)
    sleep(3)

    ad_id
  end
end