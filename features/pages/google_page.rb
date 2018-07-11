class Google
  include GoogleElement

  def go
    navigate_to("https://www.google.com")
  end

  def enter_txt(content)
    enter_text(:xpath, content, search_text)
  end

  def click_search
    sleep 1
    click(:xpath, search_btn)
  end

  def see(content)
    actual_text = get_element_text(:xpath, search_first_result)
    unless actual_text.downcase.include?(content.downcase)
      raise "#{content} your actual text unexpected, your actual text is #{actual_text}"
    end
    abc
  end
end
