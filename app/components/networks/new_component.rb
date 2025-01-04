# frozen_string_literal: true

class Networks::NewComponent < ViewComponent::Base
    def initialize(network)
        @network = network
    end
end
