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
    %fonksiyon hiç bir zaman kendinden küçük dataset sýralý bir resimi
    %yerine yerleþtiremez.Mesela 7 -2 ile baþlayýp hata veriyor sebebi
    %7-2 ye uygun parçanýn dataset deðeri 7 den küçük ve bu yüzden hiç bir
    %zaman + bir deðer bulamayýp patlýyor.
    %bunu düzeltmek için simiMat matrisininin tüm elemanlarýný doldurup
    %alttaki ilk foru hep baþtan baþlatýp herþey için kýyaslamamýz
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