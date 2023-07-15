require 'minitest/autorun'

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test

  def test_accept_money
    register = CashRegister.new(0)
    transaction = Transaction.new(100)
    transaction.amount_paid = 100


    previous_amount = register.total_money
    register.accept_money(transaction)
    new_amount = register.total_money

    assert_equal(previous_amount + 100, new_amount)
  end

  def test_change
    register = CashRegister.new(100)
    transaction = Transaction.new(100)
    transaction.amount_paid = 200

    assert_equal(100, register.change(transaction))
  end

  def test_give_receipit
    item_cost = 150
    register = CashRegister.new(0)
    transaction = Transaction.new(item_cost)

    assert_output("You've paid $#{item_cost}.\n") { register.give_receipt(transaction)}
  end
end
