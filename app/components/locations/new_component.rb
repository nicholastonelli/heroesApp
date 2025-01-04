# frozen_string_literal: true

class Locations::NewComponent < ViewComponent::Base
    def initialize(location, sorted_machines)
        @location = location
        @sorted_machines = sorted_machines
    end
end