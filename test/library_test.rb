require './test/test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/library'
require './lib/author'
require './lib/book'

class LibraryTest < Minitest::Test

  def test_it_exists
    dpl = Library.new
    assert_instance_of Library, dpl
  end

  def test_library_has_no_book_at_first
    dpl = Library.new
    assert_equal [], dpl.books
  end

  def test_can_add_book_to_collection
    dpl = Library.new
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    dpl.add_to_collection(jane_eyre)

    assert_equal 1, dpl.books.length
    assert_equal "Charlotte", charlotte_bronte.first_name
    assert_equal "Jane Eyre", jane_eyre.title
  end

  def can_add_different_book_to_collection
    
    dpl.add_to_collection(mockingbird)
    dpl.add_to_collection(villette)
    dpl.books
  end

end
