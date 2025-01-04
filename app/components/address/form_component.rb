# frozen_string_literal: true

class Address::FormComponent < ViewComponent::Base
  def initialize(address)
    @address = address
  end

end
