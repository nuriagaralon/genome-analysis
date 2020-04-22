
            set terminal png size 600,500 truecolor
            set output "ERR2036633-quals-hm.png"
            unset key
            unset colorbox
            set palette defined (0 0 0 0, 1 0 0 1, 3 0 1 0, 4 1 0 0, 6 1 1 1)
            set cbrange [0:21380329]
            set yrange  [0:126]
            set xrange  [0:39]
            set view map
            set multiplot
            set rmargin 0
            set lmargin 0
            set tmargin 0
            set bmargin 0
             set origin 0,0.46
 set size 0.95,0.6
            set obj 1 rectangle behind from first 0,0 to first 39,126
            set obj 1 fillstyle solid 1.0 fillcolor rgbcolor "black"
            set ylabel "Cycle (fwd reads)" offset character -1,0
            unset ytics
            set ytics ("10" 10,"20" 20,"30" 30,"40" 40,"50" 50,"60" 60,"70" 70,"80" 80,"90" 90,"100" 100,"110" 110,"120" 120)
            unset xtics
            set title "ERR2036633.stats" noenhanced
            splot '-' matrix with image
        	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	5725333	0	0	0	0	0	16623446	0	0	0	437	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1152486	0	0	0	0	0	0	0	1	0	0	0	0	1586494	0	0	0	0	0	19605356	0	0	0	4879	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	603169	0	0	0	0	0	0	0	1	0	0	0	0	1199794	0	0	0	0	0	20480160	0	0	0	66092	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	416699	0	0	0	0	0	0	0	12	0	0	0	0	1062238	0	0	0	0	0	20150922	0	0	0	719345	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	430899	0	0	0	0	0	0	0	48	0	0	0	0	656287	0	0	0	0	0	13944476	0	0	0	7317506	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	318929	0	0	0	0	0	0	0	163	0	0	0	0	624069	0	0	0	0	0	1370767	0	0	0	20035288	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	246389	0	0	0	0	0	0	0	455	0	0	0	0	366325	0	0	0	0	0	854377	0	0	0	20881670	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	238089	0	0	0	0	0	0	0	706	0	0	0	0	316018	0	0	0	0	0	718397	0	0	0	21076006	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	227876	0	0	0	0	0	0	0	1127	0	0	0	0	291167	0	0	0	0	0	642261	0	0	0	21186785	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	232513	0	0	0	0	0	0	0	1846	0	0	0	0	297419	0	0	0	0	0	627562	0	0	0	21189876	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	217833	0	0	0	0	0	0	0	2296	0	0	0	0	282449	0	0	0	0	0	612549	0	0	0	21234089	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	220640	0	0	0	0	0	0	0	3194	0	0	0	0	295838	0	0	0	0	0	612699	0	0	0	21216845	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	220606	0	0	0	0	0	0	0	4901	0	0	0	0	293594	0	0	0	0	0	618297	0	0	0	21211818	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	213164	0	0	0	0	0	0	0	7043	0	0	0	0	290499	0	0	0	0	0	604172	0	0	0	21234338	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	218680	0	0	0	0	0	0	0	10636	0	0	0	0	300419	0	0	0	0	0	635621	0	0	0	21183860	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	221672	0	0	0	0	0	0	0	13975	0	0	0	0	304920	0	0	0	0	0	650962	0	0	0	21157687	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	222359	0	0	0	0	0	0	0	13805	0	0	0	0	304196	0	0	0	0	0	634303	0	0	0	21174553	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	222409	0	0	0	0	0	0	0	17143	0	0	0	0	302938	0	0	0	0	0	632889	0	0	0	21173837	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	223374	0	0	0	0	0	0	0	20341	0	0	0	0	294537	0	0	0	0	0	623768	0	0	0	21187196	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	222109	0	0	0	0	0	0	0	21405	0	0	0	0	291279	0	0	0	0	0	620172	0	0	0	21194251	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	224712	0	0	0	0	0	0	0	21190	0	0	0	0	292346	0	0	0	0	0	621557	0	0	0	21189411	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	230877	0	0	0	0	0	0	0	21734	0	0	0	0	298725	0	0	0	0	0	629708	0	0	0	21168172	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	237768	0	0	0	0	0	0	0	23226	0	0	0	0	301268	0	0	0	0	0	636928	0	0	0	21150026	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	236209	0	0	0	0	0	0	0	22851	0	0	0	0	302096	0	0	0	0	0	633940	0	0	0	21154120	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	238282	0	0	0	0	0	0	0	22839	0	0	0	0	299181	0	0	0	0	0	628504	0	0	0	21160410	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	255492	0	0	0	0	0	0	0	22768	0	0	0	0	304600	0	0	0	0	0	634136	0	0	0	21132220	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	258324	0	0	0	0	0	0	0	22716	0	0	0	0	310785	0	0	0	0	0	636338	0	0	0	21121053	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	259892	0	0	0	0	0	0	0	22496	0	0	0	0	314211	0	0	0	0	0	642154	0	0	0	21110463	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	264462	0	0	0	0	0	0	0	23306	0	0	0	0	320328	0	0	0	0	0	652906	0	0	0	21088214	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	267852	0	0	0	0	0	0	0	23966	0	0	0	0	322197	0	0	0	0	0	650571	0	0	0	21084630	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	271103	0	0	0	0	0	0	0	23308	0	0	0	0	329474	0	0	0	0	0	655764	0	0	0	21069567	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	278897	0	0	0	0	0	0	0	25955	0	0	0	0	335313	0	0	0	0	0	670649	0	0	0	21038402	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	276206	0	0	0	0	0	0	0	26521	0	0	0	0	337819	0	0	0	0	0	674290	0	0	0	21034380	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	285232	0	0	0	0	0	0	0	29770	0	0	0	0	345633	0	0	0	0	0	696046	0	0	0	20992535	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	292502	0	0	0	0	0	0	0	29775	0	0	0	0	355127	0	0	0	0	0	712841	0	0	0	20958971	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	286482	0	0	0	0	0	0	0	27157	0	0	0	0	349470	0	0	0	0	0	699312	0	0	0	20986795	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	293983	0	0	0	0	0	0	0	26204	0	0	0	0	346635	0	0	0	0	0	696384	0	0	0	20986010	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	307274	0	0	0	0	0	0	0	31934	0	0	0	0	365884	0	0	0	0	0	722808	0	0	0	20921316	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	323099	0	0	0	0	0	0	0	37655	0	0	0	0	390196	0	0	0	0	0	761244	0	0	0	20837022	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	312234	0	0	0	0	0	0	0	36931	0	0	0	0	382631	0	0	0	0	0	757543	0	0	0	20859877	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	311998	0	0	0	0	0	0	0	36104	0	0	0	0	375659	0	0	0	0	0	757142	0	0	0	20867664	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	323177	0	0	0	0	0	0	0	37536	0	0	0	0	376716	0	0	0	0	0	770994	0	0	0	20839529	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	324726	0	0	0	0	0	0	0	39658	0	0	0	0	385816	0	0	0	0	0	780837	0	0	0	20816246	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	331449	0	0	0	0	0	0	0	40641	0	0	0	0	385191	0	0	0	0	0	784820	0	0	0	20804431	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	331737	0	0	0	0	0	0	0	40823	0	0	0	0	389298	0	0	0	0	0	792475	0	0	0	20791395	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	341754	0	0	0	0	0	0	0	41898	0	0	0	0	401535	0	0	0	0	0	814277	0	0	0	20745331	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	351337	0	0	0	0	0	0	0	41266	0	0	0	0	408098	0	0	0	0	0	833374	0	0	0	20709732	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	345709	0	0	0	0	0	0	0	44265	0	0	0	0	411010	0	0	0	0	0	841372	0	0	0	20700567	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	350280	0	0	0	0	0	0	0	45718	0	0	0	0	418102	0	0	0	0	0	857625	0	0	0	20670196	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	357970	0	0	0	0	0	0	0	49131	0	0	0	0	431014	0	0	0	0	0	882078	0	0	0	20620658	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	365715	0	0	0	0	0	0	0	48601	0	0	0	0	441097	0	0	0	0	0	908275	0	0	0	20575997	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	372744	0	0	0	0	0	0	0	45726	0	0	0	0	445988	0	0	0	0	0	905907	0	0	0	20568123	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	386860	0	0	0	0	0	0	0	43795	0	0	0	0	461622	0	0	0	0	0	925772	0	0	0	20519076	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	397686	0	0	0	0	0	0	0	47925	0	0	0	0	479589	0	0	0	0	0	988935	0	0	0	20421475	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	427066	0	0	0	0	0	0	0	54035	0	0	0	0	506071	0	0	0	0	0	1057082	0	0	0	20289679	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	445932	0	0	0	0	0	0	0	58126	0	0	0	0	532400	0	0	0	0	0	1085116	0	0	0	20207173	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	487367	0	0	0	0	0	0	0	60994	0	0	0	0	607505	0	0	0	0	0	1157506	0	0	0	20009600	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	458422	0	0	0	0	0	0	0	60800	0	0	0	0	575269	0	0	0	0	0	1158623	0	0	0	20061319	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	468172	0	0	0	0	0	0	0	63502	0	0	0	0	570929	0	0	0	0	0	1187280	0	0	0	20014735	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	475865	0	0	0	0	0	0	0	67934	0	0	0	0	576817	0	0	0	0	0	1213108	0	0	0	19961813	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	498537	0	0	0	0	0	0	0	75481	0	0	0	0	590388	0	0	0	0	0	1249146	0	0	0	19872582	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	486503	0	0	0	0	0	0	0	80081	0	0	0	0	589271	0	0	0	0	0	1279832	0	0	0	19840030	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	491811	0	0	0	0	0	0	0	89708	0	0	0	0	594983	0	0	0	0	0	1294648	0	0	0	19792805	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	507346	0	0	0	0	0	0	0	94765	0	0	0	0	614093	0	0	0	0	0	1346760	0	0	0	19687774	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	516793	0	0	0	0	0	0	0	100271	0	0	0	0	618388	0	0	0	0	0	1360896	0	0	0	19639896	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	551256	0	0	0	0	0	0	0	105209	0	0	0	0	642074	0	0	0	0	0	1396763	0	0	0	19524565	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	555895	0	0	0	0	0	0	0	119322	0	0	0	0	646271	0	0	0	0	0	1405155	0	0	0	19476001	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	543097	0	0	0	0	0	0	0	138217	0	0	0	0	632885	0	0	0	0	0	1383401	0	0	0	19486973	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	527421	0	0	0	0	0	0	0	140719	0	0	0	0	620749	0	0	0	0	0	1382369	0	0	0	19492815	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	544771	0	0	0	0	0	0	0	147982	0	0	0	0	629744	0	0	0	0	0	1402100	0	0	0	19416329	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	569549	0	0	0	0	0	0	0	158705	0	0	0	0	649286	0	0	0	0	0	1435230	0	0	0	19301872	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	587731	0	0	0	0	0	0	0	170002	0	0	0	0	670996	0	0	0	0	0	1461682	0	0	0	19196772	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	602863	0	0	0	0	0	0	0	182239	0	0	0	0	695446	0	0	0	0	0	1503178	0	0	0	19072607	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	619128	0	0	0	0	0	0	0	200212	0	0	0	0	715058	0	0	0	0	0	1538034	0	0	0	18949984	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	628781	0	0	0	0	0	0	0	205005	0	0	0	0	730622	0	0	0	0	0	1544731	0	0	0	18876617	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	637457	0	0	0	0	0	0	0	212864	0	0	0	0	739662	0	0	0	0	0	1550165	0	0	0	18806985	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	658140	0	0	0	0	0	0	0	220481	0	0	0	0	742984	0	0	0	0	0	1555827	0	0	0	18729516	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	660293	0	0	0	0	0	0	0	236393	0	0	0	0	753611	0	0	0	0	0	1584792	0	0	0	18629416	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	635218	0	0	0	0	0	0	0	239524	0	0	0	0	746423	0	0	0	0	0	1596560	0	0	0	18603394	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	648621	0	0	0	0	0	0	0	240345	0	0	0	0	760332	0	0	0	0	0	1621083	0	0	0	18502747	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	644045	0	0	0	0	0	0	0	250251	0	0	0	0	761326	0	0	0	0	0	1645111	0	0	0	18420742	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	630485	0	0	0	0	0	0	0	242999	0	0	0	0	767425	0	0	0	0	0	1647525	0	0	0	18376366	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	635300	0	0	0	0	0	0	0	245952	0	0	0	0	768103	0	0	0	0	0	1646243	0	0	0	18308793	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	638449	0	0	0	0	0	0	0	250871	0	0	0	0	776504	0	0	0	0	0	1654856	0	0	0	18219449	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	608496	0	0	0	0	0	0	0	250944	0	0	0	0	767082	0	0	0	0	0	1655166	0	0	0	18194896	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	605214	0	0	0	0	0	0	0	255427	0	0	0	0	766011	0	0	0	0	0	1675551	0	0	0	18103886	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	624826	0	0	0	0	0	0	0	260257	0	0	0	0	776631	0	0	0	0	0	1703884	0	0	0	17962065	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	637712	0	0	0	0	0	0	0	275465	0	0	0	0	783423	0	0	0	0	0	1729581	0	0	0	17816596	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	629231	0	0	0	0	0	0	0	281654	0	0	0	0	791535	0	0	0	0	0	1735578	0	0	0	17712032	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	682001	0	0	0	0	0	0	0	313081	0	0	0	0	813375	0	0	0	0	0	1773689	0	0	0	17460479	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	698111	0	0	0	0	0	0	0	316792	0	0	0	0	825698	0	0	0	0	0	1771743	0	0	0	17327953	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	663328	0	0	0	0	0	0	0	321971	0	0	0	0	808172	0	0	0	0	0	1778682	0	0	0	17267871	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	614223	0	0	0	0	0	0	0	303939	0	0	0	0	786366	0	0	0	0	0	1775122	0	0	0	17259052	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	618993	0	0	0	0	0	0	0	289143	0	0	0	0	789035	0	0	0	0	0	1757400	0	0	0	17170857	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	627363	0	0	0	0	0	0	0	301130	0	0	0	0	783265	0	0	0	0	0	1774304	0	0	0	17023672	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	631446	0	0	0	0	0	0	0	316573	0	0	0	0	799114	0	0	0	0	0	1790568	0	0	0	16852583	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	632623	0	0	0	0	0	0	0	322917	0	0	0	0	804755	0	0	0	0	0	1818765	0	0	0	16691703	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	634731	0	0	0	0	0	0	0	325906	0	0	0	0	806537	0	0	0	0	0	1841196	0	0	0	16540165	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	619999	0	0	0	0	0	0	0	325359	0	0	0	0	796654	0	0	0	0	0	1828393	0	0	0	16454751	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	626203	0	0	0	0	0	0	0	327713	0	0	0	0	799388	0	0	0	0	0	1850839	0	0	0	16296317	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	599436	0	0	0	0	0	0	0	324288	0	0	0	0	782925	0	0	0	0	0	1860371	0	0	0	16209412	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	578737	0	0	0	0	0	0	0	315711	0	0	0	0	786004	0	0	0	0	0	1863691	0	0	0	16106198	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	580345	0	0	0	0	0	0	0	317574	0	0	0	0	777199	0	0	0	0	0	1862128	0	0	0	15973983	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	588151	0	0	0	0	0	0	0	326990	0	0	0	0	781304	0	0	0	0	0	1842808	0	0	0	15823121	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	575402	0	0	0	0	0	0	0	342868	0	0	0	0	774710	0	0	0	0	0	1826305	0	0	0	15696478	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	535726	0	0	0	0	0	0	0	326169	0	0	0	0	744410	0	0	0	0	0	1807462	0	0	0	15669412	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	508349	0	0	0	0	0	0	0	309178	0	0	0	0	728222	0	0	0	0	0	1810431	0	0	0	15587657	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	516897	0	0	0	0	0	0	0	313941	0	0	0	0	725376	0	0	0	0	0	1811563	0	0	0	15426006	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	498018	0	0	0	0	0	0	0	313378	0	0	0	0	721626	0	0	0	0	0	1819708	0	0	0	15291753	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	504748	0	0	0	0	0	0	0	317226	0	0	0	0	729237	0	0	0	0	0	1853927	0	0	0	15084064	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	474639	0	0	0	0	0	0	0	311449	0	0	0	0	718063	0	0	0	0	0	1872388	0	0	0	14965606	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	469731	0	0	0	0	0	0	0	309530	0	0	0	0	718033	0	0	0	0	0	1893077	0	0	0	14797187	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	449686	0	0	0	0	0	0	0	307907	0	0	0	0	718369	0	0	0	0	0	1931744	0	0	0	14613262	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	433504	0	0	0	0	0	0	0	293926	0	0	0	0	719530	0	0	0	0	0	1943337	0	0	0	14457194	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	406873	0	0	0	0	0	0	0	285272	0	0	0	0	703909	0	0	0	0	0	1929669	0	0	0	14343641	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	358819	0	0	0	0	0	0	0	261822	0	0	0	0	683030	0	0	0	0	0	1893679	0	0	0	14281393	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	318982	0	0	0	0	0	0	0	244093	0	0	0	0	670925	0	0	0	0	0	1866110	0	0	0	14170797	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	293080	0	0	0	0	0	0	0	234168	0	0	0	0	666169	0	0	0	0	0	1844888	0	0	0	13996166	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	265629	0	0	0	0	0	0	0	220408	0	0	0	0	668468	0	0	0	0	0	1853486	0	0	0	13778337	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	251377	0	0	0	0	0	0	0	231806	0	0	0	0	658746	0	0	0	0	0	1862504	0	0	0	13505941	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	198395	0	0	0	0	0	0	0	208627	0	0	0	0	631350	0	0	0	0	0	1838060	0	0	0	13313453	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	88204	0	0	0	0	0	0	0	172053	0	0	0	0	593002	0	0	0	0	0	1787752	0	0	0	13138934	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	122149	0	0	0	0	519193	0	0	0	0	0	1655245	0	0	0	12998682	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	126428	0	0	0	0	446705	0	0	0	0	0	1547117	0	0	0	12589161	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	308342	0	0	0	0	550381	0	0	0	0	0	1845995	0	0	0	10703350	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	484779	0	0	0	0	651243	0	0	0	0	0	1788638	0	0	0	5224723	0

end

                set origin 0,0.03
                set size 0.95,0.6
                set ylabel "Cycle (rev reads)" offset character -1,0
                set xlabel "Base Quality"
                unset title
                unset ytics
                set ytics ("10" 10,"20" 20,"30" 30,"40" 40,"50" 50,"60" 60,"70" 70,"80" 80,"90" 90,"100" 100,"110" 110,"120" 120)
                set xrange  [0:39]
                set xtics
                set colorbox vertical user origin first (39+1),0 size screen 0.025,0.812
                set cblabel "Number of bases"
                splot '-' matrix with image
            	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	136	0	0	0	0	968118	0	0	0	0	0	21380329	0	0	0	633	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	538122	0	0	0	0	0	0	0	59	0	0	0	0	521907	0	0	0	0	0	21284845	0	0	0	4283	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	540166	0	0	0	0	0	0	0	93	0	0	0	0	564854	0	0	0	0	0	21229983	0	0	0	14120	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	619594	0	0	0	0	0	0	0	131	0	0	0	0	611982	0	0	0	0	0	21064682	0	0	0	52827	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	542429	0	0	0	0	0	0	0	241	0	0	0	0	587346	0	0	0	0	0	20918331	0	0	0	300869	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	564957	0	0	0	0	0	0	0	606	0	0	0	0	612250	0	0	0	0	0	1009793	0	0	0	20161610	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	559131	0	0	0	0	0	0	0	1671	0	0	0	0	585064	0	0	0	0	0	987731	0	0	0	20215619	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	559244	0	0	0	0	0	0	0	3317	0	0	0	0	565424	0	0	0	0	0	947891	0	0	0	20273340	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	561345	0	0	0	0	0	0	0	3868	0	0	0	0	578467	0	0	0	0	0	970325	0	0	0	20235211	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	596210	0	0	0	0	0	0	0	8607	0	0	0	0	579765	0	0	0	0	0	975409	0	0	0	20189225	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	582316	0	0	0	0	0	0	0	12563	0	0	0	0	572635	0	0	0	0	0	963774	0	0	0	20217928	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	549918	0	0	0	0	0	0	0	16190	0	0	0	0	551937	0	0	0	0	0	950378	0	0	0	20280793	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	625048	0	0	0	0	0	0	0	21221	0	0	0	0	586505	0	0	0	0	0	992055	0	0	0	20124387	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	579673	0	0	0	0	0	0	0	29540	0	0	0	0	597398	0	0	0	0	0	1002825	0	0	0	20139780	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	577009	0	0	0	0	0	0	0	34393	0	0	0	0	577033	0	0	0	0	0	984249	0	0	0	20176532	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	574855	0	0	0	0	0	0	0	50865	0	0	0	0	571129	0	0	0	0	0	982797	0	0	0	20169570	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	530040	0	0	0	0	0	0	0	49087	0	0	0	0	540436	0	0	0	0	0	945642	0	0	0	20284011	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	592793	0	0	0	0	0	0	0	53222	0	0	0	0	561959	0	0	0	0	0	955448	0	0	0	20185794	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	594427	0	0	0	0	0	0	0	60457	0	0	0	0	561613	0	0	0	0	0	939424	0	0	0	20193295	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	603777	0	0	0	0	0	0	0	64955	0	0	0	0	566643	0	0	0	0	0	935164	0	0	0	20178677	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	575621	0	0	0	0	0	0	0	74849	0	0	0	0	584755	0	0	0	0	0	932656	0	0	0	20181335	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	552029	0	0	0	0	0	0	0	68202	0	0	0	0	560955	0	0	0	0	0	924041	0	0	0	20243989	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	554455	0	0	0	0	0	0	0	66751	0	0	0	0	549242	0	0	0	0	0	911540	0	0	0	20267228	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	560222	0	0	0	0	0	0	0	73608	0	0	0	0	558467	0	0	0	0	0	925805	0	0	0	20231114	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	553296	0	0	0	0	0	0	0	72850	0	0	0	0	552869	0	0	0	0	0	920784	0	0	0	20249417	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	550696	0	0	0	0	0	0	0	70079	0	0	0	0	553230	0	0	0	0	0	920831	0	0	0	20254380	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	547319	0	0	0	0	0	0	0	70929	0	0	0	0	552244	0	0	0	0	0	927274	0	0	0	20251450	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	549405	0	0	0	0	0	0	0	71017	0	0	0	0	552643	0	0	0	0	0	928994	0	0	0	20247157	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	562761	0	0	0	0	0	0	0	73824	0	0	0	0	552386	0	0	0	0	0	933847	0	0	0	20226398	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	482979	0	0	0	0	0	0	0	66455	0	0	0	0	550947	0	0	0	0	0	883930	0	0	0	20364905	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	520559	0	0	0	0	0	0	0	63428	0	0	0	0	521050	0	0	0	0	0	871907	0	0	0	20372272	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	472152	0	0	0	0	0	0	0	59844	0	0	0	0	532540	0	0	0	0	0	866181	0	0	0	20418499	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	477245	0	0	0	0	0	0	0	59744	0	0	0	0	503128	0	0	0	0	0	862779	0	0	0	20446320	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	512310	0	0	0	0	0	0	0	60984	0	0	0	0	505678	0	0	0	0	0	855389	0	0	0	20414855	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	516802	0	0	0	0	0	0	0	58943	0	0	0	0	508525	0	0	0	0	0	868142	0	0	0	20396804	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	471719	0	0	0	0	0	0	0	57702	0	0	0	0	534468	0	0	0	0	0	859957	0	0	0	20425370	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	469409	0	0	0	0	0	0	0	56845	0	0	0	0	507866	0	0	0	0	0	854108	0	0	0	20460988	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	469597	0	0	0	0	0	0	0	55609	0	0	0	0	489096	0	0	0	0	0	846551	0	0	0	20488363	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	471249	0	0	0	0	0	0	0	56686	0	0	0	0	493639	0	0	0	0	0	856334	0	0	0	20471308	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	471054	0	0	0	0	0	0	0	62286	0	0	0	0	497245	0	0	0	0	0	868727	0	0	0	20449904	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	474612	0	0	0	0	0	0	0	63168	0	0	0	0	494105	0	0	0	0	0	865322	0	0	0	20450610	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	479995	0	0	0	0	0	0	0	63238	0	0	0	0	499323	0	0	0	0	0	876454	0	0	0	20427393	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	529425	0	0	0	0	0	0	0	65628	0	0	0	0	523387	0	0	0	0	0	895283	0	0	0	20331310	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	481708	0	0	0	0	0	0	0	66138	0	0	0	0	535209	0	0	0	0	0	887589	0	0	0	20373017	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	489540	0	0	0	0	0	0	0	64105	0	0	0	0	519025	0	0	0	0	0	898148	0	0	0	20371420	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	482692	0	0	0	0	0	0	0	64406	0	0	0	0	513468	0	0	0	0	0	895334	0	0	0	20385036	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	480185	0	0	0	0	0	0	0	62363	0	0	0	0	504093	0	0	0	0	0	895160	0	0	0	20397682	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	481920	0	0	0	0	0	0	0	62076	0	0	0	0	504640	0	0	0	0	0	895410	0	0	0	20393866	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	482889	0	0	0	0	0	0	0	63556	0	0	0	0	504541	0	0	0	0	0	894886	0	0	0	20390526	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	492477	0	0	0	0	0	0	0	64666	0	0	0	0	508400	0	0	0	0	0	902951	0	0	0	20366197	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	489581	0	0	0	0	0	0	0	68738	0	0	0	0	513574	0	0	0	0	0	909184	0	0	0	20352024	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	485684	0	0	0	0	0	0	0	69443	0	0	0	0	518609	0	0	0	0	0	925537	0	0	0	20332375	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	491817	0	0	0	0	0	0	0	69676	0	0	0	0	513597	0	0	0	0	0	918276	0	0	0	20336676	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	503119	0	0	0	0	0	0	0	71883	0	0	0	0	523169	0	0	0	0	0	933678	0	0	0	20296577	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	493055	0	0	0	0	0	0	0	72801	0	0	0	0	518080	0	0	0	0	0	924363	0	0	0	20318639	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	559884	0	0	0	0	0	0	0	78126	0	0	0	0	536528	0	0	0	0	0	946123	0	0	0	20196392	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	477508	0	0	0	0	0	0	0	75862	0	0	0	0	557445	0	0	0	0	0	938163	0	0	0	20258929	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	466273	0	0	0	0	0	0	0	75614	0	0	0	0	521864	0	0	0	0	0	937727	0	0	0	20292652	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	477813	0	0	0	0	0	0	0	78677	0	0	0	0	515621	0	0	0	0	0	954290	0	0	0	20254798	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	467301	0	0	0	0	0	0	0	78088	0	0	0	0	515253	0	0	0	0	0	958176	0	0	0	20251418	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	470200	0	0	0	0	0	0	0	82452	0	0	0	0	509344	0	0	0	0	0	966169	0	0	0	20231298	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	462227	0	0	0	0	0	0	0	85625	0	0	0	0	508093	0	0	0	0	0	968481	0	0	0	20223986	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	506065	0	0	0	0	0	0	0	87316	0	0	0	0	519209	0	0	0	0	0	985975	0	0	0	20138645	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	459647	0	0	0	0	0	0	0	91096	0	0	0	0	536339	0	0	0	0	0	996139	0	0	0	20142483	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	462414	0	0	0	0	0	0	0	91613	0	0	0	0	509871	0	0	0	0	0	1000371	0	0	0	20149491	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	452236	0	0	0	0	0	0	0	95588	0	0	0	0	504750	0	0	0	0	0	1007757	0	0	0	20141240	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	442013	0	0	0	0	0	0	0	96729	0	0	0	0	494436	0	0	0	0	0	1007934	0	0	0	20147971	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	443109	0	0	0	0	0	0	0	99354	0	0	0	0	490048	0	0	0	0	0	1021950	0	0	0	20121755	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	436781	0	0	0	0	0	0	0	101782	0	0	0	0	481359	0	0	0	0	0	1019105	0	0	0	20124649	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	437945	0	0	0	0	0	0	0	103809	0	0	0	0	485166	0	0	0	0	0	1033452	0	0	0	20089721	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	434110	0	0	0	0	0	0	0	108627	0	0	0	0	477576	0	0	0	0	0	1033177	0	0	0	20082812	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	449108	0	0	0	0	0	0	0	112860	0	0	0	0	486740	0	0	0	0	0	1052636	0	0	0	20020755	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	439933	0	0	0	0	0	0	0	116084	0	0	0	0	481094	0	0	0	0	0	1057835	0	0	0	20013269	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	424948	0	0	0	0	0	0	0	115751	0	0	0	0	474658	0	0	0	0	0	1069684	0	0	0	20008830	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	416755	0	0	0	0	0	0	0	119666	0	0	0	0	466803	0	0	0	0	0	1072269	0	0	0	20003826	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	423076	0	0	0	0	0	0	0	119387	0	0	0	0	466399	0	0	0	0	0	1084475	0	0	0	19970324	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	421853	0	0	0	0	0	0	0	121216	0	0	0	0	461408	0	0	0	0	0	1087358	0	0	0	19956342	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	421349	0	0	0	0	0	0	0	125907	0	0	0	0	471610	0	0	0	0	0	1126481	0	0	0	19886208	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	418772	0	0	0	0	0	0	0	125835	0	0	0	0	464876	0	0	0	0	0	1123720	0	0	0	19879831	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	406611	0	0	0	0	0	0	0	125685	0	0	0	0	456630	0	0	0	0	0	1125155	0	0	0	19877058	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	401066	0	0	0	0	0	0	0	131537	0	0	0	0	451239	0	0	0	0	0	1126983	0	0	0	19859782	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	401448	0	0	0	0	0	0	0	129639	0	0	0	0	451673	0	0	0	0	0	1123097	0	0	0	19844514	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	411520	0	0	0	0	0	0	0	131648	0	0	0	0	455975	0	0	0	0	0	1142622	0	0	0	19787744	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	405447	0	0	0	0	0	0	0	133317	0	0	0	0	453319	0	0	0	0	0	1138815	0	0	0	19778668	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	410298	0	0	0	0	0	0	0	134220	0	0	0	0	466465	0	0	0	0	0	1175032	0	0	0	19704355	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	448012	0	0	0	0	0	0	0	141010	0	0	0	0	469052	0	0	0	0	0	1185651	0	0	0	19627232	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	451484	0	0	0	0	0	0	0	142404	0	0	0	0	478178	0	0	0	0	0	1185140	0	0	0	19594302	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	444273	0	0	0	0	0	0	0	148463	0	0	0	0	469268	0	0	0	0	0	1201973	0	0	0	19568226	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	401571	0	0	0	0	0	0	0	152710	0	0	0	0	490568	0	0	0	0	0	1192745	0	0	0	19574463	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	404165	0	0	0	0	0	0	0	152730	0	0	0	0	485116	0	0	0	0	0	1228530	0	0	0	19521216	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	386510	0	0	0	0	0	0	0	150345	0	0	0	0	439094	0	0	0	0	0	1208080	0	0	0	19586850	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	381531	0	0	0	0	0	0	0	153681	0	0	0	0	428378	0	0	0	0	0	1198191	0	0	0	19587687	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	380731	0	0	0	0	0	0	0	157220	0	0	0	0	422214	0	0	0	0	0	1205440	0	0	0	19561437	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	372106	0	0	0	0	0	0	0	161409	0	0	0	0	422991	0	0	0	0	0	1229517	0	0	0	19517480	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	375738	0	0	0	0	0	0	0	164355	0	0	0	0	418045	0	0	0	0	0	1235011	0	0	0	19486147	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	376530	0	0	0	0	0	0	0	172997	0	0	0	0	409778	0	0	0	0	0	1240508	0	0	0	19454044	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	379491	0	0	0	0	0	0	0	186455	0	0	0	0	415353	0	0	0	0	0	1283513	0	0	0	19363055	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	371882	0	0	0	0	0	0	0	183843	0	0	0	0	402345	0	0	0	0	0	1261255	0	0	0	19383679	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	364743	0	0	0	0	0	0	0	185238	0	0	0	0	398312	0	0	0	0	0	1258353	0	0	0	19369060	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	402136	0	0	0	0	0	0	0	189956	0	0	0	0	396101	0	0	0	0	0	1263944	0	0	0	19295924	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	374309	0	0	0	0	0	0	0	203606	0	0	0	0	439105	0	0	0	0	0	1322735	0	0	0	19178583	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	371181	0	0	0	0	0	0	0	202980	0	0	0	0	416391	0	0	0	0	0	1342794	0	0	0	19154717	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	368039	0	0	0	0	0	0	0	203100	0	0	0	0	403064	0	0	0	0	0	1341805	0	0	0	19140513	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	360172	0	0	0	0	0	0	0	207477	0	0	0	0	396964	0	0	0	0	0	1345746	0	0	0	19113121	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	353743	0	0	0	0	0	0	0	207139	0	0	0	0	391151	0	0	0	0	0	1346931	0	0	0	19090418	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	352806	0	0	0	0	0	0	0	210097	0	0	0	0	391633	0	0	0	0	0	1350263	0	0	0	19048980	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	353356	0	0	0	0	0	0	0	209532	0	0	0	0	394339	0	0	0	0	0	1368928	0	0	0	18990292	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	339674	0	0	0	0	0	0	0	207273	0	0	0	0	396530	0	0	0	0	0	1373049	0	0	0	18959944	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	334997	0	0	0	0	0	0	0	202956	0	0	0	0	396937	0	0	0	0	0	1375251	0	0	0	18923255	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	316790	0	0	0	0	0	0	0	196344	0	0	0	0	394055	0	0	0	0	0	1376070	0	0	0	18906296	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	320887	0	0	0	0	0	0	0	201273	0	0	0	0	399043	0	0	0	0	0	1397253	0	0	0	18824664	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	339271	0	0	0	0	0	0	0	205280	0	0	0	0	397430	0	0	0	0	0	1394582	0	0	0	18757500	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	336932	0	0	0	0	0	0	0	228529	0	0	0	0	410912	0	0	0	0	0	1396440	0	0	0	18666857	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	287686	0	0	0	0	0	0	0	220659	0	0	0	0	406700	0	0	0	0	0	1387598	0	0	0	18678212	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	330377	0	0	0	0	0	0	0	208609	0	0	0	0	411254	0	0	0	0	0	1402114	0	0	0	18563369	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	289685	0	0	0	0	0	0	0	231332	0	0	0	0	423288	0	0	0	0	0	1436693	0	0	0	18467637	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	269743	0	0	0	0	0	0	0	210219	0	0	0	0	429963	0	0	0	0	0	1451366	0	0	0	18412381	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	237879	0	0	0	0	0	0	0	199978	0	0	0	0	415819	0	0	0	0	0	1433460	0	0	0	18390680	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	215543	0	0	0	0	0	0	0	173676	0	0	0	0	406532	0	0	0	0	0	1385449	0	0	0	18392348	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	193150	0	0	0	0	0	0	0	157558	0	0	0	0	407757	0	0	0	0	0	1357367	0	0	0	18351299	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	174563	0	0	0	0	0	0	0	147487	0	0	0	0	401274	0	0	0	0	0	1325543	0	0	0	18297148	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	134655	0	0	0	0	0	0	0	148018	0	0	0	0	409286	0	0	0	0	0	1352349	0	0	0	18092454	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	108858	0	0	0	0	400355	0	0	0	0	0	1335211	0	0	0	17992323	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	93497	0	0	0	0	367610	0	0	0	0	0	1236899	0	0	0	17825586	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	102768	0	0	0	0	346962	0	0	0	0	0	1240421	0	0	0	17400466	0
	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	584170	0	0	0	0	988543	0	0	0	0	0	2810718	0	0	0	13471175	0

end
