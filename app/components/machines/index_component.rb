# frozen_string_literal: true

class Machines::IndexComponent < ViewComponent::Base
    renders_many :machines, Machines::IndexTableRowComponent

    def initialize(machines)
        @machines = machines
    end
end
