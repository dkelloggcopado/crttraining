*** Settings ***
Resource          ../resources/common.robot
Suite Setup       Setup Browser
Suite Teardown    End suite
Library           QVision


*** Test Cases ***
Create Opportunity
    Appstate      Home
    ClickText     Opportunities
    ClickText     New
    UseModal      On
    ComboBox      Search Accounts...          BarrySanders 2023-03-22 16:42:47.645
    TypeText      *Opportunity Name           This is my 2nd test
    TypeText      Amount                      300000
    TypeText      *Close Date                 3/31/2023
    TypeText      Probability (%)             50
    PickList      *Stage                      Proposal
    PickList      Lead Source                 Advertisement
    TypeText      Next Step                   Call them
    ClickText     Save                        partial_match=False
