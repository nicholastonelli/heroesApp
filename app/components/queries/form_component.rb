# frozen_string_literal: true

class Queries::FormComponent < ViewComponent::Base
    def initialize(query)
        @query = query
    end
end
