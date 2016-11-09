function [X_train, Y_train] = getTrainData(X, Y)
    %por todos os pontos de pre-ictal, ictal e pos-ictal
    y_inter_ictal = Y(:, Y(1,:)==1);
    x_inter_ictal = X(:, Y(1,:)==1);
    
    ii_len = length(y_inter_ictal);
    rest_len = length(Y) - ii_len;
    r = randperm(ii_len);
    
    Y_train = [y_inter_ictal(:, r(1:rest_len)) Y(:, Y(2,:)==1) Y(:, Y(3,:)==1) Y(:, Y(4,:)==1)];
    X_train = [x_inter_ictal(:, r(1:rest_len)) X(:, Y(2,:)==1) X(:, Y(3,:)==1) X(:, Y(4,:)==1)];
   
end