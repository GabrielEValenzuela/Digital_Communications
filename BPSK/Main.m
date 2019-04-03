%Se crea un vector de 10 elementos cuyos valores son random entre 0 y 1
for index=1:10
    vector(index) = rand;
end
vector
%Puesto que Tranmisor mapea un valor con un char, se crea un cell
msg = cell(1,10);
for index=1:10
    tmp = Source(vector(index));
    msg{index} = tmp;
end
msg
%A dicho cell (i.e cada celda) se codifica de acuerdo el alfabeto binario
for index=1:10
    tmp = Transmitter(msg{index});
    msg{index} = tmp;
end
msg
%Al alfabeto binario, se lo mapea con su señal antipodal
for index=1:10
    tmp = Encoder(msg{index});
    msg{index} = tmp;
end
msg
%Conversión a double
for index=1:10    
    messages(index) = msg{index};
end
messages
%Se añade AWGN de acuerdo a la función provista de matlab, y con un SNR de
%0:1:5
for index=1:5
    for k=1:5
        tx(index) = Channel(messages(index),k);
    end
end
%De 6:1:9
for index=6:9
    for k=1:5
        tx(index) = Channel(messages(index),k);
    end
end
tx