package clases;

public class Router {
	private int[][] intern_table;
	private int[][] intern_transition;
	private int routerId;
	private Graph graph;
	private int[][] lessvalues;
	
	public Router(int routerId, Graph graph) {
		this.routerId = routerId;
		this.graph = graph;
		this.intern_table = new int[this.graph.getVertices()][this.graph.getVertices()];
		for(int i=0; i < this.graph.getVertices(); i++) {
			for(int j=0; j < this.graph.getVertices(); j++) {
				this.intern_table[i][j] = 0;
			}
		}
		this.lessvalues = new int[this.graph.getVertices()][this.graph.getVertices()];
		for(int i=0; i < this.graph.getVertices(); i++) {
			for(int j=0; j < this.graph.getVertices(); j++) {
				this.lessvalues[i][j] = 0;
			}
		}
		this.intern_transition = new int[this.graph.getVertices()][this.graph.getVertices()];
		for(int i=0; i < this.graph.getVertices(); i++) {
			for(int j=0; j < this.graph.getVertices(); j++) {
				this.intern_transition[i][j] = 0;
			}
		}
	}
	
	public void setInternTable() {
		for(int col = 0; col < graph.getVertices(); col++) {
			if(graph.hasValue(routerId, col)){
				this.intern_table[col][col] = graph.getValue(routerId, col);
			}
		}
		for(int i=0; i < this.graph.getVertices(); i++) {
			for(int j=0; j < this.graph.getVertices(); j++) {
				this.intern_transition[i][j] = this.intern_table[i][j];
			}
		}
		setLessValues();
	}
	public void setLessValues() {		
		for(int i=0; i < this.graph.getVertices(); i++) {
			int aux = 100000000; int row=0, col=0; boolean b=false;
			for(int j=0; j < this.graph.getVertices(); j++) {
				if(this.intern_table[i][j] != 0) {
					if(this.intern_table[i][j] <= aux) {
						b=true;
						row=i; col=j; aux=this.intern_table[i][j];						
					}
				}
			}
			if(b) this.lessvalues[row][col] = aux; //!
		}
	}
	
	public void actualizate() {
		for(int i=0; i < this.graph.getVertices(); i++) {
			for(int j=0; j < this.graph.getVertices(); j++) {
				this.intern_table[i][j] = this.intern_transition[i][j];
			}
		}
	}
	public boolean isNeigh(int id) {
		boolean b = false;
		for(int i = 0; i < this.graph.getVertices(); i++) {
			if(intern_table[i][id] != 0){
				b = true;
			}
		}
		return b;
	}
	
	
	public void actualizateTables(int id, int i, int j, int value) {
		if(intern_transition[i][id] != 0) {
			if(this.intern_transition[id][id] + value < intern_transition[i][id]) {
				this.intern_transition[i][id] = this.intern_transition[id][id] + value;
			}
		}else {
		this.intern_transition[i][id] = this.intern_transition[id][id] + value; 	//actualizo peso a "nuevos/o no" vecino
		}
		boolean encontrado = false;
		
		for(int col = 0; col < this.lessvalues.length; col++) {						//quiero fijar el menor de la fila, recorro la fila i de less value
			if(!encontrado && this.lessvalues[i][col] != 0) {
				if(this.intern_transition[i][id] < this.lessvalues[i][col]) {
					this.lessvalues[i][id] = this.intern_transition[i][id];
					this.lessvalues[i][col] = 0;
					encontrado = true;
				}
				if(this.intern_transition[i][id] >= this.lessvalues[i][col]) {
					encontrado = true;
				}
			}
		}
		if(!encontrado) {
				this.lessvalues[i][id] = this.intern_transition[i][id];
		}	
	}
	
	public int getMinValue(int i, int j){
		return this.lessvalues[i][j];
	}
	public int[][] getNeighbours() {
		return this.intern_table;
	}

	public int[][] getMinValues() {
		return this.lessvalues;
	}
	
	public int getVertices() {
		return this.intern_table.length;
	}
	
	public int getId() {
		return this.routerId;
	}
	
	@Override
	public String toString() {
		StringBuilder s = new StringBuilder();
        for (int i = 0; i < intern_table.length; i++){
            s.append(i + ": ");
            for(int j: intern_table[i]){
                s.append(j + " ");
            }
            s.append("\n");
        }
        return s.toString();
	}
}

