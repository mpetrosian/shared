function newV = sat_old2new(oldV)
% Convert old SAT (M+V) to new (1995) scale
%{
http://professionals.collegeboard.com/data-reports-research/sat/equivalence-tables/sat-mean
Applies to average scores. There is a separate table for individual scores (weird)
%}


tbM = [1600	1600
1590	1600
1580	1600
1570	1600
1560	1600
1550	1600
1540	1600
1530	1600
1520	1600
1510	1600
1500	1600
1490	1600
1480	1580
1470	1560
1460	1550
1450	1530
1440	1520
1430	1510
1420	1490
1410	1480
1400	1470
1390	1460
1380	1440
1370	1430
1360	1420
1350	1410
1340	1400
1330	1390
1320	1380
1310	1370
1290	1350
1280	1340
1270	1330
1260	1320
1250	1310
1240	1310
1230	1300
1220	1290
1210	1280
1200	1270
1190	1260
1180	1250
1170	1240
1160	1240
1150	1230
1140	1220
1130	1210
1120	1200
1110	1190
1100	1180
1090	1180
1080	1170
1070	1160
1060	1150
1050	1140
1040	1130
1030	1120
1020	1120
1010	1110
1000	1100
990	1090
980	1080
970	1070
960	1060
950	1050
940	1050
930	1040
920	1030
910	1020
900	1010
890	1000
880	990
870	980
860	970
850	970
840	960
830	950
820	940
810	930
800	920
790	910
780	900
770	890
760	880
750	870
740	860
730	860
720	850
710	840
700	830
690	820
680	810
670	800
660	790
650	780
640	760
630	750
620	740
610	730
600	720
590	710
580	700
570	680
560	670
550	660
540	650
530	630
520	620
510	610
500	590
490	580
480	560
470	550
460	530
450	510
440	500
430	480
420	460
410	440
400	420];

newV = interp1(tbM(:,1),  tbM(:,2),  oldV,  'linear');


end