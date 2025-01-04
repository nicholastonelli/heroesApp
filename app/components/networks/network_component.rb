# frozen_string_literal: true

class Networks::NetworkComponent < ViewComponent::Base
    def initialize(network)
        @network = network
    end
end
