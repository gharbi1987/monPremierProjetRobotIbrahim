*** Settings ***
Library    SeleniumLibrary    


*** Test Cases ***
loginTest
    
   open browser  ${url}  ${browser}
   Maximize Browser Window
   Input Text   name=txtUsername     ${datalogin}[username]
   Input Password    id=txtPassword       ${datalogin}[password]   
   Click Button    id=btnLogin  
   Click Element    id=welcome    
   Set Browser Implicit Wait    5
   Click Element     link=Logout
   Log    ceci est un test execute par %{username} dans %{os} 
   Log    fin du test   
*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/index.php/auth/login
${browser}    gc 
@{login}    Admin    admin123
${datalogin}    username=Admin    password=admin123