;2022
<Cabbage>
form caption("AbsEmis2Chords") size(650, 450), colour(50, 50, 50), pluginID("AbsEmis2Chords")
vslider bounds(10, 22, 30, 113), channel("level"), text("Level"), range(0, 1, 0.5, 1, 0.001) 
hslider bounds(54, 416, 122, 29) channel("Send"), text("REV"), range(0, 2, 0, 1, 0.001) 

vslider bounds(10, 142, 30, 113) channel("LpFrec"), text("LPF"), range(20, 20000, 20000, 0.5, 1) 
vslider bounds(10, 264, 30, 113) channel("HpFrec"), text("HPF")range(20, 20000, 20, 0.5, 1) 



image bounds(54, 12, 570, 400), channel("bkgrnd"), corners(10)

image bounds(54, 12, 570, 400) identchannel("Image") corners(10) file("Init.png") 


button bounds(298, 420, 87, 21) channel("Absemis") text("Absorption", "Emission") colour:1(255, 0, 0, 255) value(1)
</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
sr = 48000
ksmps =32
nchnls = 2
0dbfs = 1


gks init 0
gkplay init 0
gifrec init 0
gkAbsemis init 0

gkf0 init 0
gkf1 init 0
gkf2 init 0
gkf3 init 0
gkf4 init 0

gkf5 init 0
gkf6 init 0
gkf7 init 0
gkf8 init 0
gkf9 init 0
gkf10 init 0
gkf11 init 0
gkf12 init 0
gkf13 init 0
gkf14 init 0
gkf15 init 0
gkf16 init 0
gkf17 init 0


gk_a init 0
gk_b init 0
gk_c init 0
gk_d init 0
gk_e init 0

gk_f init 0
gk_g init 0
gk_h init 0
gk_i init 0
gk_j init 0
gk_k init 0
gk_l init 0
gk_m init 0
gk_n init 0
gk_o init 0
gk_p init 0
gk_q init 0
gk_r init 0


instr 1

gkFader chnget "level"
kSend chnget "Send"
gkAbsemis chnget "Absemis"


giosc_s OSCinit 1000 ;be careful with the "_s" assignation


giosc_a OSCinit 9970
giosc_b OSCinit 9971
giosc_c OSCinit 9972
giosc_d OSCinit 9973
giosc_e OSCinit 9974

giosc_f OSCinit 9975
giosc_g OSCinit 9976
giosc_h OSCinit 9977
giosc_i OSCinit 9978
giosc_j OSCinit 9979
giosc_k OSCinit 9980
giosc_l OSCinit 9981
giosc_m OSCinit 9982
giosc_n OSCinit 9983
giosc_o OSCinit 9984
giosc_p OSCinit 9985
giosc_q OSCinit 9986
giosc_r OSCinit 9987

 

giosc17 OSCinit 9967 
giosc16 OSCinit 9966 
giosc15 OSCinit 9965 
giosc14 OSCinit 9964 
giosc13 OSCinit 9963
giosc12 OSCinit 9962
giosc11 OSCinit 9961 
giosc10 OSCinit 9960 
giosc9 OSCinit 9959 
giosc8 OSCinit 9958 
giosc7 OSCinit 9957 
giosc6 OSCinit 9956 
giosc5 OSCinit 9955 
giosc4 OSCinit 9954 
giosc3 OSCinit 9953
giosc2 OSCinit 9952
giosc1 OSCinit 9951 
giosc0 OSCinit 9950 


kans0 OSClisten giosc0, "/0", "f", gkf0
kans1 OSClisten giosc1, "/1", "f", gkf1
kans2 OSClisten giosc2, "/2", "f", gkf2
kans3 OSClisten giosc3, "/3", "f", gkf3
kans4 OSClisten giosc4, "/4", "f", gkf4
kans5 OSClisten giosc5, "/5", "f", gkf5
kans6 OSClisten giosc6, "/6", "f", gkf6
kans7 OSClisten giosc7, "/7", "f", gkf7
kans8 OSClisten giosc8, "/8", "f", gkf8
kans9 OSClisten giosc9, "/9", "f", gkf9
kans10 OSClisten giosc10, "/10", "f", gkf10
kans11 OSClisten giosc11, "/11", "f", gkf11
kans12 OSClisten giosc12, "/12", "f", gkf12
kans13 OSClisten giosc13, "/13", "f", gkf13
kans14 OSClisten giosc14, "/14", "f", gkf14
kans15 OSClisten giosc15, "/15", "f", gkf15
kans16 OSClisten giosc16, "/16", "f", gkf16
kans17 OSClisten giosc17, "/17", "f", gkf17

kans_a OSClisten giosc_a, "/a", "f", gk_a
kans_b OSClisten giosc_b, "/b", "f", gk_b
kans_c OSClisten giosc_c, "/c", "f", gk_c
kans_d OSClisten giosc_d, "/d", "f", gk_d
kans_e OSClisten giosc_e, "/e", "f", gk_e
kans_f OSClisten giosc_f, "/f", "f", gk_f
kans_g OSClisten giosc_g, "/g", "f", gk_g
kans_h OSClisten giosc_h, "/h", "f", gk_h
kans_i OSClisten giosc_i, "/i", "f", gk_i
kans_j OSClisten giosc_j, "/j", "f", gk_j
kans_k OSClisten giosc_k, "/k", "f", gk_k
kans_l OSClisten giosc_l, "/l", "f", gk_l
kans_m OSClisten giosc_m, "/m", "f", gk_m
kans_n OSClisten giosc_n, "/n", "f", gk_n
kans_o OSClisten giosc_o, "/o", "f", gk_o
kans_p OSClisten giosc_p, "/p", "f", gk_p
kans_q OSClisten giosc_q, "/q", "f", gk_q
kans_r OSClisten giosc_r, "/r", "f", gk_r


;Additive Synth
kAmp = 0.1

gkpan0 = (gkf0-600)/300
a0  oscil kAmp/4, gkf0, -1, 0
a0L, a0R pan2 a0, gkpan0

gkpan1 = (gkf1-600)/300
a1  oscil kAmp/4, gkf1, -1, 0
a1L, a1R pan2 a1, gkpan1

gkpan2 = (gkf2-600)/300
a2  oscil kAmp/4, gkf2, -1, 0
a2L, a2R pan2 a2, gkpan2

gkpan3 = (gkf3-600)/300
a3	oscil kAmp/4, gkf3, -1, 0
a3L, a3R pan2 a3, gkpan3

gkpan4 = (gkf4-600)/300
a4	oscil kAmp/4, gkf4, -1, 0
a4L, a4R pan2 a4, gkpan4

;------------------------------
gkpan5 = (gkf5-600)/300
a5	oscil kAmp/4, gkf5, -1, 0
a5L, a5R pan2 a5, gkpan5

gkpan6 = (gkf6-600)/300
a6	oscil kAmp/4, gkf6, -1, 0
a6L, a6R pan2 a6, gkpan6

gkpan7 = (gkf7-600)/300
a7	oscil kAmp/4, gkf7, -1, 0
a7L, a7R pan2 a7, gkpan7

gkpan8 = (gkf8-600)/300
a8	oscil kAmp/4, gkf8, -1, 0
a8L, a8R pan2 a8, gkpan8


gkpan9 = (gkf9-600)/300
a9  oscil kAmp/4, gkf9, -1, 0
a9L, a9R pan2 a9, gkpan9


gkpan10 = (gkf10-600)/300
a10  oscil kAmp/4, gkf10, -1, 0
a10L, a10R pan2 a10, gkpan10


gkpan11 = (gkf11-600)/300
a11  oscil kAmp/4, gkf11, -1, 0
a11L, a11R pan2 a11, gkpan11


gkpan12 = (gkf12-600)/300
a12  oscil kAmp/4, gkf12, -1, 0
a12L, a12R pan2 a12, gkpan12

gkpan13 = (gkf13-600)/300
a13  oscil kAmp/4, gkf13, -1, 0
a13L, a13R pan2 a13, gkpan13

gkpan14 = (gkf14-600)/300
a14  oscil kAmp/4, gkf14, -1, 0
a14L, a14R pan2 a14, gkpan14

gkpan15 = (gkf15-600)/300
a15  oscil kAmp/4, gkf15, -1, 0
a15L, a15R pan2 a15, gkpan15

gkpan16 = (gkf6-600)/300
a16  oscil kAmp/4, gkf16, -1, 0
a16L, a16R pan2 a16, gkpan16

gkpan17 = (gkf17-600)/300
a17  oscil kAmp/4, gkf17, -1, 0
a17L, a17R pan2 a17, gkpan17



gkLpFrec chnget "LpFrec"
gkHpFrec chnget "HpFrec"



;kEnv linen 1, p3/16, p3, p3/1.2

if gkAbsemis==0 then
    aSigL = a5L*gk_f+a6L*gk_g+a7L*gk_h+a8L*gk_i+a9L*gk_j+a10L*gk_k+a11L*gk_l+a12L*gk_m+a13L*gk_n+a14L*gk_o+a15L*gk_p+a16L*gk_q+a17L*gk_r
    aSigR = a5R*gk_f+a6R*gk_g+a7R*gk_h+a8R*gk_i+a9R*gk_j+a10R*gk_k+a11R*gk_l+a12R*gk_m+a13R*gk_n+a14R*gk_o+a15R*gk_p+a16R*gk_q+a17R*gk_r

endif

if gkAbsemis!=0 then
    aSigL = a0L*gk_a+a1L*gk_b+a2L*gk_c+a3L*gk_d+a4L*gk_e
    aSigR = a0R*gk_a+a1R*gk_b+a2R*gk_c+a3R*gk_d+a4R*gk_e
   
endif

aHpL butterhp aSigL, gkHpFrec
aFiltL moogladder aHpL, gkLpFrec, 0.1

aHpR butterhp aSigR, gkHpFrec
aFiltR moogladder aHpR, gkLpFrec, 0.1



outs aFiltL*gkFader*4, aFiltR*gkFader*4

gasendL= aFiltL*kSend	
gasendR= aFiltR*kSend


endin


instr 2

kans_graph OSClisten giosc_s, "/s", "f", gks


if gks!=0 then
    if gkAbsemis !=0  then
	    Scurve sprintfk "file(%s)", "Emis.png"
        chnset Scurve, "Image"
        giImage imageload "Emis.png"
        printk2 gkf0
        printk2 gkf1
        printk2 gkf2
        printk2 gkf3
        printk2 gkf4
    endif  
      
    if gkAbsemis ==0 then
    	Scurve sprintfk "file(%s)", "Abs.png"
        chnset Scurve, "Image"
        giImage imageload "Abs.png"
        printk2 gkf5
        printk2 gkf6
        printk2 gkf7
        printk2 gkf8
        printk2 gkf9
        printk2 gkf10
        printk2 gkf11
        printk2 gkf12
      
    endif


elseif gks==0 then
    Scurve sprintfk "file(%s)", "Init2.png"
	chnset Scurve, "Image"	
	imagefree giImage
			
endif


endin




instr 6

gaRevLf, gaRevRf		reverbsc	gasendL,gasendR,0.85,10000
gaRevLr, gaRevRr		reverbsc	gasendL,gasendR,0.85,10000
		
		out	gaRevLf*gkFader,gaRevRf*gkFader
		clear		gasendL, gasendR

endin



</CsInstruments>
<CsScore>
f 1 0 1024 10 1
;f 2 0 1024 10 1
;f 3 0 1024 10 1
;f 4 0 1024 10 1
;f 5 0 1024 10 1

i 1 0 3600*24*7
i 2 0 3600*24*7
;i 3 0 3600*24*7

i 6 0 3600*24*7
e

</CsScore>
</CsoundSynthesizer>
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>100</x>
 <y>100</y>
 <width>320</width>
 <height>240</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="nobackground">
  <r>255</r>
  <g>255</g>
  <b>255</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
