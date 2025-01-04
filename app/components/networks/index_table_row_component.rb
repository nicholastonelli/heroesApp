# frozen_string_literal: true

class Networks::IndexTableRowComponent < ViewComponent::Base
    with_collection_parameter :network

    def initialize(network:)
        @network = network
    end
end
