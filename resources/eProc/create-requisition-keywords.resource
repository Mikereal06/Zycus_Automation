*** Settings ***
Library            SeleniumLibrary
Library            venv/Lib/site-packages/robot/libraries/Telnet.py
Resource           ../variables.resource
Library            ../python/check_downloads.py
Resource    ./create-requisition-variable.resource

*** Keywords ***

Click Create Request Button
    Click Element  ${Create_Request_xpath}
Click Add item / Service
    Click Element  ${Add item_Service_xpath}

Click Category
    Click Element  ${Category_xpath}

Click Sourcing Status
    Click Element  ${Sourcing_status_xpath}

Click Next 
    Click Element  ${Next_xpath}

Click First Supplier
    Click Element ${Supplier_first_xpath}

Click Add details
    Click Element  ${Add_details_xpath}

Click Supplier address
    Click Element  ${Supplier_address_xpath}

Click Supplier 1st value
    Click Element ${Supplier_val}

Click Done Btn
    Click Element ${Done_Btn_xpath}

Click Checkout Btn
    Click Element ${Checkout_Btn_xpath}

Click eForm1

    Click Element  ${eForm_value1_xpath}

Click eForm2

    Click Element  ${eForm_value2_xpath}
