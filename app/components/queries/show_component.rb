# frozen_string_literal: true

class Queries::ShowComponent < ViewComponent::Base
    def initialize(query)
        @query = query
    end
end
