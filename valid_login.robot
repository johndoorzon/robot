*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot
Library           HttpLibrary.HTTP

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    smolenaa
    Input Password    Or@nje05
    Submit Credentials
    Welcome Page Should Be Open
    Comment    Wait Until Element Is Visible    css=a:contains("Blockchain")
    Comment    Click Link    css=a:contains("Blockchain")
    [Teardown]    Close Browser    #Close Browser

