function R = mainFun(imgstr, percentage, colors, database)
    img =imread(imgstr);
    figure(1);
    subplot(2,2,1);
    imshow(img);
    title('Original Image');
    comparedccv = cell(size(database,1), 2);
    queryccv = ComputeCCV(img, percentage, colors);
    for i = 1:size(database,1)
        comparedccv{i, 1} = compareCCV(queryccv, database{i,1});
        comparedccv{i, 2} = database{i,2};
    end
    
    [~, idx] = sort([comparedccv{:,1}], 'ascend'); 
    sortedcvv = comparedccv(idx,:);

    for i = 1:3
        imgtemp = imread(sortedcvv{i,2});
        subplot(2,2,i+1);
        imshow(imgtemp);
        title(strcat('similar image:  ', int2str(i)));
        disp('rank')
        disp(sortedcvv{i,1})
    end
end