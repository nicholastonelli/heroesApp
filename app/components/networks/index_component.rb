# frozen_string_literal: true

class Networks::IndexComponent < ViewComponent::Base
    renders_many :networks, Networks::IndexTableRowComponent

    def initialize(networks)
        @networks = networks
    end
end
