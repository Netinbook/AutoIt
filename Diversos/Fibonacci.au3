$seq = InputBox("Sequ�ncia de Fibonacci", "Quantos n�meros na sequ�ncia de Fibonacci voc� deseja?","", "")
$temp=1

$a = 1
$b = $a
$c = $b + $a

While $temp +1<= $seq +1

$a = $b
$b = $c
$c = $a + $b
$temp = $temp + 1
WEnd

ConsoleWrite($a & " - " & $b &" - " & $c &@CRLF)