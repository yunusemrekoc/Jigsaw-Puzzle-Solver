function retMax =v4FindMax(simiMat)

    max =0;
    
    for i=1:4       
        for j=1:4
            
            if(max<simiMat{i,j})
                max=simiMat{i,j};
                maxI=i;
                maxJ=j;
            end
            
        end
    end
        

    retMax=[max,maxI,maxJ];







end
