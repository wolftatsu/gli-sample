require_relative './test_helper'
require_relative '../lib/filecnv'

class DefaultTest < Test::Unit::TestCase

  def setup
    @o = Converter.new("hoge.txt")
  end

  def teardown
  end

  def test_init
    assert_equal "hoge.txt", @o.path
  end

  def test_cnv
    src = "create database `accent`;"
    assert_equal "create database `ACCENT`;", @o.cnv(src)
    
    src = "database `ans_detail`"
    assert_equal "database `ANS_DETAIL`", @o.cnv(src)
    
    src = "FILE_ID varchar2(2)"
    assert_equal "FILE_ID varchar2(2)", @o.cnv(src)
    
    src = "\n"
    assert_equal "\n", @o.cnv(src)
    
    src = "database `ans_detail` `and_detail`"
    assert_equal "database `ANS_DETAIL` `AND_DETAIL`", @o.cnv(src)

    src = "database ` `ans_detail` `and_detail` `"
    assert_equal "database ` `ANS_DETAIL` `AND_DETAIL` `", @o.cnv(src)
  end  
end

