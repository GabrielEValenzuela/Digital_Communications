% Generador de fuente de información de mensajes Ma, Mb con probabilidad p(Ma)=0.3 y p(Mb)=0.7
function msg = Source(rand_num)

if(rand_num <= 0.3)
    msg = 'Ma';
else
    msg = 'Mb';
end