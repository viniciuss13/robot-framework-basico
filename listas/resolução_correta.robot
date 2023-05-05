*** Variables ***
@{MESES}   janeiro
...        fevereiro
...        março
...        abril
...        maio
...        junho
...        julho
...        agosto
...        setembro
...        outubro
...        novembro
...        dezembro

*** Test Cases ***
Imprimir os meses do ano
    Log To Console     Mês 01: ${MESES[0]}
    Log To Console     Mês 02: ${MESES[1]}
    Log To Console     Mês 03: ${MESES[2]}
    Log To Console     Mês 04: ${MESES[3]}
    Log To Console     Mês 05: ${MESES[4]}
    Log To Console     Mês 06: ${MESES[5]}
    Log To Console     Mês 07: ${MESES[6]}
    Log To Console     Mês 08: ${MESES[7]}
    Log To Console     Mês 09: ${MESES[8]}
    Log To Console     Mês 10: ${MESES[9]}
    Log To Console     Mês 11: ${MESES[10]}
    Log To Console     Mês 12: ${MESES[11]}