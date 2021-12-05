function R = loadDatabase(percentage, colors)
    % Loads the database of images in path
    filePath = 'E:\MatlabCode\MatlabDigitalImageProcessing\Project\database\';
    fileList = dir(filePath);
    R = cell(length(fileList)-2, 2);
    rindex = 1;
    for i = 1:length(fileList)
        if(~fileList(i).isdir)
            fullname = strcat(filePath, fileList(i).name);
            %disp(fullname);
            %img = imread(fullname);
            tempccv = ComputeCCV(imread(fullname), percentage, colors);
            %save the tempccv and fullname to the database
            R{rindex, 1} = tempccv;
            R{rindex, 2} = fullname;
            rindex = rindex + 1;
        end
    end
end