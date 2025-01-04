# frozen_string_literal: true

class Interfaces::IndexTableRowComponent < ViewComponent::Base
    with_collection_parameter :interface

    def initialize(interface:)
        @interface = interface
    end
end
