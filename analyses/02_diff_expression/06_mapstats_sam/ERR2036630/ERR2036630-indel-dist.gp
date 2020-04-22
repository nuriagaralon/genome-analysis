
        set terminal png size 600,400 truecolor
        set output "ERR2036630-indel-dist.png"
        set grid xtics ytics y2tics back lc rgb "#cccccc"
        set style line 1 linetype 1  linecolor rgb "red"
        set style line 2 linetype 2  linecolor rgb "black"
        set style line 3 linetype 3  linecolor rgb "green"
        set style increment user
        set ylabel "Indel count [log]"
        set xlabel "Indel length"
        set y2label "Insertions/Deletions ratio"
        set log y
        set y2tics nomirror
        set ytics nomirror
        set title "ERR2036630.stats" noenhanced
        plot '-' w l ti 'Insertions', '-' w l ti 'Deletions', '-' axes x1y2 w l ti "Ins/Dels ratio"
    1	27354
2	727
3	101
4	61
5	49
6	45
7	39
8	18
9	29
10	26
11	30
12	11
13	24
14	20
15	17
16	18
17	14
18	17
19	1
20	13
21	14
22	13
23	11
24	10
25	6
26	7
27	4
28	4
29	1
30	0
31	1
32	0
33	0
34	0
35	0
36	0
37	0
38	0
39	0
40	0
41	0
42	0
43	0
44	0
45	0
46	0
47	0
48	0
49	0
50	0
51	0
52	0
53	0
54	0
55	0
56	0
57	0
58	0
end
1	94156
2	22949
3	2042
4	320
5	125
6	69
7	60
8	34
9	58
10	36
11	28
12	49
13	130
14	58
15	24
16	56
17	50
18	29
19	41
20	45
21	65
22	18
23	34
24	21
25	26
26	22
27	32
28	37
29	64
30	44
31	13
32	20
33	82
34	24
35	41
36	15
37	6
38	12
39	17
40	22
41	13
42	27
43	9
44	17
45	6
46	75
47	14
48	10
49	14
50	5
51	7
52	5
53	12
54	6
55	4
56	4
57	2
58	2
end
1	0.290518
2	0.031679
3	0.049461
4	0.190625
5	0.392000
6	0.652174
7	0.650000
8	0.529412
9	0.500000
10	0.722222
11	1.071429
12	0.224490
13	0.184615
14	0.344828
15	0.708333
16	0.321429
17	0.280000
18	0.586207
19	0.024390
20	0.288889
21	0.215385
22	0.722222
23	0.323529
24	0.476190
25	0.230769
26	0.318182
27	0.125000
28	0.108108
29	0.015625
30	0.000000
31	0.076923
32	0.000000
33	0.000000
34	0.000000
35	0.000000
36	0.000000
37	0.000000
38	0.000000
39	0.000000
40	0.000000
41	0.000000
42	0.000000
43	0.000000
44	0.000000
45	0.000000
46	0.000000
47	0.000000
48	0.000000
49	0.000000
50	0.000000
51	0.000000
52	0.000000
53	0.000000
54	0.000000
55	0.000000
56	0.000000
57	0.000000
58	0.000000
end
