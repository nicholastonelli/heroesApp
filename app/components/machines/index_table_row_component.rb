# frozen_string_literal: true

class Machines::IndexTableRowComponent < ViewComponent::Base
    with_collection_parameter :machine

    def initialize(machine:)
        @machine = machine
    end
end
