Feature: To get the job details of an employee

  Background: To Setup Base Path
    Given url 'http://localhost:9191/normal/webapi/all'

  Scenario: To get the employee details in JSON Format
    When method get # send the get request
    Then status 200 # response status code
    And print response
    And print '____________________End of Scenario__________________________'

  Scenario: To get the employee details in JSON Format
    When method get # send the get request
    Then status 205 # response status code
    And print response
    And print '____________________End of Scenario__________________________'
