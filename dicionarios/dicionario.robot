*** Variables ***

&{DICT}    janeiro=31    fevereiro=28    março=31    abril=30    maio=31    junho=30    julho=31    agosto=31
...        setembro=30    outubro=31    novembro=30    dezembro=31

*** Test Cases ***
Meses e dias
    Log To Console    ${DICT.janeiro}
    Log To Console    ${DICT.fevereiro}
    Log To Console    ${DICT.março}
    Log To Console    ${DICT.abril}
    Log To Console    ${DICT.maio}
    Log To Console    ${DICT.junho}
    Log To Console    ${DICT.julho}
    Log To Console    ${DICT.agosto}
    Log To Console    ${DICT.setembro}
    Log To Console    ${DICT.outubro}
    Log To Console    ${DICT.novembro}
    Log To Console    ${DICT.dezembro}