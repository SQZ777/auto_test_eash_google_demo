module GoogleElement
  def search_text
    '//input[@id="lst-ib"]'
  end

  def search_btn
    '//input[@value="Google 搜尋"]'
  end

  def search_first_result
    '(//div[@class="rc"]/h3/a)[1]'
  end

  def abc
    "abc"
  end
end
