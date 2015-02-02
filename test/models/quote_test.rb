require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  test 'unique_tag' do
    quote = Quote.create( author: 'Bob Stein', saying: 'I love science.')
    puts quote.inspect

    expected = 'BS#' + quote.id.to_s
    actual = quote.unique_tag

    assert_equal expected, actual
  end

end
