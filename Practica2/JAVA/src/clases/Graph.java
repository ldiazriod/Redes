package clases;


public class Graph {

    private int[][] global;
    private final int vertices;
    

    public Graph(int vertices, int[][] global) {
        this.vertices = vertices;
        this.global = global;
        
    }
    
    public boolean hasValue(int i, int j) {
        return global[i][j] != 0;
    }
    
    public int getVertices() {
    	return vertices;
    }
    
    public int getValue(int i, int j) {
    	return global[i][j];
    }
    


}