%funciton converts RGB values to HEX values and to decimal values
function decMat = rgbtoDec(rgbMat)
    rgbMat= double(rgbMat);
    decMat=(rgbMat(:,:,1)) + (rgbMat(:,:,2)*256) +  (rgbMat(:,:,3)*256*256);
end