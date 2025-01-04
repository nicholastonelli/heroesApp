# frozen_string_literal: true

class Queries::QueryComponent < ViewComponent::Base
    def initialize(query)
        @query = query
    end
end
