function targets = gen_target_vec(Trg)
    len_data = size(Trg,1);
    i=1;
    targets = zeros(len_data,4);
    
    while i <= len_data
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
    while i <= len_data
        if isequal(targets(i, :), [0,0,0,0]) && Trg(i) == 0
            targets(i,1) = 1;
        elseif isequal(targets(i, :), [0,0,0,0]) && Trg(i) == 1
            targets(i,3) = 1;
        end
        i=i+1;
    end
    
    i=1;
    while i <= len_data
        if isequal(targets(i,:), [0,1,1,0])
            j=i+1;
            while isequal(targets(j,:), [0,1,1,0])
                j=j+1;
            end
            targets(i:j, 2) = 0;
            i=j;
        else
            i=i+1;
        end
        
    end
    
end