
Feature: Compose Function in Gmail

  Scenario: Compose a new email with valid information
    Given I am logged into my Gmail account
    When I compose a new email
      And I enter the recipient "test@example.com"
      And I enter the subject "Test Subject"
      And I enter the body "This is a test email."
      And I click on the send button
    Then the email should be sent successfully

  Scenario: Attempt to compose a new email with an empty recipient
    Given I am logged into my Gmail account1
    When I compose a new email1
      And I leave the recipient field empty
      And I enter the subject "Test Subject"
      And I enter the body "This is a test email."
    Then an error message should be displayed indicating that the recipient field is required

  Scenario: Attempt to compose a new email with an empty subject
    Given I am logged into my Gmail account2
    When I compose a new email2
      And I enter the recipient "test@example.com"
      And I leave the subject field empty
      And I enter the body "This is a test email."
      And I click on the send button2
    Then the email should be sent successfully without a subject

  Scenario: Attempt to compose a new email with an empty body
    Given I am logged into my Gmail account3
    When I compose a new email3
      And I enter the recipient "test@example.com"
      And I enter the subject "Test Subject"
      And I leave the body field empty
      And I click on the send button3
    Then the email should be sent successfully without a body

  Scenario: Attempt to compose a new email with an invalid email format
    Given I am logged into my Gmail account4
    When I compose a new email4
      And I enter an invalid email format in the recipient field
      And I enter the subject "Test Subject"
      And I enter the body "This is a test email."
    Then an error message should be displayed indicating that the email format is invalid

  Scenario: Compose a new email with an attachment
    Given I am logged into my Gmail account5
    When I compose a new email5
      And I enter the recipient "test@example.com"
      And I enter the subject "Test Subject"
      And I enter the body "This is a test email."
      And I attach a sample file
      And I click on the send button5
    Then the email should be sent successfully with the attachment

  Scenario: Compose a new email with input fields reaching maximum character limits
    Given I am logged into my Gmail account6
    When I compose a new email6
      And I enter a recipient email address with maximum character limit
      And I enter a subject with maximum character limit
      And I enter a body with maximum character limit
      And I click on the send button6
    Then the email should be sent successfully with input fields truncated to fit within the maximum character limits
