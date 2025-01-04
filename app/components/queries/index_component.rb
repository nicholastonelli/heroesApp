# frozen_string_literal: true

class Queries::IndexComponent < ViewComponent::Base
    def initialize(queries)
        @queries = queries
    end
end
