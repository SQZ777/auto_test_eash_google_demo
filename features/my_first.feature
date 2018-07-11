Feature: google search
  @single
  Scenario: 身為一個使用者，我可以在google搜尋
    Given 我進入GOOGLE首頁
    When 輸入'SQZ777'
    And 按下搜尋
    Then 我可以看到 'SQZ777' 的東西

  @outline
  Scenario Outline: 身為一個使用者，我可以搜尋很多東西
    Given 我進入GOOGLE首頁
    When 輸入'<搜尋文字>'
    And 按下搜尋
    Then 我可以看到 '<搜尋文字>' 的東西
    Examples:
      | 搜尋文字     |
      | SQZ777   |
      | Facebook |
      | Google   |