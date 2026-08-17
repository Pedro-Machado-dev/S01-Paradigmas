Dim senha As Integer
Dim senhausuario As Integer

senha = 2629

Print "Insira o PIN:"
Input senhausuario
Print senhausuario

While senhausuario <> senha
    Print "PIN incorreto, digite novamente"
    Input senhausuario
    Print senhausuario
Wend

Print "Transação autorizada!"

Sleep
