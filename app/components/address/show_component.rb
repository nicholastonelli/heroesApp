# frozen_string_literal: true

class Address::ShowComponent < ViewComponent::Base
  renders_one :header
  #renders_many :phrases

  def initialize(address)
    @address = address
  end

end

