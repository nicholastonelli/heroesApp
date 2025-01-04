# frozen_string_literal: true

class Machines::ShowComponent < ViewComponent::Base
    def initialize(machine)
        @machine = machine
    end
end
