function mapping = Encoder(arg)
keySet = {0,1};
valueSet = [1 -1];

mapping_tx = containers.Map(keySet,valueSet);
mapping = mapping_tx(arg);
end