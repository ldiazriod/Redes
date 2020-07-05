%A = generator(n_nodos);
%G = digraph(A);
A = [0 5 4 6 1 8 0;5 0 2 0 7 2 10;4 2 0 2 8 7 8;6 0 2 0 7 2 5;1 7 8 7 0 4 4;8 2 7 2 4 0 4;0 10 8 5 4 4 0];
%A = [0 2 5 0 0 0 1;2 0 3 0 0 0 2;0 3 0 1 0 1 3;0 0 1 0 0 2 0; 0 0 0 0 0 0 0;0 0 1 0 0 0 1;1 2 3 0 0 1 0]; 
G = digraph(A);
plot(G);

n_nodos = 7;
nodo_init = 1;
nodo_end = 7;
paquetes_enviados = 0;
neighbours = zeros(length(A),length(A));
jumps=2;
node_this = nodo_init;
file = fopen('inundacion.txt','w');
%iteracion = 1;
%% INICIALIZAMOS LA MATRIZ VECINOS
for i = 1: length(A)
    for j = 1 : length(A)
        if(A(i,j)>=1)
            neighbours(i,j)=1;
        end
    end
end
%% INICIALIZAMOS LA MATRIZ DE INUNDACIÓN
Envios = zeros(1,length(A));
Envios(1,nodo_init)=1;
Envios(2,:)=neighbours(nodo_init,:);
row = 3;
bool = 0;
iteracion = 3;
%% ALGORITMO
while Envios(jumps,nodo_end)~=1 && jumps<20 %el paquete llegue al nodod dest o muere a los 20 saltos si no ha llegado al end
    sum_iteration = zeros(1,length(A));
    for i = 1:length(Envios(1,:))
        if (Envios(jumps-1,i)==1) %el nodo que estamos examinando tiene vecinos
            for j = 1:length(Envios(1,:)) %miras todos los neigh del nodo
                if neighbours(i,j)==1 %si son neigh
                    node_this = j; 
                    Envios(row,:)=neighbours(node_this,:);
                    if Envios(row,nodo_end) == 1
                        bool = 1;
                    end
                    Envios(row,i)=0;
                    sum_iteration = sum_iteration + Envios(row,:);
                    row = row + 1;
                end
            end
            if bool == 1
                break;
            end
        end        
    end
    len=length(Envios(:,1)); %LEN = NUMERO D FILAS
     for i = len:-1:iteracion+1 %borro las filas d las iteraciones y dejo la de la suma total
         Envios(i,:)=[];
     end
    Envios(iteracion,:)=sum_iteration(); % en la iteracion pongo la suma correspondiente
    if Envios(iteracion,nodo_end)~=0
        break;
    end
    iteracion = iteracion + 1;
    if(Envios(jumps,nodo_end)~=0)
        break;
    end
    jumps = jumps + 1;
end
for i = 1: length(Envios(:,1))
    for j = 1:length(Envios(1,:))
        if(Envios(i,j) ~= 0)
            paquetes_enviados = paquetes_enviados + Envios(i,j);
        end
    end
end

fprintf(file,'Matriz resultante de envíos realizados en cada iteración\n\n');
for i = 1:length(Envios(:,1))
   for j = 1:n_nodos
       fprintf(file,'%10.0f',Envios(i,j));
   end
   fprintf(file,'\n');
   fprintf(file,'-------------------------------------------------------------------------');
   fprintf(file,'\n');
end
fprintf(file,'\n\n\n');
fprintf(file,'Paquetes enviados:');
fprintf(file,'%10.0f',paquetes_enviados);
fclose(file);