*** Variables ***
&{DIAS_POR_MES_2022}   janeiro=31
...                    fevereiro=28
...                    março=31
...                    abril=30
...                    maio=31
...                    junho=30
...                    julho=31
...                    agosto=31
...                    setembro=30
...                    outubro=31
...                    novembro=30
...                    dezembro=31

*** Test Cases ***
Imprimir dias por mês de 2022
    Log To Console     Em JANEIRO há ${DIAS_POR_MES_2022.janeiro} dias!
    Log To Console     Em FEVEREIRO há ${DIAS_POR_MES_2022.fevereiro} dias!
    Log To Console     Em MARÇO há ${DIAS_POR_MES_2022.março} dias!
    Log To Console     Em ABRIL há ${DIAS_POR_MES_2022.abril} dias!
    Log To Console     Em MAIO há ${DIAS_POR_MES_2022.maio} dias!
    Log To Console     Em JUNHO há ${DIAS_POR_MES_2022.junho} dias!
    Log To Console     Em JULHO há ${DIAS_POR_MES_2022.julho} dias!
    Log To Console     Em AGOSTO há ${DIAS_POR_MES_2022.agosto} dias!
    Log To Console     Em SETEMBRO há ${DIAS_POR_MES_2022.setembro} dias!
    Log To Console     Em OUTUBRO há ${DIAS_POR_MES_2022.outubro} dias!
    Log To Console     Em NOVEMBRO há ${DIAS_POR_MES_2022.novembro} dias!
    Log To Console     Em DEZEMBRO há ${DIAS_POR_MES_2022.dezembro} dias!