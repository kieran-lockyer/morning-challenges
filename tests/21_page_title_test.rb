require 'test/unit'
require_relative '../21_page_title'

class IncludedOnceTest < Test::Unit::TestCase
  def test_google
    assert_equal("Google", pageTitle("http://google.com"))
  end
  def test_facey
    assert_equal("Wikipedia, the free encyclopedia", pageTitle("https://en.wikipedia.org"))
  end
end
