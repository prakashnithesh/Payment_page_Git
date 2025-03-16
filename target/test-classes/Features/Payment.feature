Feature:  Payment Page Functionality

  Scenario: User selects a payment method
    Given The user is on the payment page
    When The user selects "Credit Card" as the payment option
    Then The credit card details form should be displayed

  Scenario: User enters payment details
    Given The user has selected "Credit Card" as the payment option
    When The user enters valid card details
    And The user clicks on the "Continue" button
    Then The payment method should be saved successfully

  Scenario: User chooses Cash on Delivery (COD)
    Given The user is on the payment page
    When The user selects "Cash on Delivery" as the payment option
    Then The system should confirm COD selection
    And No additional payment details should be required

  Scenario: User removes a saved payment method
    Given The user has saved payment methods
    When The user chooses to remove a payment method
    And Confirms the removal
    Then The payment method should be deleted successfully

  Scenario: User tries to proceed without selecting a payment method
    Given The user is on the payment page
    When The user clicks on "Continue" without selecting a payment method
    Then An error message should be displayed stating "Please select a payment method"

  Scenario: User cancels the payment and returns to the cart
    Given The user is on the payment page
    When The user clicks on "Cancel" or "Return to Cart"
    Then The user should be redirected back to the cart page