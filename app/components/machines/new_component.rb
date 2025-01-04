# frozen_string_literal: true

class Machines::NewComponent < ViewComponent::Base
    def initialize(machine, sorted_locations, sorted_interfaces)
        @machine = machine
        @sorted_locations = sorted_locations
        @sorted_interfaces = sorted_interfaces
    end
end
