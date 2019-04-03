for index=1:10
    vector(index) = rand;
end
vector
msg = cell(1,10);

for index=1:10
    tmp = Source(vector(index));
    msg{index} = tmp;
end
msg
for index=1:10
    tmp = Transmitter(msg{index});
    msg{index} = tmp;
end
msg
for index=1:10
    tmp = Encoder(msg{index});
    msg{index} = tmp;
end
msg
for index=1:10    
    messages(index) = msg{index};
end
messages

for index=1:5
    for k=1:5
        tx(index) = Channel(messages(index),k);
    end
end

for index=6:9
    for k=1:5
        tx(index) = Channel(messages(index),k);
    end
end

tx