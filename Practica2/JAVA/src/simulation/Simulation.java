package simulation;
import clases.*;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class Simulation {
	private int vertices;
	private int[][] graph;
	public Simulation() {
		this.vertices = 0;
		this.graph = new int [4][4];
	}
	void inputGraph(String txtfile) throws FileNotFoundException{
        BufferedReader br = null;
        String line = ""; 
        String txtSplitBy = ";";
        try {
            br = new BufferedReader(new FileReader(txtfile));
            int i = 0;
            while ((line = br.readLine()) != null) {
                String[] graphline = line.split(txtSplitBy);
                int tam = graphline.length;
	            	for(int j=0; j<tam; j++) {
	            		this.graph[i][j] = Integer.parseInt(graphline[j]);
	            	}
                i++;
            }
            this.vertices = i;    
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
	}
	int getVertices() {
		return this.vertices;
	}	

	public int[][] getGraph() {
		return graph;
	}

	public static void main(String[] args) throws FileNotFoundException {
		String txtfile = "TestGraph.txt";
		Simulation sim = new Simulation();
		sim.inputGraph(txtfile);
		Graph graph = new Graph(sim.getVertices(), sim.getGraph());
		DistanceVector algorithm = new DistanceVector(graph);
		for(int i=0; i < sim.getGraph().length; i++) {
			Router r = new Router(i, graph);
			r.setInternTable();
			algorithm.addRouters(r);
			r.getNeighbours();
		}
		algorithm.applyDistanceVector();
	}

}
