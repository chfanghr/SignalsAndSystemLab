b=[4 4];
a=[1 7/6 1/3];
[H_z w]=freqz(b,a, 'whole' );
subplot(211)
plot(w,abs(H_z))
title('幅频特性曲线')
grid on
subplot(212)
plot(w,angle(H_z))
title('相频特性曲线')
grid on 