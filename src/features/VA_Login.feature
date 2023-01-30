@IGTA
@Adminstration
@RegressionTests

Feature: Administration - Manage Registrations ( (HTRS-2258)

  Background:
    Given the user logs into SSOI under Abu account "TEST_VHIC0001"

  Scenario: Registration Rejection
    Given the user navigates to Administration Manage Registrations
    Then the "HTR Administration Page Section Title: test should contain "Manage Registrations"
    And the user selects the "Vhaiswusero" text
    Then the user click "HTR Administration Page Deny Button"
    And the user dismisses a browser pop up
    Then the "HTR Administration Page section Title" text should contain "Manage Registration"
    Then the user clicks "HTR Adminstration Page Deny Button"
    And the user accepts a browser pop-up
    Then the "HTR Adminstration Page Section Title" text should contain "Manage Users"
    And the "HTR Administration Page User ID" text should contain "Vhaiswusero"
    Then the user selects "Need to access application is not verifiable" from dropdown "HTR Adminstration Page Deny Reason Dropdown"
      # Then the user clicks " HTR Administration Page Edit Submit Button"
      # And the "HTR Administration Page Section Title" text should contain "Manage Registrations"
      # And the "HTR Administration Page Information Message" text should contain "User updated successfully"
      # And the Registration Status in the table is now Denied
      # And the Denied Reason in the table is displayed
    Then the user clicks "HTR Administration Page Edit Cancel Button"
    And the "HTR Administration Page Confirmation Popup" text should contain "Confirmation"
    And the "HTR Administration Page Confirmation Message" text should contain "All unsaved data will be lost. Do you still want to cancel?"
    And the user clicks "HTR Administration Page Confirm Yes Button"
    Then the "HTR Administration Page Section Title" text should contain "Manage Registration"
    And the user clicks "HTR Administration Page Cancel Button"
    Then the "HTR Administration Page Section Title" text should contain "IHTA Home"

  Scenario: Approve Registration
    Given the user navigates to Administrtion Manage Registrations
    Then the "HTR Administration Page Section Title" text should contain "Manage Registration"
    And the user selects "25" from dropdown "HTR Adminstration Page Show Entries Dropdown"
    And the user clicks "HTR Administration Page User Name Column Header"
    And the user clicks "HTR Administration Page User Name Column Header"
    And the user selects the pending registrations row containing "Vhaiswuser2o" text
    Then the user clicks "HTR Adminstration Page Approve Button"
    And the "HTR Administration Page Section Title: text should contain "Manage Users"
    And the "HTR Administration Page User Id" text should contain "Vhaiswuser2o"
    Then the user clicks "HTR Administration Page Job Dropdown Options"
        #Then the user clicks randomly from "HTR Administration Page Job Dropdown Options"
    And the user clicks "HTR Adminstration Page VISN Admin Checkbox"
    And the user clicks "HTR Administration Page QIR Orginator Checkbox"
    And the user selects "VISN 1" from dropdown "HTR Administration Page Assigned VISN Dropdown"
    And the user clicks "HTR Administration Page Facility dropdown Options"
        ##And the user clicks randomly from "HTR Administration Page Job Dropdown Options"
        #Then the user clicks "HTR Administration Page Edit Submit Button"
        #And the "HTR Administration Page SEction Title" text should contain "Manage Registration"
        #And the "HTR Administration Page Information Message" text should
    Then the user clicks "HTR Administration Page Edit Cancel Button"
    And the "HTR Administration Page Confirmation Popup" text should contain "Confirmation"
    And the "HTR Administration Page Confirmation Message" text should contain "All unsaved data will be lost. Do you still want to cancel?"
    And the user clicks "HTR Administration Page Confirm Yes Button"
    Then the "HTR Administration Page Sectioni Title" text should contain "Manage Registrations"
