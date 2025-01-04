# frozen_string_literal: true

class Interfaces::NewComponent < ViewComponent::Base
    def initialize(interface, sorted_machines)
        @interface = interface
        @sorted_machines = sorted_machines
    end
end