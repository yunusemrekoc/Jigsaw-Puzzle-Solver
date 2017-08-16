function image=resultImageFromArray(result,dataset)

blackImage=dataset{1}*0;
%eðer -1 se 000 lýk kara yerleþtirecek
    for i=1:length(result)
        for j=1: length(result)
            if(result{i,j}~=-1)
                
                
                temp=result{i,j};
                tempIm{i,j}=imrotate(dataset{temp(2)},-90*temp(3));
            
                
                
            else  
                tempIm{i,j}= blackImage;
            end
        end
    end






image=cell2mat(tempIm);
end