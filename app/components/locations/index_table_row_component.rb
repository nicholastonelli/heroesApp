# frozen_string_literal: true

class Locations::IndexTableRowComponent < ViewComponent::Base
    with_collection_parameter :location

    def initialize(location:)
        @location = location
    end
end
