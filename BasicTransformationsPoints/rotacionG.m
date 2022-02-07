function R = rotacionG(P,grados)
    P=arrayToMatrix(P);
    figure(1);
    subplot(2,1,1);
    plot(P(:,1),P(:,2));
    grid on;
    axiscenter();
    I=eye(3);
    angulo = (grados*pi)/180;
    I(1,1)=cos(angulo);
    I(1,2)=-sin(angulo);
    I(2,1)=sin(angulo);
    I(2,2)=cos(angulo);
    R=zeros(size(P,1), 3);
    for j=1:size(P,1)
        R(j,:)=I*P(j,:)';
    end
    subplot(2,1,2);
    plot(R(:,1),R(:,2));
    grid on;
    axiscenter();
end