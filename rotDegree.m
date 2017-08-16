function [edgeNumber,rotDegree,deney]=rotDegree(edgeNumber,tempArr)
    %{
    
%}
    imageEdges=edgeNumber{tempArr(1)}; %[4 2 1 3] % []
    %rotValue = tempArr(4)
    deney=0;
    
  if imageEdges(1)== 4
      
      
        if tempArr(2)==1
            %yerleþme deðeri 1dir
            deney=1;
             if tempArr(4) == 1
                 rotDegree = 2;
                 %burda neresinde olduðnu bilcez.
             elseif tempArr(4) == 2
                 rotDegree = 1;
             elseif tempArr(4) == 3
                 rotDegree = 0;
             else 
                 rotDegree =3;
             end
        elseif tempArr(2)==2
            deney=2;
              if tempArr(4) == 1
                 rotDegree = 3;
             elseif tempArr(4) == 2
                 rotDegree = 2;
             elseif tempArr(4) == 3
                 rotDegree = 1;
             else 
                 rotDegree =0;
              end
        elseif tempArr(2)==3
            deney=3;
             if tempArr(4) == 1
                 rotDegree = 0;
             elseif tempArr(4) == 2
                 rotDegree = 3;
             elseif tempArr(4) == 3
                 rotDegree = 2;
             else 
                 rotDegree =1;
             end
        else
            deney=4
              if tempArr(4) == 1
                 rotDegree = 1;
             elseif tempArr(4) == 2
                 rotDegree = 0;
             elseif tempArr(4) == 3
                 rotDegree = 3;
             else 
                 rotDegree = 2;
              end
        end
        
        
  elseif imageEdges(1)== 3
      
      
       if tempArr(2)==1
           deney=2;
              if tempArr(4) == 1
                 rotDegree = 3;
             elseif tempArr(4) == 2
                 rotDegree = 2;
             elseif tempArr(4) == 3
                 rotDegree = 1;
             else 
                 rotDegree =0;
             end
     elseif tempArr(2)==2
         deney=3;
             if tempArr(4) == 1
                 rotDegree = 0;
             elseif tempArr(4) == 2
                 rotDegree = 3;
             elseif tempArr(4) == 3
                 rotDegree = 2;
             else 
                 rotDegree =1;
             end
     elseif tempArr(2)==3
         deney=4;
              if tempArr(4) == 1
                 rotDegree = 1;
             elseif tempArr(4) == 2
                 rotDegree = 0;
             elseif tempArr(4) == 3
                 rotDegree = 3;
             else 
                 rotDegree =2;
             end
       else
           deney=1;
              if tempArr(4) == 1
                 rotDegree = 2;
             elseif tempArr(4) == 2
                 rotDegree = 1;
             elseif tempArr(4) == 3
                 rotDegree = 0;
             else 
                 rotDegree =3;
             end
         
       end
     
  elseif imageEdges(1)== 2
      
       if tempArr(2)==1
           deney=3;
              if tempArr(4) == 1
                 rotDegree = 0;
             elseif tempArr(4) == 2
                 rotDegree = 3;
             elseif tempArr(4) == 3
                 rotDegree = 2;
             else 
                 rotDegree =1;
             end
        elseif tempArr(2)==2
            deney=4;
              if tempArr(4) == 1
                 rotDegree = 1;
             elseif tempArr(4) == 2
                 rotDegree = 0;
             elseif tempArr(4) == 3
                 rotDegree = 3;
             else 
                 rotDegree = 2;
             end
         elseif tempArr(2)==3
             deney=1;
              if tempArr(4) == 1
                 rotDegree = 2;
             elseif tempArr(4) == 2
                 rotDegree = 1;
             elseif tempArr(4) == 3
                 rotDegree = 0;
             else 
                 rotDegree =3;
             end
       else
             deney=2;
              if tempArr(4) == 1
                 rotDegree = 3;
             elseif tempArr(4) == 2
                 rotDegree = 2;
             elseif tempArr(4) == 3
                 rotDegree = 1;
             else 
                 rotDegree =0;
             end
        end
  else
      if tempArr(2)==1
          deney=4;
              if tempArr(4) == 1
                 rotDegree = 1;
             elseif tempArr(4) == 2
                 rotDegree = 0;
             elseif tempArr(4) == 3
                 rotDegree = 3;
             else 
                 rotDegree =2;
             end
        elseif tempArr(2)==2
            deney=1;
              if tempArr(4) == 1
                 rotDegree = 2;
             elseif tempArr(4) == 2
                 rotDegree = 1;
             elseif tempArr(4) == 3
                 rotDegree = 0;
             else 
                 rotDegree = 3;
             end
         elseif tempArr(2)==3
             deney=2;
              if tempArr(4) == 1
                 rotDegree = 3;
             elseif tempArr(4) == 2
                 rotDegree = 2;
             elseif tempArr(4) == 3
                 rotDegree = 1;
             else 
                 rotDegree =0;
             end
      else
             deney=3;
              if tempArr(4) == 1
                 rotDegree = 0;
             elseif tempArr(4) == 2
                 rotDegree = 3;
             elseif tempArr(4) == 3
                 rotDegree = 2;
             else 
                 rotDegree = 1;
             end
        end
      
  end
  
  if rotDegree == 0
        edgeNumber{tempArr(3)}=[4 2 1 3];
    elseif rotDegree == 1
        edgeNumber{tempArr(3)}=[3 1 4 2];
    elseif rotDegree == 2
        edgeNumber{tempArr(3)}=[2 4 3 1];
    else
        edgeNumber{tempArr(3)}=[1 3 2 4];
   end
end