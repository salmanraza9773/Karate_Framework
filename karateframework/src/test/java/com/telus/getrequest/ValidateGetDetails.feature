Feature: To validate  response of the job details of an employee

  Background: Setup the Base Path
    Given url 'http://localhost:9191'

  Scenario: To validate the employee details in JSON Format
    Given path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get # send the get request
    Then status 200 # response status code
    And print response
    * def expectedResponse = read("GetRequest.json")
    And match response == expectedResponse
    And print '____________________End of Scenario__________________________'

  Scenario: To validate the employee details in XML Format
    Given path '/normal/webapi/all'
    And header Accept = 'application/xml'
    When method get # send the get request
    Then status 200 # response status code
    And print response
    * def expectedResponse = read("GetRequest.xml")
    And match response == expectedResponse
    And print '____________________End of Scenario__________________________'
