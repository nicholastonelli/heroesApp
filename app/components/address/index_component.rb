# frozen_string_literal: true

class Address::IndexComponent < ViewComponent::Base
  renders_many :addresses, Address::IndexTableRowComponent

  def initialize(addresses)
    @addresses = addresses
  end

end
