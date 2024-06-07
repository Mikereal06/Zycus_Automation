*** Settings ***
Documentation      Create Requisition
Library            SeleniumLibrary
Resource           ../resources/appXtend/appXtend-keywords.resource
Resource           ../resources/variables.resource
Resource           ../resources/keywords.resource
Resource    ../../resources/eProc/create-requisition-keywords.resource

*** Test Cases ***
Valid Login        
    Input Valid Login    ${BULK_UPLOAD_SCREENSHOT_PATH}    ${USER1}    ${USER1 PASS}
Online Store
    Click Hamburger Menu
    Click Module    eProc    
    Click Sub-module   Online Store
    Wait Browser Load
    Verify Title    Zycus
    Click Create Request Button
    Input Text     //*[@id="grid-input"]/div/div[1]/input  test 1
    Sleep  3
    Click Add item / Service
    Input Text  //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/eproc-guided-procurement/eproc-create-guided-item-dialog/form/dew-modal/div[2]/div/div[2]/dew-modal-body/div/dew-row[1]/dew-col[2]/dew-input-container/dew-typeahead/div/div[1]/input  Uniforms
    Wait Until Element Is Visible  ${Category_xpath}
    Click Category
    Wait Until Element Is Visible  ${eForm_xpath}
    Click eForm1
    Click eForm2
    Click Sourcing Status
    Input Text  //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/eproc-guided-procurement/eproc-create-guided-item-dialog/form/dew-modal/div[2]/div/div[2]/dew-modal-body/div/dew-row[5]/dew-col/div[1]/div[1]/dew-input-container/div[2]/input  100
    Input Text  //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/eproc-guided-procurement/eproc-create-guided-item-dialog/form/dew-modal/div[2]/div/div[2]/dew-modal-body/div/dew-row[5]/dew-col/div[1]/div[3]/dew-input-container/div[2]/div/input  20
    Click Next
    Wait Until Element Is Visible  //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/eproc-guided-procurement/eproc-create-guided-item-dialog/form/eproc-category-eform-requirement-details/dew-modal/div[2]/div/div[3]/dew-modal-footer/div/dew-btn/button/div/span
    Click Element  //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/eproc-guided-procurement/eproc-create-guided-item-dialog/form/eproc-category-eform-requirement-details/dew-modal/div[2]/div/div[3]/dew-modal-footer/div/dew-btn/button/div/span
    Input Text  //*[@id="supplierName"]  Zenshin
    Wait Until Element Is Visible  ${Supplier_first_xpath}
    Click First Supplier
    Click Add details
    Click Supplier address
    Click Supplier 1st value
    Wait Until Element Is Visible  //*[@id="app-root-container"]/div/div/div/dew-route-loader/div[2]/eproc-guided-procurement/dew-page-wrapper/div/div/dew-page-content/form/div/dew-block/div[1]/div/dew-row[1]/dew-col[1]/dew-row/dew-col[3]/eproc-autocomplete-supplier/eproc-supplier-detail-dialog/dew-modal/div[2]/div/div[2]/dew-modal-body/div/div/div/dew-row[2]/dew-col[1]/dew-input-container/dew-typeahead/div/div[1]/input
    Click Done Btn
    Click Checkout Btn


