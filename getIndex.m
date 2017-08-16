function retVal=getIndex(resultSet,ImNumber)


    for a=1:length(resultSet)    
        for b=1:length(resultSet)
           if(resultSet{a,b}~=-1)
               if(resultSet{a,b}(2)==ImNumber)
                    k=a;
                    j=b;

                    break;
               end
           end
        end
    end
    
    retVal=[k j];
end