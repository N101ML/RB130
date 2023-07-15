require 'minitest/autorun'

require_relative 'transaction'

class TransactionTest < Minitest::Test

  def test_prompt_for_payment
    transaction = Transaction.new(75)
    input = StringIO.new("75")
    output = StringIO.new    
    transaction.prompt_for_payment(input: input, output: output)
    assert_equal(75, transaction.amount_paid)
  end

end
