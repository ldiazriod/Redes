package UDP;

import java.net.*;
import java.util.Vector;
import java.io.*;
public class UDPClient{
	public static void statistics(Vector<Double> times) {
		double sum = 0, media = 0, desv = 0;
		for(int i=0; i < times.size(); i++) {
			sum = sum + times.elementAt(i);
		}
		media = sum/times.size();
		System.out.println("La media de tiempos de 100 request es: " + media);
		for(int i=0; i < times.size(); i++) {
			desv = desv + (times.elementAt(i)-media)*(times.elementAt(i)-media);
		}
		desv = Math.sqrt(desv/times.size());
		System.out.println("La desviación tipica de tiempos de 100 request es: " + desv);
	}
    public static void main(String args[]){ 
		DatagramSocket aSocket = null;
		try {
            aSocket = new DatagramSocket();    
			byte [] m = args[0].getBytes();
			InetAddress aHost = InetAddress.getLocalHost();
			int serverPort = 6789;		                                                 
			DatagramPacket request = new DatagramPacket(m,  args[0].length(), aHost, serverPort);
			//long[]times= null;
			Vector<Double> times=new Vector<Double>();
			for(int i = 0; i < 100; i++) {
				long inicio = System.nanoTime();
				aSocket.send(request);			                        
				byte[] buffer = new byte[1000];
				DatagramPacket reply = new DatagramPacket(buffer, buffer.length);	
				aSocket.receive(reply);
				long fin = System.nanoTime();
		        double latencia = (double) (fin - inicio);
		        times.addElement(latencia);
				System.out.println("Reply: " + new String(reply.getData()) + " en: " + latencia + " ns");
				
			}
			statistics(times);
		}catch (SocketException e){System.out.println("Socket: " + e.getMessage());
		}catch (IOException e){System.out.println("IO: " + e.getMessage());
		}finally {if(aSocket != null) aSocket.close();}
	}		      	
}