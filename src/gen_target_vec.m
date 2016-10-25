function targets = gen_target_vec(Data, Trg)
    len_data = size(Data,1);
    i=1;
    targets = zeros(len_data,4);
    
    while i < len_data
        if Trg(i) == 1 && i > 1 && Trg(i-1) == 0
            targets(i,3) = 1;
            targets(i-600:i, 2) = 1;
        end
        if Trg(i) == 0 && i > 1 && Trg(i-1) == 1
            targets(i:i+300, 4) = 1;
        end
        i=i+1;
    end
    
    i=1;
    while i < len_data
        if isequal(targets(i, :), [0,0,0,0]) && Trg(i) == 0
            targets(i,1) = 1;
        else
            targets(i,3) = 1;
        end
        i=i+1;
    end
    
end