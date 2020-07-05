package clases;

import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

public class DistanceVector {

	private Graph graph;
	private List<Router> routers ;

	public DistanceVector(Graph graph) {
		this.graph = graph;
		this.routers = new ArrayList<Router>();
	}
	public void addRouters(Router r) {
		routers.add(r);
	}

	public void applyDistanceVector() throws FileNotFoundException {
		for(int iteracion=0; iteracion<routers.size(); iteracion++) {
			for(int i=0; i<routers.size(); i++) {
				sendNeighbours(routers.get(i).getId());
			}
			for(int r=0; r<routers.size(); r++) {
				routers.get(r).actualizate();
			}
		}
		printRouterFinalTables();
	}

	public void sendNeighbours(int idRouter) {
		for(int i=0; i<routers.size(); i++) {
			if(idRouter != routers.get(i).getId()){ 			//si no es el mismo.
				if(routers.get(idRouter).isNeigh(routers.get(i).getId())) {	
					int[][]aux = routers.get(i).getNeighbours();	//aux = vecinos d mi vecinos
					for(int row=0; row<aux.length; row++){
						if(row != idRouter)//recorro aux filas
						for(int col=0; col<aux.length; col++) {		// recorro aux columnas
							if(col != idRouter) { 					//tu via(col) no la inspeccionas
								if(aux[row][col] != 0) {			//si tu vecino tiene vecinos
									int value = aux[row][col];		//me guardo el costo a su vecino
									routers.get(idRouter).actualizateTables(routers.get(i).getId(),row, col, value); //actualizo tabla de minimas distancias
								}													
							}
						}
					}
				}
			}
		}
	}
	
	public void printRouterFinalTables() throws FileNotFoundException {
		String idFichero= "interntables.txt";
		PrintWriter ficheroSalida = new PrintWriter(idFichero);
		for(int i=0; i<routers.size(); i++) {
			ficheroSalida.println("Router: " + i);ficheroSalida.println();
			int[][]aux = routers.get(i).getMinValues();
			for(int row=0; row<routers.size(); row++) {
				for(int col=0; col<routers.size(); col++) {
					ficheroSalida.print(aux[row][col] + " ");
				}
				ficheroSalida.println();
			}
			ficheroSalida.println();ficheroSalida.println();ficheroSalida.println();			
		}
		ficheroSalida.close();
	}

}