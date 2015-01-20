require 'minitest/autorun'
require 'minitest/pride'
require './currency'

class CurrencyTest < MiniTest::Test
  def test_currency_class_exists
    assert Currency
  end

  def test_created_with_amount
    currency = Currency.new(3)
    assert currency.amount == 3
  end

end
