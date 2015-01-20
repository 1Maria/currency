require 'minitest/autorun'
require 'minitest/pride'
require './currency'

class CurrencyTest < MiniTest::Test
  def test_currency_class_exists
    assert Currency
  end

  def test_created_with_amount_and_currency_code
    currency = Currency.new(3, "RUB")
    assert currency.amount == 3
    assert currency.currency_code.length == 3
  end
end