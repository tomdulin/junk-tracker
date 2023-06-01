require "rails_helper"

describe "AdBuilder" do
  describe "#create_ad" do
    let(:vehicle) { FactoryBot.create(:vehicle, :for_coupe)  }

    it "includes Vehicle's nickname" do
      expect(AdBuilder.create_ad(vehicle)).to include(vehicle.nickname)
    end

    # The following specs are expected to fail. Please make them pass and 
    # add any more that are relevant.
    #
    # (Feel free to modify any source or test code, as long as the desired 
    # functionality captured by these specs are maintained.)

    describe "when vehicle is a Sedan" do
      let(:vehicle) { FactoryBot.create(:vehicle, :for_sedan)  }
      it "looks like this" do
        expect(AdBuilder.create_ad(vehicle)).to eql(<<~AD)
          #{vehicle.nickname}
          Registration number: #{vehicle.registration}
          Mileage: #{vehicle.mileage_to_s}
          Engine: #{vehicle.engine_status}
        AD
      end
    end

    describe "when vehicle is a Coupe" do
      let(:vehicle) { FactoryBot.create(:vehicle, :for_coupe)  }
      it "looks like this" do
        expect(AdBuilder.create_ad(vehicle)).to eql(<<~AD)
          #{vehicle.nickname}
          Registration number: #{vehicle.registration}
          Mileage: #{vehicle.mileage_to_s}
          Engine: #{vehicle.engine_status}
        AD
      end
    end

    describe "when vehicle is a Mini-Van" do
      let(:vehicle) { FactoryBot.create(:vehicle, :for_mini_van)  }
      it "looks like this" do
        expect(AdBuilder.create_ad(vehicle)).to eql(<<~AD)
          Looking for a Mini-Van? Look no further!

          ~~~ #{vehicle.nickname} ~~~

          Registration number: #{vehicle.registration}
          Mileage: #{vehicle.mileage_to_s}
          Engine: #{vehicle.engine_status}
          Regular Doors: #{vehicle.vehicleable.doors}
          Sliding Doors: #{vehicle.vehicleable.sliding_doors}
        AD
      end
    end

    describe "when vehicle is a Motorcycle" do
      let(:vehicle) { FactoryBot.create(:vehicle, :for_motorcycle)  }
      it "looks like this" do
        expect(AdBuilder.create_ad(vehicle)).to eql(<<~AD)
          ~~~ Motorcycle for Sale ~~~

          #{vehicle.nickname}

          Registration number: 
          #{vehicle.registration}

          Mileage: 
          #{vehicle.mileage_to_s}

          Engine: 
          #{vehicle.engine_status}

          Seat: 
          #{vehicle.vehicleable.seat_status}
        AD
      end
    end

  end
end