*** Settings ***
Documentation  Demonstrate a need for data-driven testing
Resource  D:/DemoProject/RobotFramework_E2E/data-driven-builtin-my/Data/InputData.robot
Resource  D:/DemoProject/RobotFramework_E2E/robotTest/Resources/Common.robot
Resource  D:/DemoProject/RobotFramework_E2E/data-driven-builtin-my/Resources/CarsApp.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

# robot -d results tests/Cars.robot

*** Variables ***

*** Test Cases ***
Invalid login scenarios should display correct error messages
    [Template]  Test Multiple Login Scenrios
    ${UNREGISTERED_USER}
    ${INVALID_PASSWORD_USER}
    ${BLANK_CREDENTIALS_USER}

#Unregistered user should see correct error message at login
#    CarsApp.Navigate to Sign In Page
#    CarsApp.Attempt Login  ${UNREGISTERED_USER}
#    CarsApp.Verify Login Page Error Message  ${UNREGISTERED_USER.ExpectedErrorMessage}
#
#Login with invalid password should show correct error message
#    CarsApp.Navigate to Sign In Page
#    CarsApp.Attempt Login  ${INVALID_PASSWORD_USER}
#    CarsApp.Verify Login Page Error Message  ${INVALID_PASSWORD_USER.ExpectedErrorMessage}
#
#Login with blank email and password should show correct error message
#    CarsApp.Navigate to Sign In Page
#    CarsApp.Attempt Login  ${BLANK_CREDENTIALS_USER}
#    CarsApp.Verify Login Page Error Message  ${BLANK_CREDENTIALS_USER.ExpectedErrorMessage}