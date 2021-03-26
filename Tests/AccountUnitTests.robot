*** Settings ***
Documentation     Example test case using the gherkin syntax.
...
...               This test has a workflow similar to the keyword-driven
...               examples. The difference is that the keywords use higher
...               abstraction level and their arguments are embedded into
...               the keyword names.
...
...               This kind of _gherkin_ syntax has been made popular by
...               [http://cukes.info|Cucumber]. It works well especially when
...               tests act as examples that need to be easily understood also
...               by the business people.
Library           RequestsLibrary
Library           Collections

*** Test Cases ***

Regist user
    When user create new account with username "${validUser}" and password "${Qwerty1@}"
    Then user is created
    And response body contain field "${field}" with value "${validUser}"


*** Variables ***
field = "userName"
validUser = DemoUserName

*** Keywords ***
user create new account with username "${validUser}" and password "${Qwerty1@}"
pass

user is created
pass

response body contain field "${userName}" with value "${validUser}"
pass