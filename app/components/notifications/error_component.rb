# frozen_string_literal: true

class Notifications::ErrorComponent < ViewComponent::Base
    def initialize(component)
        @component = component
    end
end
