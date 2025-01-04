# frozen_string_literal: true

class Locations::LocationComponent < ViewComponent::Base
    def initialize(location)
        @location = location
    end
end
