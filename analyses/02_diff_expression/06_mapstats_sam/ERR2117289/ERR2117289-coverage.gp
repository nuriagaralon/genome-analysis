
            set terminal png size 600,400 truecolor
            set output "ERR2117289-coverage.png"
            set grid xtics ytics y2tics back lc rgb "#cccccc"
            set ylabel "Number of mapped bases"
            set xlabel "Coverage"
            set log y
            set style fill solid border -1
            set title "ERR2117289.stats" noenhanced
            set xrange [:1000]
            plot '-' with lines notitle
        1	73400
2	73143
3	66419
4	57454
5	56780
6	52223
7	49561
8	46608
9	43427
10	40581
11	39769
12	38427
13	37199
14	35146
15	34392
16	33283
17	32469
18	31678
19	30682
20	31042
21	30436
22	29662
23	30118
24	28858
25	27989
26	26822
27	26761
28	25770
29	25178
30	24410
31	24104
32	23050
33	22217
34	22934
35	21994
36	21120
37	20903
38	20951
39	20382
40	19335
41	18706
42	18415
43	17875
44	17237
45	16459
46	16153
47	15936
48	15916
49	15191
50	15142
51	14703
52	14656
53	14053
54	13342
55	13037
56	12872
57	12083
58	12133
59	11301
60	11462
61	11635
62	11078
63	10930
64	10324
65	10166
66	9946
67	9971
68	9465
69	9318
70	8866
71	8849
72	8484
73	8674
74	8346
75	7859
76	7724
77	7273
78	7023
79	6915
80	7071
81	6842
82	6819
83	6833
84	6998
85	6675
86	6497
87	6168
88	6246
89	6299
90	6380
91	6183
92	5756
93	5695
94	5665
95	5679
96	5595
97	5318
98	5207
99	5220
100	5131
101	5208
102	5090
103	5129
104	5127
105	5159
106	4967
107	4808
108	4776
109	4646
110	4361
111	4375
112	4240
113	4406
114	4373
115	4232
116	4201
117	3927
118	4173
119	4042
120	3943
121	4061
122	3842
123	3865
124	3781
125	3721
126	3698
127	3610
128	3552
129	3532
130	3297
131	3232
132	3228
133	3182
134	2938
135	2919
136	2852
137	2910
138	2767
139	2719
140	2829
141	2689
142	2651
143	2614
144	2559
145	2533
146	2533
147	2650
148	2329
149	2335
150	2428
151	2346
152	2428
153	2298
154	2393
155	2276
156	2248
157	2160
158	2227
159	2233
160	2067
161	1892
162	1807
163	1935
164	1888
165	1793
166	1864
167	1863
168	1793
169	1723
170	1719
171	1721
172	1669
173	1671
174	1608
175	1562
176	1589
177	1567
178	1537
179	1571
180	1521
181	1474
182	1462
183	1372
184	1400
185	1340
186	1292
187	1361
188	1297
189	1354
190	1285
191	1238
192	1254
193	1256
194	1266
195	1235
196	1209
197	1164
198	1259
199	1217
200	1126
201	1170
202	1155
203	1225
204	1188
205	1171
206	1139
207	1212
208	1168
209	1091
210	1031
211	1118
212	1104
213	1099
214	1034
215	993
216	991
217	989
218	1008
219	940
220	927
221	932
222	933
223	845
224	910
225	909
226	829
227	885
228	879
229	807
230	805
231	905
232	814
233	810
234	773
235	804
236	802
237	807
238	837
239	777
240	808
241	840
242	822
243	755
244	725
245	738
246	738
247	692
248	669
249	718
250	699
251	717
252	688
253	675
254	740
255	673
256	719
257	695
258	662
259	679
260	644
261	639
262	684
263	653
264	632
265	592
266	607
267	691
268	671
269	636
270	716
271	666
272	634
273	674
274	652
275	699
276	655
277	699
278	672
279	654
280	685
281	638
282	564
283	660
284	608
285	636
286	596
287	658
288	584
289	593
290	550
291	596
292	529
293	526
294	561
295	513
296	544
297	549
298	555
299	529
300	557
301	556
302	551
303	529
304	565
305	526
306	515
307	549
308	561
309	515
310	508
311	542
312	581
313	543
314	562
315	565
316	607
317	584
318	546
319	534
320	519
321	546
322	478
323	435
324	462
325	423
326	451
327	427
328	449
329	453
330	430
331	449
332	385
333	393
334	442
335	403
336	379
337	385
338	409
339	387
340	434
341	415
342	430
343	416
344	404
345	396
346	404
347	411
348	430
349	385
350	400
351	381
352	387
353	341
354	378
355	355
356	370
357	362
358	383
359	343
360	322
361	327
362	335
363	378
364	406
365	375
366	355
367	367
368	367
369	388
370	328
371	378
372	368
373	363
374	311
375	300
376	310
377	316
378	333
379	325
380	326
381	332
382	317
383	321
384	311
385	312
386	303
387	278
388	323
389	303
390	271
391	293
392	262
393	250
394	258
395	234
396	236
397	237
398	263
399	242
400	242
401	254
402	253
403	234
404	233
405	228
406	237
407	238
408	217
409	250
410	222
411	217
412	183
413	237
414	198
415	203
416	197
417	211
418	226
419	210
420	219
421	216
422	213
423	207
424	223
425	204
426	226
427	210
428	226
429	205
430	205
431	207
432	197
433	216
434	207
435	232
436	228
437	217
438	222
439	223
440	242
441	228
442	184
443	249
444	194
445	206
446	214
447	194
448	200
449	168
450	200
451	211
452	223
453	211
454	207
455	216
456	225
457	224
458	197
459	163
460	182
461	171
462	197
463	188
464	182
465	168
466	194
467	195
468	176
469	189
470	170
471	177
472	201
473	207
474	184
475	215
476	178
477	171
478	151
479	173
480	163
481	183
482	171
483	181
484	184
485	188
486	201
487	183
488	185
489	167
490	148
491	187
492	176
493	166
494	158
495	156
496	130
497	131
498	133
499	132
500	145
501	152
502	137
503	159
504	152
505	168
506	142
507	161
508	169
509	147
510	185
511	158
512	151
513	157
514	150
515	172
516	137
517	168
518	185
519	187
520	176
521	175
522	172
523	165
524	150
525	157
526	174
527	156
528	159
529	153
530	167
531	155
532	142
533	158
534	142
535	152
536	156
537	136
538	138
539	171
540	147
541	137
542	142
543	124
544	137
545	125
546	148
547	131
548	129
549	131
550	133
551	165
552	130
553	139
554	148
555	133
556	124
557	140
558	123
559	142
560	159
561	140
562	133
563	143
564	144
565	146
566	138
567	144
568	150
569	145
570	139
571	141
572	127
573	123
574	129
575	137
576	122
577	115
578	137
579	116
580	123
581	119
582	120
583	115
584	104
585	121
586	119
587	113
588	113
589	116
590	137
591	123
592	103
593	108
594	90
595	95
596	108
597	123
598	98
599	111
600	97
601	113
602	124
603	120
604	100
605	129
606	115
607	116
608	119
609	121
610	115
611	127
612	101
613	101
614	133
615	108
616	105
617	109
618	107
619	85
620	91
621	101
622	101
623	87
624	71
625	79
626	79
627	98
628	95
629	101
630	92
631	103
632	96
633	88
634	87
635	101
636	102
637	98
638	88
639	98
640	102
641	83
642	101
643	102
644	98
645	81
646	107
647	84
648	90
649	88
650	81
651	76
652	82
653	99
654	91
655	73
656	101
657	97
658	95
659	83
660	94
661	95
662	94
663	91
664	77
665	76
666	85
667	65
668	68
669	67
670	72
671	72
672	58
673	84
674	70
675	75
676	85
677	63
678	80
679	83
680	68
681	78
682	67
683	73
684	58
685	81
686	74
687	78
688	62
689	76
690	86
691	67
692	86
693	66
694	61
695	74
696	79
697	63
698	70
699	79
700	73
701	66
702	70
703	76
704	52
705	66
706	74
707	61
708	61
709	67
710	69
711	54
712	73
713	60
714	60
715	61
716	69
717	53
718	70
719	59
720	61
721	66
722	64
723	70
724	70
725	56
726	75
727	74
728	59
729	52
730	57
731	56
732	54
733	51
734	61
735	59
736	46
737	47
738	46
739	56
740	48
741	40
742	51
743	47
744	43
745	44
746	62
747	44
748	57
749	45
750	39
751	48
752	57
753	36
754	39
755	47
756	36
757	54
758	43
759	54
760	42
761	41
762	50
763	46
764	47
765	46
766	50
767	55
768	50
769	58
770	59
771	53
772	45
773	46
774	46
775	49
776	57
777	45
778	46
779	44
780	45
781	55
782	30
783	42
784	41
785	38
786	37
787	38
788	46
789	52
790	55
791	67
792	50
793	46
794	46
795	37
796	43
797	39
798	56
799	44
800	53
801	30
802	29
803	39
804	44
805	42
806	46
807	36
808	46
809	46
810	37
811	33
812	33
813	50
814	50
815	43
816	29
817	48
818	40
819	35
820	53
821	41
822	44
823	52
824	44
825	54
826	48
827	42
828	53
829	45
830	34
831	42
832	33
833	35
834	45
835	40
836	28
837	31
838	39
839	32
840	35
841	38
842	34
843	37
844	36
845	29
846	33
847	21
848	37
849	37
850	32
851	37
852	26
853	30
854	23
855	29
856	32
857	32
858	27
859	39
860	25
861	26
862	33
863	31
864	32
865	32
866	27
867	37
868	42
869	36
870	43
871	44
872	36
873	31
874	52
875	39
876	34
877	42
878	35
879	37
880	37
881	38
882	39
883	32
884	33
885	41
886	34
887	36
888	42
889	26
890	41
891	35
892	35
893	20
894	38
895	37
896	31
897	29
898	30
899	32
900	31
901	31
902	24
903	35
904	35
905	34
906	37
907	33
908	33
909	30
910	28
911	34
912	29
913	46
914	29
915	34
916	28
917	17
918	31
919	39
920	35
921	31
922	26
923	33
924	33
925	23
926	26
927	24
928	27
929	29
930	37
931	31
932	28
933	23
934	24
935	25
936	19
937	17
938	29
939	20
940	24
941	29
942	27
943	29
944	35
945	31
946	29
947	23
948	25
949	22
950	33
951	32
952	40
953	33
954	35
955	24
956	24
957	34
958	27
959	40
960	34
961	31
962	31
963	30
964	31
965	31
966	23
967	21
968	23
969	25
970	36
971	30
972	27
973	21
974	27
975	25
976	25
977	18
978	19
979	20
980	27
981	28
982	23
983	35
984	20
985	20
986	19
987	19
988	14
989	23
990	11
991	13
992	14
993	16
994	22
995	12
996	21
997	21
998	14
999	20
1000	15
1000	28872
end
