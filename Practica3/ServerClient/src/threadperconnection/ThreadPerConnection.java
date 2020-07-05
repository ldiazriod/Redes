package threadperconnection;

import java.net.*;
import java.io.*;


public class ThreadPerConnection extends Thread{
	private ServerSocket listenSocket;
	public ThreadPerConnection(ServerSocket listenSocket2) throws IOException {
		this.listenSocket = listenSocket2;
		this.start();
		System.out.println("aqui llega");
	}
	
	public void run() {
		while(true) {
			Socket clientSocket = null;
			try {
				clientSocket = listenSocket.accept();
				Connection c = new Connection(clientSocket);
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		}
	}
}
