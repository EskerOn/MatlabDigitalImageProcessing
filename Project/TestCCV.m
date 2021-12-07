%function to calculate the color Coherence vector of an image
%This function discretize the color  and converts the RGB Image to one channel image 
function Res = TestCCV(img, nbins)
    %imgsizepercent to number of pixels according to the size of the image
    imT = 4;

    ColorCoherenceVector = zeros(nbins,2);
    %blur the image 8 neighbour pixels 
    %img = imfilter(img,fspecial('average',[9 9]),'replicate');
    decMatrix = img;
    [n,m]=size(img);
    
    maxv=max(max(img));
    minv=min(min(img));
    binsize = ceil( (1+maxv-minv) / nbins );
    b = mod( (1+maxv-minv) , nbins );
    disp(b+maxv)
    myEdges=minv:binsize:maxv+b;
    
    disMat = discretize(decMatrix,myEdges);
    disp(disMat);
    %Determining the pixel groups by computing connected components for each value of the discretized image
    displayexample=zeros(n,m);
    temp=1;
    for i = 1:nbins
        [L,num] = bwlabel(disMat==i);
        coherentsum=0;
        incoherentsum=0;
        %classify the pixel groups according to the number of connected components as coherent or incoherent
        
        for j = 1:num
            idx=L==j;
            displayexample = displayexample+(idx*temp);
            out=sum(idx(:));
            if out>imT
                coherentsum=coherentsum+out;
            else
                incoherentsum=incoherentsum+out;
            end
            temp=temp+1;
        end
        %calculate the color coherence vector
        ColorCoherenceVector(i,:) = [coherentsum,incoherentsum];
    end
    %replace values of displayexample with characters 1=A, 2=B, 3=C, 4=D,
    disp(displayexample)
    displayexampleChar = char(displayexample+64);
    disp(displayexampleChar)
    Res = ColorCoherenceVector;
end
