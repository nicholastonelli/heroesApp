# frozen_string_literal: true

class Machines::MachineComponent < ViewComponent::Base
    def initialize(machine)
        @machine = machine
    end
end