function mapping = Transmitter(arg)
keySet = {'Ma','Mb'};
valueSet = [0 1];

mapping_tx = containers.Map(keySet,valueSet);
mapping = mapping_tx(arg);
end
