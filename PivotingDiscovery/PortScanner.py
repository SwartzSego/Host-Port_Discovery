#SERGEN CAN
#TEMIZ SOCKET UZERINDEN TARAMA
import socket
def portScan(ipaddr):
	for i in range(50,90):
		sergenSOCK=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
		newcon=sergenSOCK.connect_ex((ipaddr,i))
		sergenSOCK.settimeout(1)
		if(newcon==0):
			print(f"Port Acik {i}")
		else:
			print(f"Port Kapali {i}")
		sergenSOCK.close()

ip_addr=str(input("Bir ip adresi giriniz:" ))
print(ip_addr)
portScan(ip_addr)


#SERGEN CAN
#AYNI SOCKET UZERINDEN TARAMA
"""import socket

def portScan(ipaddr):
	sergenSOCK=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
	for i in range(50,90):
		newcon=sergenSOCK.connect_ex((ipaddr,i))
		sergenSOCK.settimeout(1)
		if(newcon==0):
			print(f"Port Acik {i}")
		else:
			print(f"Port Kapali {i}")

ip_addr=str(input("Bir ip adresi giriniz:" ))
print(ip_addr)
portScan(ip_addr)"""