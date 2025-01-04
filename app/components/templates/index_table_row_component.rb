# frozen_string_literal: true

class Templates::IndexTableRowComponent < ViewComponent::Base
    with_collection_parameter :template

    def initialize(template:)
        @template = template
    end
end
