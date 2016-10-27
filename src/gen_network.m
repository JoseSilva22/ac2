function net = gen_network(type, actFunc, layers, x_train, y_train)
    if strcmp(func,'cascadeforwardnet')
        net = cascadeforwardnet(hLayers,learningFct);
    elseif strcmp(func,'feedforwardnet')
        net = feedforwardnet(hLayers,learningFct);
    elseif strcmp(func,'newfftd')
        net = newfftd(input', expectedOutput',  0:numLayers - 1, layersDimension, transferFcns, learningFct);
    elseif strcmp(func,'newdtdnn')
        net = newdtdnn( input', expectedOutput', hiddenLayersSize, {0:19}, transferFcns, learningFct );
    elseif strcmp(func,'newrb')
        net = newrb( input', expectedOutput', goal,rbfSpread, maxEpochs);
    elseif strcmp(func,'fitnet')
        net = fitnet(hLayers,learningFct);
    elseif strcmp(func,'layrecnet')
        net = layrecnet(layerDelays, layersDimension, learningFct);
    elseif strcmp(func, 'patternnet')
        net = patternnet(hLayers,learningFct);
    end
end