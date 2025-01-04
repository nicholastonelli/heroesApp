# frozen_string_literal: true

class Templates::TemplateComponent < ViewComponent::Base
    def initialize(template)
        @template = template
    end
end
