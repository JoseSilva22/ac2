function net = gen_network(type, actFunc, layers, x_train, y_train)
    if strcmp(type,'cascadeforwardnet')
        hLayers = repmat(29, 1, layers-1);
        net = cascadeforwardnet(hLayers);
    
    elseif strcmp(type,'feedforwardnet')
        hLayers = repmat(29, 1, layers-1);
        net = feedforwardnet(hLayers);
    
    elseif strcmp(type,'newrb')
        net = newrb( input', expectedOutput', goal, rbfSpread, maxEpochs);
    
    elseif strcmp(type,'fitnet')
        hLayers = repmat(29, 1, layers-1);
        net = fitnet(hLayers);
    
    elseif strcmp(type,'layrecnet')
        net = layrecnet(layerDelays, layersDimension);
    
    elseif strcmp(type, 'patternnet')
        hLayers = repmat(29, 1, layers);
        net = patternnet(hLayers);
    end
    
    %train it
    %net = train(net, x_train, y_train);
    
    %save it
    name = strcat(type,'.mat');
    save(name, 'net');
    
end