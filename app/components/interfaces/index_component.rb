# frozen_string_literal: true

class Interfaces::IndexComponent < ViewComponent::Base
    renders_many :interfaces, Interfaces::IndexTableRowComponent

    def initialize(interfaces)
        @interfaces = interfaces
    end
end
