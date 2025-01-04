# frozen_string_literal: true

class Networks::FormComponent < ViewComponent::Base
    def initialize(network)
        @network = network
    end
end
