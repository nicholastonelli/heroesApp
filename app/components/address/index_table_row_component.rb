# frozen_string_literal: true

class Address::IndexTableRowComponent < ViewComponent::Base
  with_collection_parameter :address

  def initialize(address:)
    @address = address
  end

end
