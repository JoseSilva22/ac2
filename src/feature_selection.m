function feature_selection(Data, Trg)
    [R,P]=corrcoef([Data,Trg]);
    var = length(P);
    
    coefs = R(var, 1:var-1);
    
    coefsAbs = abs(coefs);
    
    [ps, indexes] = sort(coefsAbs(1,:), 'descend');
    disp(ps);
    disp(indexes);
    
end