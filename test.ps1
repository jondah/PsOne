$var = "start"
if (!(test-path var.txt)){
$var | out-file var.txt
}
else{
    $var = get-content var.txt
    write-output $var 
}