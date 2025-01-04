# frozen_string_literal: true

class Locations::ShowComponent < ViewComponent::Base
    def initialize(location)
        @location = location
    end
end
