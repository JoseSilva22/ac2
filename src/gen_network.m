function net = gen_network(type, layers, x, y, dataset)

    if strcmp(type,'cascadeforwardnet')
        hLayers = repmat(29, 1, layers-1);
        net = cascadeforwardnet(hLayers);
    
    elseif strcmp(type,'feedforwardnet')
        hLayers = repmat(29, 1, layers-1);
        net = feedforwardnet(hLayers);
    
    elseif strcmp(type,'fitnet')
        hLayers = repmat(29, 1, layers-1);
        net = fitnet(hLayers);
    
    elseif strcmp(type,'layrecnet')
        net = layrecnet();
        [Xs,Xi,Ai,Ts] = preparets(net,x,y);
        %net = train(net,Xs,Ts,Xi,Ai);
        %Y = net(Xs,Xi,Ai);
    
    elseif strcmp(type, 'patternnet')
        hLayers = repmat(29, 1, layers-1);
        net = patternnet(hLayers);
    end
    
    %train it
    net = train(net, x, y);
    
    %save it
    name = strcat(type,dataset);
    save(name, 'net');
    
end