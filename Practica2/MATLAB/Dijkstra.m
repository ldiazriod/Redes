%C = generator(num_nodos);
%G = digraph(C)
file = 'grafo.txt';
delimiterIn = ';';
Matrix = importdata(file,delimiterIn);;
num_nodos = 7;
nodo_init = 3;
file = fopen('dijkstra.txt','w');
%Matrix = [0 2 5 0 0 0 1;2 0 3 0 0 0 2;0 3 0 1 0 1 3;0 0 1 0 0 2 0; 0 0 0 0 0 0 0;0 0 1 0 0 0 1;1 2 3 0 0 1 0]; 
Graph = digraph(Matrix);
plot(Graph);
%% INICIALIZAMOS Dist 
Dist = zeros(1,num_nodos);
for i = 1:length(Matrix)
    if(i ~= nodo_init)
        Dist(1,i)=10e9;
    else
        Dist(1,i)=0;
    end
end
%% INICIALIZAMOS EL VECTOR VISITADOS A 0, MENOS EL NODO INICIAL.
visited = zeros(1,length(Matrix));

%% INICIALIZAMOS LA MATRIZ VECINOS
neighbours = zeros(length(Matrix));
for i = 1: length(Matrix)
    for j = 1 : length(Matrix)
        if(Matrix(i,j)>=1)
            neighbours(i,j)=1;
        end
    end
end
%% RECORREMOS TODOS LOS NODOS ADYACENTES DEL NODO
nodo_this = nodo_init;
visited(nodo_this) = 1;
full = 0;
paquetes_enviados = 0;
while full == 0 %%mientras no se haya recorrido el grafo entero
    bool = 0;
    for i = 1:length(Matrix)
        if neighbours(nodo_this,i)==1 && visited(i)==0 %si es tu vecino y no ha sido visitado
            distancia_acumulada=Dist(nodo_this) + Matrix(nodo_this,i);
            if(distancia_acumulada < Dist(i))
                Dist(i) = distancia_acumulada;
                
                fprintf(file,'\n');
                fprintf(file,'Iterate %10.0', i);
                fprintf(file,'\t %10.f',Dist);
                fprintf(file,'\n\n');
               
                paquetes_enviados = paquetes_enviados + 1;
            end
            visited(nodo_this) = 1;
            
            bool = 1;
        end
    end
    if bool == 0 % si no tiene vecinos sin visitar ya de inicio
        break;
    end
    %Poner menos los que ya fueron visitados
    contador = 1;
    vectorminima = 0;
    fprintf(file,'---------------------------------------------------------------------------------------------------------------------------------------\n');
    fprintf(file,'\nVisited: ');
    fprintf(file,'\t %10.0f',visited );
    fprintf(file,'\n\n---------------------------------------------------------------------------------------------------------------------------------------\n');
    for i = 1:length(Matrix)
        if(visited(i)==0)
            vectorminima(contador) = Dist(i);
            contador = contador + 1;
        end
    end
    cantidadminima = min(vectorminima);
    %cantidadminima = min(D);
    for i = 1:length(Matrix)
        if Dist(i) == cantidadminima
            if visited(i) == 0
                nodo_this = i;
                break;
            end
        end
    end
    for i = 1:length(Matrix)
        if(Dist(i) == 10e9)
            full = 0;
            break;
        else
            full = 1;
        end
    end
end
fprintf(file,'\n\n\n');
fprintf(file,'El numero de paquetes enviados es');
fprintf(file,'%10.0f',paquetes_enviados);
fclose(file);