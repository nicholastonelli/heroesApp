# frozen_string_literal: true

class Networks::EditComponent < ViewComponent::Base
    def initialize(network)
        @network = network
    end
end
