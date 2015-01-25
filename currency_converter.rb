require './currency'

class CurrencyConverter < Currency

  attr_reader :conversion_rates, :currency, :code

  def initialize(conversion_rates)
    @conversion_rates = conversion_rates
  end

  def convert(currency, code)
    if conversion_rates.include?(currency.currency_code) &&
        conversion_rates.include?(code)
      changed_cash = (currency.amount /
        conversion_rates[currency.currency_code]) *
        (conversion_rates[code])
      Currency.new(changed_cash, code)
    end
  end
end
