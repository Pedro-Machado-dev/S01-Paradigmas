Dim pesokg As double
Dim aguaml As double
Dim metadiaria As double

Print "Insira seu peso"
Input pesokg
Print pesokg ; "Kg"
Print "Insira a quantidade de agua ingerida"
Input aguaml
Print aguaml ; "ml"

metadiaria = pesokg * 35
Print "Sua meta de agua: " ; metadiaria ; "ml"

If aguaml >= metadiaria Then
    Print "Meta atingida!"
Else
    Print "Meta nao atingida"
End If

Sleep
