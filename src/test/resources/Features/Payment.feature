Feature: validate the payment funtionality   

Scenario: Invalid_Login to valdate the payment funtionality   
    Given The user should be in regestation page
    When The user has to click the create Account link
    And The user has to fill the required fields
      | Nithesh | Prakash | prakashnithesh5@gmail.com | vishnu2345 | vichu0987 |
    And The user should click the signup button
    Then The user successfully registred and receive the "Sccueesfull Registred" message
