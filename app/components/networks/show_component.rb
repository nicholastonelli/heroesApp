# frozen_string_literal: true

class Networks::ShowComponent < ViewComponent::Base
    def initialize(network)
        @network = network
    end
end
