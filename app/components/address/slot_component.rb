# frozen_string_literal: true

#<!-- Example slots line-->
#<% data = @address%>
#<%= render(Address::SlotComponent.new(data: data)) %>


class Address::SlotComponent < ViewComponent::Base
  renders_one :icon
  renders_one :label

  def initialize(data:, **attrs)
    @data = data
    @attrs = attrs
  end
end
