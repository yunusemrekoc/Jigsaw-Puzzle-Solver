Im= imread('C:\Users\dektop\Desktop\161.jpg');

m=8;
k=1;
s=size(Im);
dr=floor(s(1)/m);
dc=floor(s(2)/m);
for i=1:m
    for j=1:m        
        D{i,j}=Im(dr*(i-1)+1:dr*i,dc*(j-1)+1:dc*j,:);
        imwrite(D{i,j},'C:\Users\dektop\Desktop\aaa\',['picture_', num2str(k)],'.jpg');
        k=k+1;
    end
end
