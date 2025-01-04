# frozen_string_literal: true

class Address::NewComponent < ViewComponent::Base
  def initialize(address)
    @address = address
  end

end
