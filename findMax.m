function findMaxArray= findMax(simiMat)
    
    for i=1:size(simiMat)
        max=0;
        maxI=0;
        maxJ=0;
        piece=0;
        tempArr=[max,maxI,maxJ];
        for j=i+1:size(simiMat)
            
            tempArr=v4FindMax(simiMat{i,j});
            
            if(max<tempArr(1))
                max=tempArr(1);
                maxI=tempArr(2);
                maxJ=tempArr(3);
                piece=j;
            end
            
        end
      
        findMaxArray{i}=[i,maxI,piece,maxJ];
    end
 

end 
