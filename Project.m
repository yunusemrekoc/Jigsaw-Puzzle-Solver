clear all;
%{
srcFiles = dir('C:\Users\dektop\Desktop\aaa\*.jpg'); 
j=1;
result=cell(    ((length(srcFiles)*2)-1)   , ((length(srcFiles)*2)-1 )   );
for i = 1 : length(srcFiles)
    filename = strcat('C:\Users\dektop\Desktop\aaa\',srcFiles(i).name);
    I = imread(filename);
    griGoruntu=rgb2gray(I);
    dataset{j}=griGoruntu;
    j=j+1;
   
end
%}

im = imread('C:\Users\yunus\Desktop\at.jpg');

im=imresize(im,[800,800]);
m=4;
im=rgb2gray(im);


s = size(im);

s=size(im);
dr=floor(s(1)/m);
dc=floor(s(2)/m);



for i=1:m
    for j=1:m
        dataset2{i,j}=im(    dr*(i-1)+1    :dr*i,dc*(j-1)+1    :dc*j,:);
    end
end


dataset=cell(1,m*m);
k=1;
for i=1:m
    for j=1:m
        dataset{k}=dataset2{i,j};
        k=k+1;
    end
end

R=rand(m^2,1);
[V,I]=sort(R);
dataset3=dataset;

for i=1:m^2
   
        dataset{i}=dataset3{I(i)};
        
end

dataset{5}=imrotate(dataset{5},90);

result=cell(    ((length(dataset)*2)-1)   , ((length(dataset)*2)-1 )   );

[imw,imh] = size(dataset{1});

for k=1:length(dataset)
    for l=1:length(dataset)
       % if (k>=l)
       %      simiMat{k,l}=0;
       % else
           simiMat{k,l}=Corr(dataset{k},dataset{l});
      %  end
    end
    
    
end
%partIdentifier =findMax(simiMat);

for i =1:size(result)
    
    for j=1:size(result)
        result{i,j} = -1;
    end
end

k=floor(length(result)/2);
j=k;
imageState=1;
flagArr=zeros(1,m*m);
edgeNumber=cell(1,m*m); % up down right left

for(i=1:size(dataset))
    edgeNumber{i}=[4 2 1 3];
end

if imageState==1
       result{k,j}(1) = 1;
       result{k,j}(2) = 1;
       result{k,j}(3) = 0;
       flagArr(1)=1;
      
    end
           
       while(imageState<length(dataset))
            emptyEdge=isEmpty(result,edgeNumber);
            [tempArr,flagArr]=findBestEdge(emptyEdge,simiMat,flagArr);
             baba=getIndex(result,tempArr(1));
             k = baba(1);
             j = baba(2);
              [edgeNumber,rotValue,bambam]=rotDegree2(edgeNumber,tempArr);
              
              indexImage=edgeNumber{tempArr(1)};
              %gelen x 1 se saða koy
                if bambam==1
                    j=j+1;
                    result{k,j}(1)=1;
                    result{k,j}(2)=tempArr(3);                
                    result{k,j}(3)=rotValue;

                elseif bambam==2
                    k=k+1;
                     result{k,j}(1)=1;
                    result{k,j}(2)=tempArr(3);
                    result{k,j}(3)=rotValue;
                elseif bambam==3
                    j=j-1;
                    result{k,j}(1)=1;
                    result{k,j}(2)=tempArr(3);
                    result{k,j}(3)=rotValue;
                elseif bambam==4
                    k=k-1;
                    result{k,j}(1)=1;
                    result{k,j}(2)=tempArr(3);
                    result{k,j}(3)=rotValue;
            end
           imageState=imageState+1;
       end

    
  imshow(resultImageFromArray(result,dataset));
   
    
%{ 

while(imageState<length(dataset))
   
    tempArr=findBestEdge(emptyEdge,simiMat,flagArr);
    
    imageState=imageState+1;
end
        
for i=1: 16
    if i==1
        result{k,j}(1) = 1;
        result{k,j}(2) = 1;
        result{k,j}(3) = 0;
      
     end
    l=1;
    while( partIdentifier{l}(1)~=result{k,j}(2))
        if l==16
            break
        end
        l=l+1;
       
    end
    if partIdentifier{l}(2)==1
        j=j+1;
        result{k,j}(1)=1;
        result{k,j}(2)=partIdentifier{l}(3);
        result{k,j}(3)=partIdentifier{l}(4);
        
    elseif partIdentifier{l}(2)==2
        k=k+1;
         result{k,j}(1)=1;
        result{k,j}(2)=partIdentifier{l}(3);
        result{k,j}(3)=partIdentifier{l}(4);
    elseif partIdentifier{l}(2)==3
        j=j-1;
        result{k,j}(1)=1;
        result{k,j}(2)=partIdentifier{l}(3);
        result{k,j}(3)=partIdentifier{l}(4);
    else
        k=k-1;
        result{k,j}(1)=1;
        result{k,j}(2)=partIdentifier{l}(3);
        result{k,j}(3)=partIdentifier{l}(4);
    end
    
   
end
%}




