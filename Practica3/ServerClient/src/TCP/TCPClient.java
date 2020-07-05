package TCP;
import java.net.*;
import java.util.Vector;
import java.io.*;
public class TCPClient {
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
	public static void main (String args[]) {
		Socket s = null;
		try{
			int serverPort = 7896;   
			//Vector<Double> times=new Vector<Double>();
			long inicio = System.currentTimeMillis();
			for(int i = 0; i < 1000; i++) {
				s = new Socket("localhost", serverPort); 
				DataInputStream in = new DataInputStream( s.getInputStream());
				DataOutputStream out =new DataOutputStream( s.getOutputStream());
				//long inicio = System.nanoTime();
				out.writeUTF(args[0]);      	
				String data = in.readUTF();
				//long fin = System.nanoTime();
		        //double latencia = (double) (fin - inicio);
		        //times.addElement(latencia);
		        System.out.println("Received: "+ data);// + " en: " + latencia + " ns"); 
			}
			long fin = System.currentTimeMillis();
			long time = fin-inicio;
			System.out.print(time + "ms en realizar 1000 request con Thread-Per-Request!");
			//statistics(times);
			
		}catch (UnknownHostException e){System.out.println("Socket:"+e.getMessage());
		}catch (EOFException e){System.out.println("EOF:"+e.getMessage());
		}catch (IOException e){System.out.println("readline:"+e.getMessage());
		}finally {if(s!=null) try {s.close();}catch (IOException e){System.out.println("close:"+e.getMessage());}}
     }
}