# frozen_string_literal: true

class Queries::NewComponent < ViewComponent::Base
    def initialize(query)
        @query = query
    end
end
