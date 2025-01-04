# frozen_string_literal: true

class Notifications::FormErrorComponent < ViewComponent::Base
    def initialize(errors)
        @errors = errors
    end
end
