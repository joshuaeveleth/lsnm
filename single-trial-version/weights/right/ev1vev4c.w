% Wed Nov  5 13:52:51 2014

% Input layer: (9, 9)
% Output layer: (9, 9)
% Fanout size: (3, 3)
% Fanout spacing: (1, 1)
% Specified fanout weights

Connect(ev1v, ev4c)  {
  From:  (1, 1)  {
    |              |     ([ 9, 1]  0.023049)     |              | 
    |              |     ([ 1, 1]  0.013727)     ([ 1, 2]  0.019797) 
    |              |     |              |     |              | 
  }
  From:  (1, 2)  {
    |              |     ([ 9, 2]  0.011228)     |              | 
    ([ 1, 1]  0.025452)     |              |     |              | 
    |              |     ([ 2, 2]  0.026168)     |              | 
  }
  From:  (1, 3)  {
    |              |     |              |     |              | 
    ([ 1, 2]  0.027297)     |              |     |              | 
    |              |     |              |     |              | 
  }
  From:  (1, 4)  {
    |              |     |              |     |              | 
    ([ 1, 3]  0.022973)     |              |     ([ 1, 5]  0.023834) 
    |              |     |              |     |              | 
  }
  From:  (1, 5)  {
    |              |     ([ 9, 5]  0.025004)     |              | 
    |              |     |              |     ([ 1, 6]  0.023467) 
    |              |     ([ 2, 5]  0.023192)     |              | 
  }
  From:  (1, 6)  {
    |              |     |              |     |              | 
    |              |     ([ 1, 6]  0.010739)     |              | 
    |              |     |              |     |              | 
  }
  From:  (1, 7)  {
    |              |     |              |     |              | 
    |              |     |              |     |              | 
    |              |     ([ 2, 7]  0.026143)     |              | 
  }
  From:  (1, 8)  {
    |              |     |              |     |              | 
    |              |     ([ 1, 8]  0.028331)     |              | 
    |              |     ([ 2, 8]  0.016453)     |              | 
  }
  From:  (1, 9)  {
    |              |     ([ 9, 9]  0.026012)     |              | 
    ([ 1, 8]  0.022015)     ([ 1, 9]  0.020165)     ([ 1, 1]  0.016094) 
    |              |     ([ 2, 9]  0.013014)     |              | 
  }
  From:  (2, 1)  {
    |              |     ([ 1, 1]  0.018874)     |              | 
    ([ 2, 9]  0.014805)     |              |     |              | 
    |              |     ([ 3, 1]  0.029521)     |              | 
  }
  From:  (2, 2)  {
    |              |     |              |     |              | 
    ([ 2, 1]  0.016200)     ([ 2, 2]  0.012131)     |              | 
    |              |     |              |     |              | 
  }
  From:  (2, 3)  {
    |              |     |              |     |              | 
    ([ 2, 2]  0.028234)     ([ 2, 3]  0.019891)     ([ 2, 4]  0.018530) 
    |              |     |              |     |              | 
  }
  From:  (2, 4)  {
    |              |     |              |     |              | 
    ([ 2, 3]  0.025108)     ([ 2, 4]  0.011967)     ([ 2, 5]  0.014853) 
    |              |     |              |     |              | 
  }
  From:  (2, 5)  {
    |              |     ([ 1, 5]  0.024301)     |              | 
    |              |     ([ 2, 5]  0.022918)     |              | 
    |              |     |              |     |              | 
  }
  From:  (2, 6)  {
    |              |     ([ 1, 6]  0.016865)     |              | 
    ([ 2, 5]  0.027812)     |              |     ([ 2, 7]  0.012554) 
    |              |     ([ 3, 6]  0.028750)     |              | 
  }
  From:  (2, 7)  {
    |              |     ([ 1, 7]  0.028616)     |              | 
    |              |     |              |     |              | 
    |              |     |              |     |              | 
  }
  From:  (2, 8)  {
    |              |     ([ 1, 8]  0.026475)     |              | 
    ([ 2, 7]  0.020466)     |              |     |              | 
    |              |     |              |     |              | 
  }
  From:  (2, 9)  {
    |              |     ([ 1, 9]  0.027965)     |              | 
    |              |     |              |     |              | 
    |              |     |              |     |              | 
  }
  From:  (3, 1)  {
    |              |     |              |     |              | 
    |              |     |              |     |              | 
    |              |     ([ 4, 1]  0.027578)     |              | 
  }
  From:  (3, 2)  {
    |              |     |              |     |              | 
    |              |     |              |     ([ 3, 3]  0.012767) 
    |              |     |              |     |              | 
  }
  From:  (3, 3)  {
    |              |     ([ 2, 3]  0.029048)     |              | 
    ([ 3, 2]  0.026623)     ([ 3, 3]  0.011063)     |              | 
    |              |     ([ 4, 3]  0.019497)     |              | 
  }
  From:  (3, 4)  {
    |              |     ([ 2, 4]  0.025169)     |              | 
    |              |     ([ 3, 4]  0.025105)     ([ 3, 5]  0.018050) 
    |              |     |              |     |              | 
  }
  From:  (3, 5)  {
    |              |     |              |     |              | 
    ([ 3, 4]  0.014465)     |              |     |              | 
    |              |     ([ 4, 5]  0.012926)     |              | 
  }
  From:  (3, 6)  {
    |              |     |              |     |              | 
    ([ 3, 5]  0.018915)     |              |     |              | 
    |              |     ([ 4, 6]  0.014017)     |              | 
  }
  From:  (3, 7)  {
    |              |     ([ 2, 7]  0.015227)     |              | 
    ([ 3, 6]  0.029475)     ([ 3, 7]  0.016502)     |              | 
    |              |     ([ 4, 7]  0.014268)     |              | 
  }
  From:  (3, 8)  {
    |              |     ([ 2, 8]  0.022765)     |              | 
    |              |     ([ 3, 8]  0.029603)     |              | 
    |              |     ([ 4, 8]  0.017618)     |              | 
  }
  From:  (3, 9)  {
    |              |     ([ 2, 9]  0.016046)     |              | 
    |              |     ([ 3, 9]  0.011441)     ([ 3, 1]  0.017422) 
    |              |     ([ 4, 9]  0.013844)     |              | 
  }
  From:  (4, 1)  {
    |              |     |              |     |              | 
    ([ 4, 9]  0.017488)     ([ 4, 1]  0.026954)     ([ 4, 2]  0.028332) 
    |              |     |              |     |              | 
  }
  From:  (4, 2)  {
    |              |     ([ 3, 2]  0.026948)     |              | 
    |              |     ([ 4, 2]  0.022383)     ([ 4, 3]  0.026748) 
    |              |     ([ 5, 2]  0.015814)     |              | 
  }
  From:  (4, 3)  {
    |              |     |              |     |              | 
    |              |     ([ 4, 3]  0.021030)     ([ 4, 4]  0.029941) 
    |              |     |              |     |              | 
  }
  From:  (4, 4)  {
    |              |     |              |     |              | 
    |              |     |              |     |              | 
    |              |     ([ 5, 4]  0.028363)     |              | 
  }
  From:  (4, 5)  {
    |              |     ([ 3, 5]  0.020095)     |              | 
    |              |     ([ 4, 5]  0.017867)     |              | 
    |              |     ([ 5, 5]  0.014430)     |              | 
  }
  From:  (4, 6)  {
    |              |     ([ 3, 6]  0.016614)     |              | 
    |              |     ([ 4, 6]  0.029026)     ([ 4, 7]  0.023601) 
    |              |     |              |     |              | 
  }
  From:  (4, 7)  {
    |              |     ([ 3, 7]  0.012066)     |              | 
    ([ 4, 6]  0.017266)     ([ 4, 7]  0.011055)     ([ 4, 8]  0.023422) 
    |              |     ([ 5, 7]  0.026658)     |              | 
  }
  From:  (4, 8)  {
    |              |     ([ 3, 8]  0.028461)     |              | 
    |              |     ([ 4, 8]  0.029803)     ([ 4, 9]  0.014519) 
    |              |     ([ 5, 8]  0.025690)     |              | 
  }
  From:  (4, 9)  {
    |              |     ([ 3, 9]  0.029229)     |              | 
    ([ 4, 8]  0.028329)     ([ 4, 9]  0.018397)     |              | 
    |              |     ([ 5, 9]  0.013161)     |              | 
  }
  From:  (5, 1)  {
    |              |     ([ 4, 1]  0.017018)     |              | 
    |              |     ([ 5, 1]  0.010528)     |              | 
    |              |     |              |     |              | 
  }
  From:  (5, 2)  {
    |              |     ([ 4, 2]  0.024030)     |              | 
    |              |     |              |     |              | 
    |              |     ([ 6, 2]  0.010199)     |              | 
  }
  From:  (5, 3)  {
    |              |     ([ 4, 3]  0.014322)     |              | 
    ([ 5, 2]  0.021354)     |              |     |              | 
    |              |     |              |     |              | 
  }
  From:  (5, 4)  {
    |              |     |              |     |              | 
    |              |     ([ 5, 4]  0.020866)     ([ 5, 5]  0.019029) 
    |              |     ([ 6, 4]  0.016136)     |              | 
  }
  From:  (5, 5)  {
    |              |     ([ 4, 5]  0.022634)     |              | 
    |              |     |              |     ([ 5, 6]  0.027310) 
    |              |     ([ 6, 5]  0.021437)     |              | 
  }
  From:  (5, 6)  {
    |              |     |              |     |              | 
    ([ 5, 5]  0.011356)     |              |     ([ 5, 7]  0.021121) 
    |              |     |              |     |              | 
  }
  From:  (5, 7)  {
    |              |     ([ 4, 7]  0.021765)     |              | 
    |              |     |              |     |              | 
    |              |     ([ 6, 7]  0.023376)     |              | 
  }
  From:  (5, 8)  {
    |              |     |              |     |              | 
    ([ 5, 7]  0.011933)     |              |     ([ 5, 9]  0.018759) 
    |              |     ([ 6, 8]  0.029883)     |              | 
  }
  From:  (5, 9)  {
    |              |     ([ 4, 9]  0.010864)     |              | 
    |              |     ([ 5, 9]  0.017462)     ([ 5, 1]  0.020295) 
    |              |     |              |     |              | 
  }
  From:  (6, 1)  {
    |              |     |              |     |              | 
    ([ 6, 9]  0.025060)     ([ 6, 1]  0.021768)     |              | 
    |              |     ([ 7, 1]  0.018736)     |              | 
  }
  From:  (6, 2)  {
    |              |     ([ 5, 2]  0.013163)     |              | 
    |              |     ([ 6, 2]  0.012871)     ([ 6, 3]  0.017622) 
    |              |     |              |     |              | 
  }
  From:  (6, 3)  {
    |              |     |              |     |              | 
    ([ 6, 2]  0.012502)     ([ 6, 3]  0.019375)     ([ 6, 4]  0.027846) 
    |              |     ([ 7, 3]  0.010877)     |              | 
  }
  From:  (6, 4)  {
    |              |     ([ 5, 4]  0.016807)     |              | 
    |              |     |              |     ([ 6, 5]  0.023248) 
    |              |     |              |     |              | 
  }
  From:  (6, 5)  {
    |              |     ([ 5, 5]  0.013165)     |              | 
    ([ 6, 4]  0.020202)     |              |     |              | 
    |              |     |              |     |              | 
  }
  From:  (6, 6)  {
    |              |     ([ 5, 6]  0.016133)     |              | 
    ([ 6, 5]  0.027030)     ([ 6, 6]  0.015459)     |              | 
    |              |     |              |     |              | 
  }
  From:  (6, 7)  {
    |              |     |              |     |              | 
    |              |     ([ 6, 7]  0.023005)     |              | 
    |              |     ([ 7, 7]  0.016333)     |              | 
  }
  From:  (6, 8)  {
    |              |     |              |     |              | 
    ([ 6, 7]  0.022465)     ([ 6, 8]  0.013359)     ([ 6, 9]  0.027447) 
    |              |     |              |     |              | 
  }
  From:  (6, 9)  {
    |              |     ([ 5, 9]  0.012667)     |              | 
    ([ 6, 8]  0.023300)     |              |     ([ 6, 1]  0.028559) 
    |              |     ([ 7, 9]  0.017959)     |              | 
  }
  From:  (7, 1)  {
    |              |     ([ 6, 1]  0.021533)     |              | 
    ([ 7, 9]  0.022681)     |              |     ([ 7, 2]  0.013418) 
    |              |     |              |     |              | 
  }
  From:  (7, 2)  {
    |              |     ([ 6, 2]  0.022907)     |              | 
    |              |     |              |     ([ 7, 3]  0.017691) 
    |              |     |              |     |              | 
  }
  From:  (7, 3)  {
    |              |     |              |     |              | 
    ([ 7, 2]  0.016717)     ([ 7, 3]  0.022878)     |              | 
    |              |     |              |     |              | 
  }
  From:  (7, 4)  {
    |              |     |              |     |              | 
    ([ 7, 3]  0.015433)     |              |     |              | 
    |              |     |              |     |              | 
  }
  From:  (7, 5)  {
    |              |     ([ 6, 5]  0.011508)     |              | 
    ([ 7, 4]  0.025350)     ([ 7, 5]  0.013876)     |              | 
    |              |     |              |     |              | 
  }
  From:  (7, 6)  {
    |              |     ([ 6, 6]  0.024576)     |              | 
    |              |     |              |     |              | 
    |              |     |              |     |              | 
  }
  From:  (7, 7)  {
    |              |     ([ 6, 7]  0.023250)     |              | 
    |              |     |              |     |              | 
    |              |     ([ 8, 7]  0.020666)     |              | 
  }
  From:  (7, 8)  {
    |              |     ([ 6, 8]  0.023265)     |              | 
    |              |     ([ 7, 8]  0.027725)     |              | 
    |              |     |              |     |              | 
  }
  From:  (7, 9)  {
    |              |     |              |     |              | 
    ([ 7, 8]  0.028201)     ([ 7, 9]  0.015221)     ([ 7, 1]  0.026734) 
    |              |     ([ 8, 9]  0.017481)     |              | 
  }
  From:  (8, 1)  {
    |              |     ([ 7, 1]  0.013546)     |              | 
    ([ 8, 9]  0.016088)     |              |     ([ 8, 2]  0.017783) 
    |              |     |              |     |              | 
  }
  From:  (8, 2)  {
    |              |     |              |     |              | 
    |              |     |              |     |              | 
    |              |     ([ 9, 2]  0.013831)     |              | 
  }
  From:  (8, 3)  {
    |              |     |              |     |              | 
    |              |     |              |     |              | 
    |              |     |              |     |              | 
    ([ 1, 1]  0.006955)   }
  From:  (8, 4)  {
    |              |     |              |     |              | 
    |              |     ([ 8, 4]  0.021433)     |              | 
    |              |     ([ 9, 4]  0.028322)     |              | 
  }
  From:  (8, 5)  {
    |              |     |              |     |              | 
    |              |     |              |     |              | 
    |              |     ([ 9, 5]  0.016536)     |              | 
  }
  From:  (8, 6)  {
    |              |     |              |     |              | 
    |              |     |              |     ([ 8, 7]  0.016884) 
    |              |     ([ 9, 6]  0.017269)     |              | 
  }
  From:  (8, 7)  {
    |              |     ([ 7, 7]  0.020230)     |              | 
    |              |     |              |     |              | 
    |              |     |              |     |              | 
  }
  From:  (8, 8)  {
    |              |     ([ 7, 8]  0.028890)     |              | 
    ([ 8, 7]  0.013456)     ([ 8, 8]  0.029465)     |              | 
    |              |     ([ 9, 8]  0.029044)     |              | 
  }
  From:  (8, 9)  {
    |              |     |              |     |              | 
    ([ 8, 8]  0.024304)     ([ 8, 9]  0.022651)     ([ 8, 1]  0.028187) 
    |              |     |              |     |              | 
  }
  From:  (9, 1)  {
    |              |     |              |     |              | 
    |              |     ([ 9, 1]  0.023206)     ([ 9, 2]  0.010533) 
    |              |     |              |     |              | 
  }
  From:  (9, 2)  {
    |              |     ([ 8, 2]  0.021275)     |              | 
    |              |     ([ 9, 2]  0.010847)     ([ 9, 3]  0.021150) 
    |              |     ([ 1, 2]  0.026568)     |              | 
  }
  From:  (9, 3)  {
    |              |     |              |     |              | 
    ([ 9, 2]  0.011694)     ([ 9, 3]  0.020080)     |              | 
    |              |     ([ 1, 3]  0.017776)     |              | 
  }
  From:  (9, 4)  {
    |              |     ([ 8, 4]  0.026044)     |              | 
    ([ 9, 3]  0.023544)     |              |     |              | 
    |              |     |              |     |              | 
  }
  From:  (9, 5)  {
    |              |     ([ 8, 5]  0.021315)     |              | 
    ([ 9, 4]  0.027318)     ([ 9, 5]  0.017495)     ([ 9, 6]  0.028178) 
    |              |     |              |     |              | 
  }
  From:  (9, 6)  {
    |              |     |              |     |              | 
    |              |     |              |     ([ 9, 7]  0.013745) 
    |              |     |              |     |              | 
  }
  From:  (9, 7)  {
    |              |     ([ 8, 7]  0.028380)     |              | 
    |              |     |              |     |              | 
    |              |     |              |     |              | 
  }
  From:  (9, 8)  {
    |              |     |              |     |              | 
    |              |     ([ 9, 8]  0.024100)     ([ 9, 9]  0.010414) 
    |              |     |              |     |              | 
  }
  From:  (9, 9)  {
    |              |     |              |     |              | 
    |              |     ([ 9, 9]  0.024304)     ([ 9, 1]  0.025828) 
    |              |     |              |     |              | 
  }
}
