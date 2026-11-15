*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Reset Counter

*** Test Cases ***
When counter is set to a value the value is shown
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  10
    Click  button >> text=aseta
    Get Text  body  *=  nappia painettu 10 kertaa

When counter is set to a value pressing the button increments it
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  10
    Click  button >> text=aseta
    Click  button >> text=Paina
    Get Text  body  *=  nappia painettu 11 kertaa

When counter is set to a value and reset the value becomes zero
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  10
    Click  button >> text=aseta
    Click  button >> text=Nollaa
    Get Text  body  *=  nappia painettu 0 kertaa
