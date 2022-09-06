Feature: To create end to end scenario for all the 5 http methods

  Background: To set the base path
    Given url 'http://localhost:9191'

  Scenario: End to end scenario
    # Post Method - To create id
    Given path '/normal/webapi/add'
    * def postRequestData = read("PostRequest.json")
    And request postRequestData
    And headers {Content-Type:'application/json', Accept:'application/json'}
    When method post
    Then status 201
    And print response
    And print '----------------------------------------------------------------------'
    # print the job details
    Given path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get # send the get request
    Then status 200 # response status code
    And print response
    And print '----------------------------------------------------------------------'
    # Update the all values using job id
    Given path '/normal/webapi/update'
    * def putRequestData = read("PutRequest.json")
    And request putRequestData
    And headers {Content-Type:'application/json', Accept:'application/json'}
    When method put
    Then status 200
    And print response
    And print '----------------------------------------------------------------------'
    # print the updated job details
    Given path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get # send the get request
    Then status 200 # response status code
    And print response
    And print '----------------------------------------------------------------------'
    # Partial update
    Given path '/normal/webapi/update/details'
    And params {id:'10',jobTitle:'Mechanical Engg',jobDescription:'To develop software'}
    And header Accept = 'application/json'
    When method patch
    Then status 200
    And print response
    And print '----------------------------------------------------------------------'
    # print the updated job details
    Given path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get # send the get request
    Then status 200 # response status code
    And print response
    And print '----------------------------------------------------------------------'
    # Delete the job id
    Given path '/normal/webapi/remove/10'
    When method delete
    Then status 200
    And print response
    And print '----------------------------------------------------------------------'
    # check status after deleting job id - 404 error
    Given path '/normal/webapi/remove/10'
    When method delete
    Then status 404
    And print response
    And print '----------------------------------------------------------------------'
    # print the updated job details
    Given path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get # send the get request
    Then status 200 # response status code
    And print response
    And print '----------------------------------------------------------------------'
