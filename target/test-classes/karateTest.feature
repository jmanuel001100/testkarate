Feature: plan de pruebas

  Scenario: caso de pruebas tipo GET
  Given url 'https://reqres.in/api/users/2'
    When method GET
    And match response.data.first_name == 'alex'
    Then status 200


  Scenario: caso de pruebas tipo POST
    Given url 'https://reqres.in/api/users'
    When request {"name": "morpheus",  "job": "leader"  }
    And method POST
    Then status 201