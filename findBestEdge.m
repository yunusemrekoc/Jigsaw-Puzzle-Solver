function [retVal,flagArr]=findBestEdge(emptyEdge,simiMat,flagArr)
dbstop if error
i = 1;
max = -1;
piece = 0;
piece_edge = 0;
bestEdge = [0 0];
while(i<length(emptyEdge))
    
    a=emptyEdge{i}(1);
    b=emptyEdge{i}(2);
    %fonksiyon hi� bir zaman kendinden k���k dataset s�ral� bir resimi
    %yerine yerle�tiremez.Mesela 7 -2 ile ba�lay�p hata veriyor sebebi
    %7-2 ye uygun par�an�n dataset de�eri 7 den k���k ve bu y�zden hi� bir
    %zaman + bir de�er bulamay�p patl�yor.
    %bunu d�zeltmek i�in simiMat matrisininin t�m elemanlar�n� doldurup
    %alttaki ilk foru hep ba�tan ba�lat�p her�ey i�in k�yaslamam�z
    %gerekiyor.
    
    for s=1:length(simiMat)
        for t=1:4
            temp=simiMat{a,s}(b,t);
            if flagArr(s)~=1
                if max < temp{1,1}
                    max = (simiMat{a,s}{b,t}(1,1));
                    piece=s;
                    piece_edge=t;
                    bestEdge=[a,b];
                   
                end
            end
        end
    end


i=i+1;
end
    retVal=[bestEdge(1) bestEdge(2) piece piece_edge];
  
    flagArr(piece)=1;
end