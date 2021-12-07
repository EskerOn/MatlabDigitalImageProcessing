%function to calculate the color Coherence vector of an image
%This function discretize the color  and converts the RGB Image to one channel image 
function Res = ComputeCCV(img, imgsizepercent, nbins)
    %imgsizepercent to number of pixels according to the size of the image

    imT = ceil(numel(img(:,:,1))/100*imgsizepercent);
    
    ColorCoherenceVector = zeros(nbins,2);
    %blur the image 8 neighbour pixels 
    img = imfilter(img,fspecial('average',[9 9]),'replicate');
    decMatrix = rgbtoDec(img);
    
    %decMatrix =img;
    %discretize the color space to nbins
    maxv=max(max(decMatrix));
    minv=min(min(decMatrix));
    binsize = ceil( (1+maxv-minv) / nbins );
    b = mod( (1+maxv-minv) , nbins );
    maxedge=maxv+b;
    myEdges=minv:binsize:maxedge;
    disMat = discretize(decMatrix,myEdges);
    
    %disMat = discretize(decMatrix,nbins);
    
    %disp(disMat);
    %Determining the pixel groups by computing connected components for each value of the discretized image
    for i = 1:nbins
        [L,num] = bwlabel(disMat==i);
        coherentsum=0;
        incoherentsum=0;
        %classify the pixel groups according to the number of connected components as coherent or incoherent
        for j = 1:num
            idx=L==j;
            out=sum(idx(:));
            if out>imT
                coherentsum=coherentsum+out;
            else
                incoherentsum=incoherentsum+out;
            end
        end
        %calculate the color coherence vector
        ColorCoherenceVector(i,:) = [coherentsum,incoherentsum];
    end
    Res = ColorCoherenceVector;
end
