require './currency'

class CurrencyConverter < Currency

  attr_reader :conversion_rates, :currency, :code

  def initialize(conversion_rates)
    @conversion_rates = conversion_rates
  end
end
