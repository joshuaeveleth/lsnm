% Tue Jul 15 10:31:49 2014

% Input layer: (9, 9)
% Output layer: (1, 81)
% Fanout size: (1, 5)
% Fanout spacing: (1, 1)
% Specified fanout weights

Connect(istg, ig2d)  {
  From:  (1, 1)  {
    |              |     ([ 1,81] -0.000120)     |              |     ([ 1, 2] -0.000081)     |              | 
  }
  From:  (1, 2)  {
    |              |     ([ 1, 1] -0.000191)     |              |     |              |     ([ 1, 4] -0.000143) 
  }
  From:  (1, 3)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1] -0.000144)   }
  From:  (1, 4)  {
    |              |     ([ 1, 3] -0.000091)     ([ 1, 4] -0.000077)     |              |     |              | 
  }
  From:  (1, 5)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1] -0.000085)   }
  From:  (1, 6)  {
    ([ 1, 4] -0.000159)     ([ 1, 5] -0.000131)     |              |     |              |     |              | 
  }
  From:  (1, 7)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 1, 1] -0.000187)   }
  From:  (1, 8)  {
    |              |     ([ 1, 7] -0.000192)     |              |     ([ 1, 9] -0.000129)     |              | 
  }
  From:  (1, 9)  {
    |              |     |              |     |              |     |              |     ([ 1,11] -0.000176) 
  }
  From:  (2, 1)  {
    |              |     |              |     ([ 1,10] -0.000126)     ([ 1,11] -0.000076)     |              | 
  }
  From:  (2, 2)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 2, 1] -0.000071)   }
  From:  (2, 3)  {
    |              |     |              |     ([ 1,12] -0.000139)     ([ 1,13] -0.000146)     |              | 
  }
  From:  (2, 4)  {
    ([ 1,11] -0.000081)     |              |     |              |     |              |     |              | 
  }
  From:  (2, 5)  {
    |              |     |              |     |              |     |              |     ([ 1,16] -0.000178) 
  }
  From:  (2, 6)  {
    |              |     |              |     |              |     ([ 1,16] -0.000127)     |              | 
  }
  From:  (2, 7)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 2, 1] -0.000116)   }
  From:  (2, 8)  {
    |              |     ([ 1,16] -0.000082)     |              |     |              |     |              | 
  }
  From:  (2, 9)  {
    |              |     ([ 1,17] -0.000068)     |              |     ([ 1,19] -0.000195)     |              | 
  }
  From:  (3, 1)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 3, 1] -0.000079)   }
  From:  (3, 2)  {
    |              |     |              |     |              |     ([ 1,21] -0.000193)     |              | 
  }
  From:  (3, 3)  {
    ([ 1,19] -0.000080)     ([ 1,20] -0.000082)     |              |     |              |     ([ 1,23] -0.000161) 
  }
  From:  (3, 4)  {
    |              |     |              |     |              |     ([ 1,23] -0.000136)     |              | 
  }
  From:  (3, 5)  {
    |              |     ([ 1,22] -0.000164)     ([ 1,23] -0.000151)     ([ 1,24] -0.000086)     |              | 
  }
  From:  (3, 6)  {
    ([ 1,22] -0.000190)     ([ 1,23] -0.000080)     |              |     |              |     ([ 1,26] -0.000141) 
  }
  From:  (3, 7)  {
    |              |     |              |     |              |     ([ 1,26] -0.000165)     ([ 1,27] -0.000139) 
  }
  From:  (3, 8)  {
    |              |     ([ 1,25] -0.000111)     |              |     |              |     |              | 
  }
  From:  (3, 9)  {
    |              |     ([ 1,26] -0.000109)     |              |     |              |     |              | 
  }
  From:  (4, 1)  {
    |              |     ([ 1,27] -0.000159)     ([ 1,28] -0.000191)     ([ 1,29] -0.000092)     |              | 
  }
  From:  (4, 2)  {
    ([ 1,27] -0.000082)     |              |     |              |     ([ 1,30] -0.000150)     |              | 
  }
  From:  (4, 3)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 4, 1] -0.000194)   }
  From:  (4, 4)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 4, 1] -0.000102)   }
  From:  (4, 5)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 4, 1] -0.000169)   }
  From:  (4, 6)  {
    ([ 1,31] -0.000069)     |              |     |              |     |              |     |              | 
  }
  From:  (4, 7)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 4, 1] -0.000186)   }
  From:  (4, 8)  {
    ([ 1,33] -0.000150)     |              |     ([ 1,35] -0.000111)     |              |     |              | 
  }
  From:  (4, 9)  {
    ([ 1,34] -0.000091)     |              |     |              |     |              |     ([ 1,38] -0.000115) 
  }
  From:  (5, 1)  {
    |              |     ([ 1,36] -0.000118)     ([ 1,37] -0.000070)     |              |     |              | 
  }
  From:  (5, 2)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 5, 1] -0.000109)   }
  From:  (5, 3)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 5, 1] -0.000146)   }
  From:  (5, 4)  {
    ([ 1,38] -0.000117)     |              |     |              |     |              |     |              | 
  }
  From:  (5, 5)  {
    ([ 1,39] -0.000067)     |              |     |              |     |              |     ([ 1,43] -0.000200) 
  }
  From:  (5, 6)  {
    |              |     ([ 1,41] -0.000177)     |              |     |              |     ([ 1,44] -0.000115) 
  }
  From:  (5, 7)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 5, 1] -0.000142)   }
  From:  (5, 8)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 5, 1] -0.000115)   }
  From:  (5, 9)  {
    |              |     |              |     |              |     ([ 1,46] -0.000133)     ([ 1,47] -0.000102) 
  }
  From:  (6, 1)  {
    |              |     |              |     |              |     |              |     ([ 1,48] -0.000142) 
  }
  From:  (6, 2)  {
    |              |     |              |     |              |     ([ 1,48] -0.000180)     |              | 
  }
  From:  (6, 3)  {
    |              |     |              |     ([ 1,48] -0.000129)     |              |     ([ 1,50] -0.000148) 
  }
  From:  (6, 4)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 6, 1] -0.000101)   }
  From:  (6, 5)  {
    |              |     |              |     |              |     |              |     ([ 1,52] -0.000114) 
  }
  From:  (6, 6)  {
    ([ 1,49] -0.000187)     |              |     |              |     |              |     |              | 
  }
  From:  (6, 7)  {
    |              |     |              |     ([ 1,52] -0.000146)     |              |     |              | 
  }
  From:  (6, 8)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 6, 1] -0.000071)   }
  From:  (6, 9)  {
    |              |     |              |     ([ 1,54] -0.000117)     ([ 1,55] -0.000178)     |              | 
  }
  From:  (7, 1)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 7, 1] -0.000097)   }
  From:  (7, 2)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 7, 1] -0.000113)   }
  From:  (7, 3)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 7, 1] -0.000125)   }
  From:  (7, 4)  {
    |              |     |              |     |              |     ([ 1,59] -0.000130)     |              | 
  }
  From:  (7, 5)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 7, 1] -0.000126)   }
  From:  (7, 6)  {
    ([ 1,58] -0.000094)     |              |     |              |     |              |     |              | 
  }
  From:  (7, 7)  {
    |              |     |              |     ([ 1,61] -0.000163)     |              |     |              | 
  }
  From:  (7, 8)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 7, 1] -0.000173)   }
  From:  (7, 9)  {
    ([ 1,61] -0.000120)     |              |     |              |     ([ 1,64] -0.000184)     |              | 
  }
  From:  (8, 1)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 8, 1] -0.000068)   }
  From:  (8, 2)  {
    |              |     |              |     ([ 1,65] -0.000166)     |              |     ([ 1,67] -0.000141) 
  }
  From:  (8, 3)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 8, 1] -0.000163)   }
  From:  (8, 4)  {
    |              |     |              |     ([ 1,67] -0.000108)     |              |     ([ 1,69] -0.000151) 
  }
  From:  (8, 5)  {
    |              |     ([ 1,67] -0.000173)     |              |     ([ 1,69] -0.000117)     |              | 
  }
  From:  (8, 6)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 8, 1] -0.000133)   }
  From:  (8, 7)  {
    |              |     ([ 1,69] -0.000097)     |              |     ([ 1,71] -0.000178)     |              | 
  }
  From:  (8, 8)  {
    ([ 1,69] -0.000153)     |              |     |              |     |              |     |              | 
  }
  From:  (8, 9)  {
    |              |     |              |     |              |     |              |     ([ 1,74] -0.000135) 
  }
  From:  (9, 1)  {
    ([ 1,71] -0.000088)     |              |     |              |     |              |     ([ 1,75] -0.000069) 
  }
  From:  (9, 2)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 9, 1] -0.000125)   }
  From:  (9, 3)  {
    ([ 1,73] -0.000138)     ([ 1,74] -0.000154)     |              |     |              |     |              | 
  }
  From:  (9, 4)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 9, 1] -0.000184)   }
  From:  (9, 5)  {
    |              |     |              |     |              |     |              |     ([ 1,79] -0.000098) 
  }
  From:  (9, 6)  {
    |              |     |              |     ([ 1,78] -0.000180)     |              |     |              | 
  }
  From:  (9, 7)  {
    ([ 1,77] -0.000189)     |              |     |              |     |              |     |              | 
  }
  From:  (9, 8)  {
    |              |     |              |     |              |     |              |     |              | 
    ([ 9, 1] -0.000162)   }
  From:  (9, 9)  {
    |              |     ([ 1,80] -0.000108)     |              |     |              |     |              | 
  }
}
