$n = InputBox("Verifica��o de n�mero primo", "Digite o n�mero que voc� deseja verificar se � um n�mero primo ou n�o","", "")
$i = 1
$x = 0
Do
    If(resto($n,$i)=0)Then
		$x = $x + 1
	EndIf
    $i = $i + 1
Until $i = $n
	If($x = 1)Then
		MsgBox("","Resultado","O n�mero " & $n &" � primo")
	Else
		MsgBox("","Resultado","O n�mero " & $n &" n�o � primo")
	EndIf

Func resto($dividendo,$divisor)
	Return (($dividendo / $divisor)-int($dividendo / $divisor))*2
EndFunc