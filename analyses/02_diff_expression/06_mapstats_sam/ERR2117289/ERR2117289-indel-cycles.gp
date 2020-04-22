
        set terminal png size 600,400 truecolor
        set output "ERR2117289-indel-cycles.png"
        set grid xtics ytics y2tics back lc rgb "#cccccc"
        set style line 1 linetype 1  linecolor rgb "red"
        set style line 2 linetype 2  linecolor rgb "black"
        set style line 3 linetype 3  linecolor rgb "green"
        set style line 4 linetype 4  linecolor rgb "blue"
        set style increment user
        set ylabel "Indel count"
        set xlabel "Read Cycle"
        set title "ERR2117289.stats" noenhanced
    plot '-' w l ti 'Insertions (fwd)', '' w l ti 'Insertions (rev)', '' w l ti 'Deletions (fwd)', '' w l ti 'Deletions (rev)'
3	0
4	378
5	314
6	132
7	90
8	48
9	61
10	117
11	99
12	85
13	74
14	68
15	97
16	80
17	109
18	122
19	110
20	90
21	77
22	64
23	72
24	76
25	78
26	83
27	108
28	85
29	75
30	94
31	87
32	58
33	110
34	86
35	120
36	94
37	90
38	128
39	98
40	97
41	105
42	85
43	70
44	85
45	92
46	78
47	87
48	115
49	109
50	107
51	83
52	144
53	121
54	109
55	168
56	171
57	161
58	90
59	156
60	146
61	79
62	73
63	98
64	98
65	91
66	80
67	73
68	79
69	71
70	94
71	90
72	76
73	87
74	93
75	112
76	68
77	69
78	48
79	72
80	82
81	62
82	124
83	68
84	85
85	64
86	78
87	77
88	96
89	82
90	86
91	103
92	82
93	80
94	82
95	74
96	68
97	63
98	64
99	61
100	48
101	86
102	93
103	125
104	117
105	79
106	58
107	95
108	75
109	50
110	63
111	44
112	56
113	57
114	50
115	58
116	34
117	36
118	28
119	24
120	55
121	81
122	508
123	814
end
3	0
4	58
5	48
6	70
7	94
8	201
9	348
10	928
11	1164
12	2600
13	749
14	265
15	153
16	126
17	103
18	127
19	116
20	105
21	119
22	85
23	121
24	90
25	117
26	101
27	138
28	117
29	84
30	69
31	80
32	71
33	60
34	96
35	89
36	78
37	72
38	81
39	107
40	84
41	98
42	90
43	85
44	90
45	118
46	108
47	85
48	98
49	97
50	81
51	97
52	87
53	86
54	113
55	113
56	97
57	107
58	80
59	88
60	84
61	92
62	119
63	86
64	93
65	98
66	90
67	76
68	80
69	99
70	101
71	94
72	89
73	91
74	121
75	80
76	72
77	81
78	68
79	90
80	103
81	53
82	72
83	78
84	92
85	82
86	94
87	68
88	88
89	86
90	81
91	54
92	91
93	63
94	81
95	75
96	78
97	81
98	86
99	83
100	73
101	72
102	100
103	59
104	69
105	80
106	63
107	67
108	66
109	72
110	74
111	77
112	85
113	76
114	56
115	67
116	51
117	72
118	58
119	86
120	98
121	67
122	157
123	613
end
3	2517
4	1121
5	454
6	226
7	314
8	298
9	448
10	446
11	373
12	354
13	422
14	489
15	527
16	558
17	569
18	443
19	476
20	425
21	628
22	574
23	545
24	484
25	439
26	440
27	419
28	477
29	457
30	419
31	511
32	538
33	598
34	481
35	533
36	499
37	531
38	571
39	623
40	635
41	544
42	473
43	471
44	497
45	503
46	536
47	500
48	497
49	521
50	479
51	445
52	487
53	554
54	614
55	525
56	519
57	665
58	513
59	496
60	556
61	464
62	471
63	519
64	485
65	433
66	546
67	570
68	486
69	494
70	470
71	433
72	495
73	506
74	433
75	452
76	473
77	491
78	453
79	445
80	487
81	475
82	452
83	502
84	449
85	452
86	496
87	474
88	497
89	436
90	467
91	426
92	458
93	432
94	421
95	408
96	422
97	440
98	447
99	471
100	434
101	435
102	425
103	414
104	360
105	416
106	386
107	381
108	377
109	454
110	382
111	427
112	415
113	416
114	439
115	403
116	374
117	365
118	309
119	390
120	295
121	286
122	281
123	208
end
3	248
4	331
5	343
6	383
7	414
8	484
9	477
10	498
11	465
12	529
13	543
14	559
15	540
16	485
17	481
18	511
19	497
20	532
21	537
22	463
23	549
24	521
25	517
26	532
27	592
28	588
29	438
30	500
31	509
32	515
33	561
34	525
35	507
36	583
37	578
38	546
39	542
40	506
41	567
42	506
43	569
44	597
45	531
46	523
47	572
48	523
49	508
50	608
51	566
52	502
53	492
54	543
55	491
56	546
57	537
58	566
59	550
60	521
61	557
62	565
63	524
64	525
65	570
66	556
67	484
68	569
69	556
70	583
71	530
72	531
73	541
74	502
75	512
76	552
77	576
78	550
79	480
80	497
81	496
82	517
83	511
84	492
85	528
86	426
87	499
88	470
89	488
90	493
91	501
92	468
93	486
94	486
95	560
96	502
97	519
98	443
99	474
100	499
101	485
102	426
103	455
104	448
105	410
106	518
107	508
108	486
109	477
110	497
111	453
112	458
113	429
114	444
115	495
116	443
117	445
118	422
119	446
120	653
121	994
122	1347
123	542
end
