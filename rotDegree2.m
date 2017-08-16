function [edgeNumber,rotDegree,deney]=rotDegree2(edgeNumber,tempArr)

    %[4 2 1 3] - [up down right left]
    imageEdges=edgeNumber{tempArr(1)}; 
  
    deney=0;
    
    pos=[4 2 1 3 ; 3 1 4 2 ; 2 4 3 1 ; 1 3 2 4];
    
    % pos(1) rot 0 --- pos(2) rot 90 --- pos(3) rot 180 --- pos(4) rot 270    
    rotTable=[2 1 0 3 ; 3 2 1 0 ; 0 3 2 1 ; 1 0 3 2];
    
    for x=1:4
        
        if pos(x,1)== imageEdges(1) 
            for y=1:4
                   
                if tempArr(2) == y
                   
                    deney= mod((x+y-1),4);
                    if deney ==0  
                        deney=4;
                    end
                            %fprintf('deney %d \n' ,deney);
                    for z=1:4
                        
                        if tempArr(4) == z                            
                            
                           rotDegree = mod(   rotTable(y,z) +(x-1)  ,4);
                           
                        end
                    end
                end
            end
        end
    end
    
    if rotDegree == 0
        edgeNumber{tempArr(3)}=pos(1,:);
        elseif rotDegree == 1
            edgeNumber{tempArr(3)}=pos(2,:);
        elseif rotDegree == 2
            edgeNumber{tempArr(3)}=pos(3,:);
        else
            edgeNumber{tempArr(3)}=pos(4,:);
    end
   
end