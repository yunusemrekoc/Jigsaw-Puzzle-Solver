function r= Corr(image1,image2)
 
 
    for k=1:4    
       p1side = image1(:,end,:); 
        image1=imrotate(image1,90);
        for l=1:4
            p2side = image2(end:-1:1,end, :);         
            R{k,l}=corr2(p1side,p2side);
          
            image2=imrotate(image2,90);
        end
    end

    r=R;
end