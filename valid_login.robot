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
    Click Link    css=a[href*="javaone"]
    [Teardown]    Close Browser    #Close Browser

Request headers
    Set Log Level    TRACE
    Open Browser    http://www.nu.nl
    Create HTTP Context    localhost
    Set Request Header    key    value
    Get    /rolodex
