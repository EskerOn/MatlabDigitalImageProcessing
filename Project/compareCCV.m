function R = compareCCV(ccv1, ccv2)
%COMPARECCV Compares two Color coherece vectors
%   R = compareCCV(ccv1, ccv2)
%   ccv1 and ccv2 are two color coherence vectors.

%R = sum(abs(ccv1(:,1)-ccv2(:,1))+abs(ccv1(:,2)-ccv2(:,2)));
 
 R = sum(sum(abs((ccv1(:,1)-ccv2(:,1))/(ccv1(:,1)+ccv2(:,1) +1))+abs((ccv1(:,2)-ccv2(:,2))/ (ccv1(:,2)+ccv2(:,2)+1))));
end