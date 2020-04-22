
        set terminal png size 600,400 truecolor
        set output "ERR2036632-indel-dist.png"
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
        set title "ERR2036632.stats" noenhanced
        plot '-' w l ti 'Insertions', '-' w l ti 'Deletions', '-' axes x1y2 w l ti "Ins/Dels ratio"
    1	136892
2	5738
3	785
4	149
5	55
6	81
7	27
8	3
9	2
10	11
11	9
12	10
13	15
14	10
15	17
16	21
17	0
18	4
19	11
20	4
21	10
22	10
23	4
24	1
25	2
26	5
27	1
28	3
29	1
30	2
31	0
32	0
33	1
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
56	0
57	0
end
1	143886
2	25697
3	4369
4	1304
5	153
6	202
7	118
8	48
9	281
10	20
11	27
12	29
13	18
14	5
15	20
16	1
17	10
18	12
19	5
20	2
21	2
22	16
23	26
24	16
25	26
26	27
27	17
28	4
29	7
30	15
31	10
32	5
33	5
34	22
35	13
36	17
37	5
38	12
39	9
40	20
41	25
42	20
43	1
44	16
45	8
46	4
47	4
48	3
49	3
50	2
51	1
52	10
53	9
54	3
56	1
57	2
end
1	0.951392
2	0.223295
3	0.179675
4	0.114264
5	0.359477
6	0.400990
7	0.228814
8	0.062500
9	0.007117
10	0.550000
11	0.333333
12	0.344828
13	0.833333
14	2.000000
15	0.850000
16	21.000000
17	0.000000
18	0.333333
19	2.200000
20	2.000000
21	5.000000
22	0.625000
23	0.153846
24	0.062500
25	0.076923
26	0.185185
27	0.058824
28	0.750000
29	0.142857
30	0.133333
31	0.000000
32	0.000000
33	0.200000
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
56	0.000000
57	0.000000
end
