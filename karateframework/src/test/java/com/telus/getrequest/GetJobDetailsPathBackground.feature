Feature: To get the job details of an employee

  # Backround Keyword
  Background: To Setup Base Path
    Given url 'http://localhost:9191'

  Scenario: To get the employee details in JSON Format
    Given path '/normal/webapi/all'
    When method get # send the get request
    Then status 200 # response status code
    And print response
    And print '____________________End of Scenario__________________________'

  Scenario: To get the employee details in JSON Format
    Given path '/normal/webapi/all'
    When method get # send the get request
    Then status 205 # response status code
    And print response
    And print '____________________End of Scenario__________________________'
