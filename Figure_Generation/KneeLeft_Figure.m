clc;
clear;


XN1=[0.104
    1.04
    2.287
    3.119
    4.366
    5.613
    6.445
    7.277
    8.316
    9.563
    10.603
    11.85
    12.682
    13.721
    14.761
    15.8
    17.048
    18.087
    18.919
    19.958
    20.998
    22.245
    23.077
    24.116
    24.948
    25.572
    26.403
    27.235
    28.274
    29.73
    30.561
    31.393
    32.225
    33.264
    34.304
    35.551
    37.214
    38.462
    39.709
    40.333
    41.58
    43.035
    44.075
    45.322
    46.362
    47.609
    48.649
    49.896
    50.936
    51.767
    52.391
    53.222
    54.262
    55.301
    56.133
    ];

XN2=[57.173
    58.004
    58.42
    59.459
    60.291
    60.707
    61.538
    62.578
    63.41
    63.825
    64.657
    65.489
    66.32
    67.152
    68.607
    69.439
    70.27
    71.518
    72.765
    73.805
    74.636
    75.468
    76.507
    77.547
    78.586
    79.418
    79.834
    80.457
    81.081
    81.497
    82.121
    82.952
    83.368
    83.992
    84.615
    85.239
    85.655
    86.279
    86.486
    87.11
    87.526
    87.942
    88.358
    89.189
    89.813
    90.437
    91.268
    92.308
    93.139
    94.179
    95.01
    96.05
    97.505
    98.545
    100.104];

YN1=[2.857
    4.196
    5.804
    6.875
    8.214
    9.286
    10.357
    11.429
    12.232
    13.304
    13.839
    14.643
    15.179
    15.446
    15.714
    15.179
    14.643
    13.839
    13.036
    12.232
    11.161
    9.821
    8.482
    7.143
    6.339
    5.536
    4.732
    3.929
    2.589
    1.518
    0.982
    0.446
    -0.357
    -0.625
    -0.893
    -0.893
    -0.625
    -0.625
    -0.625
    0.446
    1.25
    2.321
    3.393
    4.732
    5.804
    6.875
    7.946
    9.554
    11.161
    12.768
    14.375
    15.446
    17.589
    19.196
    21.071
    ];

YN2=[22.946
    24.554
    26.429
    28.304
    29.643
    31.518
    33.661
    35.536
    37.679
    39.286
    41.161
    42.232
    43.571
    45.179
    46.518
    47.321
    47.857
    47.857
    48.125
    47.589
    46.518
    45.714
    44.911
    43.304
    42.5
    41.161
    40.089
    39.018
    37.946
    36.607
    35
    33.393
    31.518
    29.375
    28.036
    26.696
    25.089
    22.679
    21.339
    20
    18.661
    17.589
    15.446
    13.571
    11.696
    10.089
    8.482
    7.143
    5.804
    4.464
    3.929
    3.125
    2.589
    2.857
    3.125];
X1=[XN1;XN2];
Y1=[YN2;YN1];
figure;
plot(X1,Y1);
title('Left Knee Cycle with data');
xlabel('% Cycle');
Wa=polyfit(X1,Y1,15);
%
syms t
x=Wa(1)*t.^15+Wa(2)*t.^14+Wa(3)*t.^13+Wa(4)*t.^12+Wa(5)*t.^11++Wa(6)*t.^10+Wa(7)*t.^9+Wa(8)*t.^8+Wa(9)*t.^7+Wa(10)*t.^6+Wa(11)*t.^5+Wa(12)*t.^4+Wa(13)*t.^3+Wa(14)*t.^2+Wa(15).*t+Wa(16);
x=vpa(x,10);

xd=diff(x,t);
xd=vpa(xd,10);

xdd=diff(xd,t);
xdd=vpa(xdd,10);


figure;
tt=0:0.01:100;
xknee=Wa(1)*tt.^15+Wa(2)*tt.^14+Wa(3)*tt.^13+Wa(4)*tt.^12+Wa(5)*tt.^11++Wa(6)*tt.^10+Wa(7)*tt.^9+Wa(8)*tt.^8+Wa(9)*tt.^7+Wa(10)*tt.^6+Wa(11)*tt.^5+Wa(12)*tt.^4+Wa(13)*tt.^3+Wa(14)*tt.^2+Wa(15).*tt+Wa(16);
plot(tt,xknee);
title('Left Knee Cycle');
xlabel('% Cycle');

