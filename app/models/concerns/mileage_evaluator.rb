module MileageEvaluator
  extend ActiveSupport::Concern
  require 'active_support/all'

  included do
    def mileage_to_s
      "#{evaluate_mileage} (#{self.mileage.to_s(:delimited)})"
    end

    def evaluate_mileage
      case self.mileage
      when 0..20000
        'Low'
      when 20001..70000
        'Medium'
      else
        'High'
      end
    end
  end
end