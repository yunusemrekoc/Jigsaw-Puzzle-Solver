function r=isEmpty(resultSet,edgeNumber)
%if lerin içindeli r nin ikinci deðeri gelecek olan matrisden çekilecek.
a=1;
x=1;
    while(x<length(resultSet))
    y=1;
        while(y<length(resultSet))
        
            if(resultSet{x,y}~=-1)
               tempEdge=edgeNumber{resultSet{x,y}(2)};
                if(resultSet{x,y+1}==-1)
                      r{a}=[resultSet{x,y}(2),tempEdge(3)];
                     a=a+1;
                end
                
                if(resultSet{x+1,y}==-1)
                    r{a}=[resultSet{x,y}(2),tempEdge(2)];
                    a=a+1;
                end


                if(resultSet{x,y-1}==-1)

                     r{a}=[resultSet{x,y}(2),tempEdge(4)];
                     a=a+1;
                end
                
                if(resultSet{x-1,y}==-1)
                     r{a}=[resultSet{x,y}(2),tempEdge(1)];
                     a=a+1;
                end

        end
        y=y+1;
    end
    x=x+1;
end
  

end