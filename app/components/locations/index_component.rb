# frozen_string_literal: true

class Locations::IndexComponent < ViewComponent::Base
    renders_many :locations, Locations::IndexTableRowComponent

    def initialize(locations, sorted_machines)
        @locations = locations
        @sorted_machines = sorted_machines
    end
end
