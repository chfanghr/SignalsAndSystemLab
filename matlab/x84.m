b=[1 -1.2 0.35];
a=[1 0.25];
[H_z w]=freqz(b,a, 'whole' );
subplot(211)
plot(w,abs(H_z))
title( ' 幅频特性曲线 ' )
grid on
subplot(212)
plot(w,angle(H_z))
title( ' 相频特性曲线 ' )
grid on 