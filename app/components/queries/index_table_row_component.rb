# frozen_string_literal: true

class Queries::IndexTableRowComponent < ViewComponent::Base
    with_collection_parameter :query

    def initialize(query:)
        @query = query
    end
end
