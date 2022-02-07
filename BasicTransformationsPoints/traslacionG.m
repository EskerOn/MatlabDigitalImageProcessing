function R = traslacionG(P,tx,ty)
    P=arrayToMatrix(P);
    figure(1);
    subplot(2,1,1);
    plot(P(:,1),P(:,2));
    grid on;
    axiscenter();
    I=eye(3);
    I(1,3)=tx;
    I(2,3)=ty;
    R=zeros(size(P,1), 3);
    for j=1:size(P,1)
        R(j,:)=I*P(j,:)';
    end
    subplot(2,1,2);
    plot(R(:,1),R(:,2));
    grid on;
    axiscenter();
end