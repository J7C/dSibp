(* Created with the Wolfram Language : www.wolfram.com *)
{{(-2*(1 + 2*nu)*(1 + 2*b0 + 4*nu)*Log[x] - (5 + 4*ep + 2*nu)*Log[1 - x^2] + 
    ((1 - 2*nu - 192*ep^5*nu + 36*nu^2 + 88*nu^3 + 128*nu^4 + 64*nu^5 + 
       Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 4*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
       12*nu^2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
       48*nu^3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
       32*nu^4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
       16*ep^4*(3 + 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         4*nu^2*(9 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
         2*nu*(9 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       16*ep^3*(5 - 16*nu^3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         16*nu^2*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
         2*nu*(9 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
       4*ep*(-3 - 40*nu^2 - 64*nu^5 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         32*nu^4*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         24*nu^3*(-3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         nu*(9 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       8*ep^2*(-40*nu^3 + 3*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
         2*nu*(11 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         4*nu^2*(5 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       b0*(-1 - 96*ep^5 + 32*nu^4 - 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         nu^2*(44 - 24*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         nu*(20 - 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
         16*nu^3*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         16*ep^4*(-13 + 4*nu^2 - 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           2*nu*(8 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
         2*ep*(13 - 44*nu - 64*nu^4 + 10*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           32*nu^3*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           24*nu^2*(-3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         16*ep^3*(-15 - 8*nu^2 - 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           2*nu*(7 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         8*ep^2*(-17 - 20*nu^2 - 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           2*nu*(5 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
      Log[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - x^2 - 4*ep*x^2 - 4*ep^2*x^2])/
     ((1 + 2*ep)^4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
    ((-1 + 2*nu + 192*ep^5*nu - 36*nu^2 - 88*nu^3 - 128*nu^4 - 64*nu^5 + 
       Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 4*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
       12*nu^2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
       48*nu^3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
       32*nu^4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
       16*ep^4*(-3 - 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         nu*(18 - 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         4*nu^2*(-9 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       16*ep^3*(-5 + 16*nu^3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         16*nu^2*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
         2*nu*(-9 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
       4*ep*(3 + 40*nu^2 + 64*nu^5 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         32*nu^4*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         24*nu^3*(3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         nu*(-9 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       8*ep^2*(40*nu^3 + nu*(22 - 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         3*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         4*nu^2*(-5 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       b0*(1 + 96*ep^5 - 32*nu^4 - 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         16*nu^3*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
         2*nu*(10 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
         4*nu^2*(11 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         16*ep^4*(13 - 4*nu^2 - 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           2*nu*(-8 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
         2*ep*(-13 + 44*nu + 64*nu^4 + 10*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           32*nu^3*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           24*nu^2*(3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         16*ep^3*(15 + 8*nu^2 - 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           2*nu*(-7 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         8*ep^2*(17 + 20*nu^2 - 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           2*nu*(-5 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
      Log[2 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - x^2 - 4*ep^2*x^2 + 
        ep*(2 - 4*x^2)])/((1 + 2*ep)^4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))/4, 0, 
  0, 0, ((1 + 2*nu)*(2*(1 + 2*ep)^4*(1 + 2*b0 + 4*nu)*Log[x] + 
     (1 + 2*ep)^4*Log[1 - x^2] - ((-3 + 22*nu - 192*ep^5*nu + 116*nu^2 + 
        216*nu^3 + 192*nu^4 + 64*nu^5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        12*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        60*nu^2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        80*nu^3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        32*nu^4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        16*ep^3*(-3 + 12*nu^2 + 16*nu^3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        16*ep^4*(-1 + 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-22 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        8*ep^2*(6 - 64*nu^4 - 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          8*nu^3*(-17 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^2*(-13 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-20 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        4*ep*(5 - 64*nu^5 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          32*nu^4*(-7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(-35 + 12*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-33 + 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-41 + 20*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        b0*(15 - 96*ep^5 + 32*nu^4 + 32*ep^3*(-1 + 2*nu + 4*nu^2) - 
          7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^2*(108 - 40*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          16*nu^3*(-6 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          30*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*ep^4*(-11 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          16*ep^2*(-8 - 16*nu^3 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            2*nu*(-13 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu^2*(-34 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          2*ep*(-64*nu^4 + 32*nu^3*(-7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            5*(-9 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu*(-21 + 10*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^2*(-35 + 12*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
       Log[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - x^2 - 4*ep*x^2 - 4*ep^2*x^2])/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
     ((-3 + 22*nu - 192*ep^5*nu + 116*nu^2 + 216*nu^3 + 192*nu^4 + 64*nu^5 - 
        Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        12*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        60*nu^2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        80*nu^3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        32*nu^4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        16*ep^3*(3 - 12*nu^2 - 16*nu^3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        16*ep^4*(1 - 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(22 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        8*ep^2*(64*nu^4 - 3*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(17 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^2*(13 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(20 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep*(-5 + 64*nu^5 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          32*nu^4*(7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(35 + 12*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(33 + 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(41 + 20*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        b0*(15 - 96*ep^5 + 32*nu^4 + 32*ep^3*(-1 + 2*nu + 4*nu^2) + 
          7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          30*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^3*(6 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(27 + 10*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          16*ep^4*(11 - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          16*ep^2*(8 + 16*nu^3 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            2*nu*(13 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu^2*(34 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          2*ep*(64*nu^4 + 32*nu^3*(7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            5*(9 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu*(21 + 10*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^2*(35 + 12*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
       Log[2 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - x^2 - 4*ep^2*x^2 + 
         ep*(2 - 4*x^2)])/((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))/
   (4*(1 + 2*ep)^4), ((-2*I)*nu*(1 + 2*nu)*
    ((1 + 2*ep)*(b0*(1 + 2*ep)*(-2 + 4*ep^2 - 5*nu - 4*ep*nu - 2*nu^2) + 
       nu*(-3 + 8*ep^3 + ep^2*(4 - 16*nu) - 6*nu + ep*(-3 - 10*nu + 8*nu^2)))*
      Log[1 - x] - (1 + 2*ep)*(b0*(1 + 2*ep)*(-2 + 4*ep^2 - 5*nu - 4*ep*nu - 
         2*nu^2) + nu*(-3 + 8*ep^3 + ep^2*(4 - 16*nu) - 6*nu + 
         ep*(-3 - 10*nu + 8*nu^2)))*Log[1 + x] + 
     ((I/2)*nu*(96*ep^5*nu + ep^2*(256*nu^5 + 
          6*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          64*nu^4*(-1 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          80*nu^3*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu*(-4 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^2*(-1 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        8*ep^4*(1 - 32*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          2*nu*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(9 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(64*nu^5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(4 - 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          16*nu^4*(-9 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          8*nu^2*(-7 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          8*nu^3*(-15 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(-1 + 512*nu^6 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          64*nu^5*(-23 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(-8 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          32*nu^4*(-50 + 19*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          16*nu^3*(-66 + 25*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          4*nu^2*(-73 + 36*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^3*(-3 - 192*nu^4 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu*(-5 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-37 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^3*(-88 + 96*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        b0*(48*ep^5 + (1 + 2*nu)*(3 + 32*nu^4 - 
            4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            nu^2*(60 - 28*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            8*nu^3*(-9 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            6*nu*(-5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          8*ep^4*(-3 - 16*nu^2 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            4*nu*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          4*ep^3*(-8 - 96*nu^3 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            6*nu*(-12 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            12*nu^2*(-3 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          ep^2*(-4 + 128*nu^4 - 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            nu^3*(32 - 64*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            4*nu*(-8 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^2*(31 + 10*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          2*ep*(-7 - 128*nu^5 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            42*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(-23 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^3*(-50 + 19*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(-69 + 25*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) - 
     ((I/2)*nu*(96*ep^5*nu + 2*ep^2*(128*nu^5 - 
          3*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          40*nu^3*(-5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          32*nu^4*(1 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          4*nu^2*(1 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          4*nu*(4 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        8*ep^4*(-1 + 32*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          2*nu*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-9 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(64*nu^5 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          16*nu^4*(9 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^2*(7 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(4 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(15 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(-1 + 512*nu^6 - 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          64*nu^5*(23 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(8 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          32*nu^4*(50 + 19*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^3*(66 + 25*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(73 + 36*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        4*ep^3*(3 + 192*nu^4 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu*(5 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(37 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^3*(88 + 96*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        b0*(48*ep^5 + 8*ep^4*(3 + 16*nu^2 - 2*Sqrt[3 + 4*ep + 4*nu + 4*
                nu^2] + 4*nu*(-5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          2*ep^2*(-2 + 64*nu^4 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            nu^2*(124 - 40*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^3*(1 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            2*nu*(8 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          4*ep^3*(8 + 96*nu^3 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            6*nu*(12 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            12*nu^2*(3 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          (1 + 2*nu)*(3 + 32*nu^4 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            6*nu*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^3*(9 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(15 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          2*ep*(7 + 128*nu^5 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            42*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(23 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^3*(50 + 19*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(69 + 25*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   ((1 + 2*ep)^2*(2*ep^2 - (1 + 2*nu)^2)), 0, 
  ((2*I)*(1 + 3*nu + 2*nu^2)^2*
    ((1 + 2*ep)*(-1 + b0 + 2*b0*ep + ep*(-1 + 4*nu))*Log[1 - x] - 
     (1 + 2*ep)*(-1 + b0 + 2*b0*ep + ep*(-1 + 4*nu))*Log[1 + x] + 
     ((I/2)*(-96*ep^5*nu + 8*ep^4*(-3 - 32*nu^3 + 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 4*nu^2*
           (-13 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(-17 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^3*(-13 - 64*nu^4 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          44*nu^2*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(-5 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu*(-11 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(-2 + 64*nu^5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^4*(176 - 32*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          48*nu^2*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(-8 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          8*nu^3*(-23 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(-15 + 512*nu^6 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^3*(1984 - 816*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(732 - 352*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(72 - 42*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          64*nu^5*(-29 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          32*nu^4*(-82 + 25*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        2*ep^2*(21 - 384*nu^5 - 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          96*nu^4*(-9 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu*(-7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          136*nu^3*(-7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-107 + 35*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        b0*(-48*ep^5 + (1 + 2*nu)*(11 + 32*nu^4 - 
            6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            nu^2*(92 - 36*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu*(50 - 24*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu^3*(88 - 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          8*ep^4*(-13 - 16*nu^2 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            8*nu*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          4*ep^3*(-32*nu^3 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            18*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            4*nu^2*(-3 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          2*ep^2*(-56 - 192*nu^4 + 19*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            48*nu^3*(-9 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(-125 + 34*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu*(-268 + 82*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          2*ep*(-35 - 128*nu^5 + 17*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            16*nu^4*(-29 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^3*(-82 + 25*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(-127 + 51*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu*(-208 + 94*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(96*ep^5*nu + 8*ep^4*(3 + 32*nu^3 + Sqrt[3 + 4*ep + 4*nu + 
            4*nu^2] + 4*nu^2*(13 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(17 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^3*(13 + 64*nu^4 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          44*nu^2*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(5 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu*(11 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        (1 + 2*nu)*(-2 + 64*nu^5 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          48*nu^2*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^4*(11 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(8 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(23 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        2*ep^2*(384*nu^5 + 4*nu*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          136*nu^3*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          96*nu^4*(9 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          3*(7 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(107 + 35*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        ep*(-15 + 512*nu^6 - 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          64*nu^5*(29 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          6*nu*(12 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          32*nu^4*(82 + 25*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^3*(124 + 51*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(183 + 88*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        b0*(48*ep^5 + 8*ep^4*(13 + 16*nu^2 + 4*Sqrt[3 + 4*ep + 4*nu + 4*
                nu^2] + 8*nu*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          4*ep^3*(32*nu^3 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            18*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            4*nu^2*(3 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          (1 + 2*nu)*(11 + 32*nu^4 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            8*nu^3*(11 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(23 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu*(50 + 24*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          2*ep^2*(56 + 192*nu^4 + 19*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            48*nu^3*(9 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(125 + 34*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu*(268 + 82*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          2*ep*(35 + 128*nu^5 + 17*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            16*nu^4*(29 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^3*(82 + 25*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(127 + 51*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu*(208 + 94*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   ((1 + 2*ep)^2*(2*ep^2 - (1 + 2*nu)^2)), 
  ((-I)*(4*(1 + 4*ep)*(b0 + 2*nu)*(1 + 4*ep^2 + 3*nu + 2*nu^2 + 
       4*ep*(1 + nu))*x + ((1 + 2*ep)*(64*ep^4*nu - 4*nu*(1 + 2*nu)^2 - 
        8*ep^3*nu*(-5 + 6*nu) - 2*ep^2*(-1 + 10*nu + 56*nu^2 + 32*nu^3) - 
        ep*(-1 + 22*nu + 84*nu^2 + 72*nu^3) + b0*(1 + 2*ep)*
         (16*ep^3 + ep^2*(4 - 8*nu) - (1 + 2*nu)^2*(3 + 2*nu) - 
          8*ep*(1 + 3*nu + 2*nu^2)))*Log[1 - x])/(2*ep^2 - (1 + 2*nu)^2) - 
     ((1 + 2*ep)*(64*ep^4*nu - 4*nu*(1 + 2*nu)^2 - 8*ep^3*nu*(-5 + 6*nu) - 
        2*ep^2*(-1 + 10*nu + 56*nu^2 + 32*nu^3) - 
        ep*(-1 + 22*nu + 84*nu^2 + 72*nu^3) + b0*(1 + 2*ep)*
         (16*ep^3 + ep^2*(4 - 8*nu) - (1 + 2*nu)^2*(3 + 2*nu) - 
          8*ep*(1 + 3*nu + 2*nu^2)))*Log[1 + x])/(2*ep^2 - (1 + 2*nu)^2) - 
     ((I/2)*(-192*ep^6*nu*(1 + 4*nu) - (1 + 2*nu)^2*(1 - 12*nu^2 + 128*nu^6 - 
          40*nu^3*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          112*nu^4*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          32*nu^5*(-9 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-6 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        16*ep^5*(-1 - 128*nu^4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          64*nu^3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(-21 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-26 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        16*ep^4*(3 - 192*nu^5 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          6*nu^2*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          4*nu^3*(53 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(-9 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(-19 + 12*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(1 + 2*nu)*(-9 - 1024*nu^7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^2*(236 - 84*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(38 - 32*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          128*nu^6*(-25 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          128*nu^4*(-15 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(-25 + 14*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          64*nu^5*(-55 + 21*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^2*(-768*nu^7 + nu^3*(600 - 264*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(274 - 118*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(13 - 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          192*nu^6*(-7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          56*nu^4*(-1 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^5*(-59 + 22*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        8*ep^3*(7 - 384*nu^6 - 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          nu*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^5*(-55 + 12*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(-93 + 32*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(-103 + 57*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(-165 + 58*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        b0*(-96*ep^6*(1 + 4*nu) + 32*ep^4*(-1 + 48*nu^4 + 
            nu^3*(36 - 24*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            nu*(-9 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu^2*(59 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          16*ep^5*(-11 - 64*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            6*nu*(-6 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^2*(1 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          (1 + 2*nu)^2*(4 - 64*nu^5 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            56*nu^3*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(-9 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(-11 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          2*ep^2*(57 - 768*nu^6 - 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            nu*(340 - 80*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            192*nu^5*(-7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            20*nu^2*(-28 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            8*nu^3*(14 + 15*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(-65 + 22*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          2*ep*(1 + 2*nu)*(18 - 256*nu^6 - 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            nu*(60 - 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            32*nu^5*(-25 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            56*nu^3*(-9 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(-55 + 21*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu^2*(-76 + 40*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          4*ep^3*(-33 - 384*nu^5 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            16*nu^4*(-53 + 12*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(-167 + 49*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^3*(-94 + 55*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu*(-248 + 58*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(2*ep^2 - (1 + 2*nu)^2)*
       Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) - 
     ((I/2)*(192*ep^6*nu*(1 + 4*nu) + (1 + 2*nu)^2*(1 - 12*nu^2 + 128*nu^6 + 
          40*nu^3*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          112*nu^4*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          32*nu^5*(9 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        16*ep^5*(1 + 128*nu^4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          64*nu^3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(21 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(26 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        16*ep^4*(-3 + 192*nu^5 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          4*nu^3*(-53 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          6*nu^2*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(9 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(19 + 12*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(1 + 2*nu)*(9 + 1024*nu^7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          128*nu^6*(25 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          128*nu^4*(15 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(25 + 14*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(19 + 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          64*nu^5*(55 + 21*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          4*nu^2*(59 + 21*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        8*ep^3*(-7 + 384*nu^6 - 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          nu*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^5*(55 + 12*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(93 + 32*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(103 + 57*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(165 + 58*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^2*(768*nu^7 + 2*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          192*nu^6*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          56*nu^4*(1 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          24*nu^3*(25 + 11*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          nu*(13 + 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^5*(59 + 22*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu^2*(137 + 59*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        b0*(96*ep^6*(1 + 4*nu) - 32*ep^4*(-1 + 48*nu^4 + 
            nu^2*(59 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu*(9 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            12*nu^3*(3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          16*ep^5*(11 + 64*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            6*nu*(6 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^2*(-1 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          (1 + 2*nu)^2*(-4 + 64*nu^5 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            56*nu^3*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(9 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(11 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          2*ep^2*(-57 + 768*nu^6 - 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            192*nu^5*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            20*nu*(17 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            20*nu^2*(28 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            8*nu^3*(-14 + 15*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(65 + 22*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          2*ep*(1 + 2*nu)*(-18 + 256*nu^6 - 5*Sqrt[3 + 4*ep + 4*nu + 4*
                nu^2] - 4*nu*(15 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            56*nu^3*(9 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            32*nu^5*(25 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(55 + 21*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu^2*(76 + 40*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          4*ep^3*(33 + 384*nu^5 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            16*nu^4*(53 + 12*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(167 + 49*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^3*(94 + 55*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu*(248 + 58*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(2*ep^2 - (1 + 2*nu)^2)*
       Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/(1 + 2*ep)^2, 0, 0, 
  (I*(1 + 2*nu)*(4*(1 + 4*ep)*(1 + nu)*(b0 + 2*nu)*x - 
     ((1 + 2*ep)*(2 + 8*ep^3*(-1 + nu) + 4*nu + 2*ep^2*(-3 + 8*nu) + 
        b0*(1 + 2*ep)*(-3 + 4*ep + 4*ep^2 - 8*nu - 4*nu^2) + 
        ep*(1 + 8*nu - 4*nu^2))*Log[1 - x])/(2*ep^2 - (1 + 2*nu)^2) + 
     ((1 + 2*ep)*(2 + 8*ep^3*(-1 + nu) + 4*nu + 2*ep^2*(-3 + 8*nu) + 
        b0*(1 + 2*ep)*(-3 + 4*ep + 4*ep^2 - 8*nu - 4*nu^2) + 
        ep*(1 + 8*nu - 4*nu^2))*Log[1 + x])/(2*ep^2 - (1 + 2*nu)^2) - 
     ((I/2)*(-192*ep^6*nu*(3 + 4*nu) - 16*ep^4*(13 - 64*nu^5 - 
          6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(36 - 24*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(-15 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          4*nu^3*(53 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu^2*(31 + 21*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        16*ep^5*(-7 - 128*nu^4 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          64*nu^3*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-49 + 19*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-90 + 28*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)^2*(3 - 128*nu^6 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          32*nu^5*(-15 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(-11 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^4*(-44 + 13*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-51 + 26*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(-66 + 29*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(1 + 2*nu)*(13 - 1024*nu^7 - 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          128*nu^6*(-35 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(-11 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          192*nu^4*(-37 + 14*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          64*nu^5*(-121 + 31*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          12*nu^2*(-73 + 35*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(-463 + 198*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        8*ep^3*(15 - 640*nu^6 - 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          16*nu^5*(-129 + 20*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-81 + 35*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(-341 + 111*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(-527 + 198*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(-802 + 312*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        4*ep^2*(2 + 256*nu^7 - 64*nu^6*(-3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*
                nu^2]) + 16*nu^5*(-43 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          64*nu^3*(-20 + 13*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-101 + 62*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(-167 + 99*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(-602 + 362*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        b0*(-96*ep^6*(3 + 4*nu) - 16*ep^4*(-11 - 32*nu^4 - 
            Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 16*nu^3*(-4 + Sqrt[3 + 4*ep + 
                4*nu + 4*nu^2]) - 2*nu^2*(67 + 4*Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2]) - 2*nu*(38 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          (1 + 2*nu)^2*(-18 - 64*nu^5 + 11*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            16*nu^4*(-15 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^3*(-44 + 13*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            2*nu*(-56 + 27*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(-67 + 29*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          2*ep*(1 + 2*nu)*(-30 - 256*nu^6 + 17*Sqrt[3 + 4*ep + 4*nu + 4*
                nu^2] + 32*nu^5*(-35 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            24*nu^3*(-75 + 28*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(-121 + 31*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu*(-71 + 32*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            12*nu^2*(-83 + 34*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          16*ep^5*(-31 - 64*nu^3 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            8*nu^2*(-11 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu*(-80 + 34*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          2*ep^2*(85 - 256*nu^6 - 46*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            nu^2*(952 - 724*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu*(464 - 288*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu^4*(592 - 96*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            64*nu^5*(-3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            8*nu^3*(-128 + 93*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          4*ep^3*(-145 - 640*nu^5 + 57*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            16*nu^4*(-127 + 20*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            6*nu*(-146 + 53*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^3*(-330 + 109*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(-521 + 191*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       (2*ep^2 - (1 + 2*nu)^2)*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) - 
     ((I/2)*(192*ep^6*nu*(3 + 4*nu) - 16*ep^4*(-13 + 64*nu^5 - 
          6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^2*(62 - 42*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          12*nu*(3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(15 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          4*nu^3*(-53 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        16*ep^5*(7 + 128*nu^4 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          64*nu^3*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(49 + 19*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(90 + 28*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)^2*(-3 + 128*nu^6 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          32*nu^5*(15 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(11 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^4*(44 + 13*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(51 + 26*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(66 + 29*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^2*(2 + 256*nu^7 + 64*nu^6*(3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*
                nu^2]) - 16*nu^5*(43 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          64*nu^3*(20 + 13*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          nu*(101 + 62*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          8*nu^4*(167 + 99*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu^2*(301 + 181*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(1 + 2*nu)*(-13 + 1024*nu^7 - 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          128*nu^6*(35 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(11 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          192*nu^4*(37 + 14*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          64*nu^5*(121 + 31*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          12*nu^2*(73 + 35*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(463 + 198*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        8*ep^3*(-15 + 640*nu^6 - 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          16*nu^5*(129 + 20*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(81 + 35*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(341 + 111*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(527 + 198*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(802 + 312*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        b0*(96*ep^6*(3 + 4*nu) - 16*ep^4*(11 + 32*nu^4 - 
            Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            nu*(76 - 10*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu^2*(134 - 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^3*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          (1 + 2*nu)^2*(18 + 64*nu^5 + 11*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            16*nu^4*(15 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^3*(44 + 13*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            2*nu*(56 + 27*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(67 + 29*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          16*ep^5*(31 + 64*nu^3 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            8*nu^2*(11 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu*(80 + 34*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          2*ep*(1 + 2*nu)*(30 + 256*nu^6 + 17*Sqrt[3 + 4*ep + 4*nu + 4*
                nu^2] + 32*nu^5*(35 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            24*nu^3*(75 + 28*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(121 + 31*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu*(71 + 32*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            12*nu^2*(83 + 34*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          2*ep^2*(-85 + 256*nu^6 - 46*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            64*nu^5*(3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            16*nu^4*(37 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            16*nu*(29 + 18*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            8*nu^3*(128 + 93*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            4*nu^2*(238 + 181*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          4*ep^3*(145 + 640*nu^5 + 57*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            16*nu^4*(127 + 20*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            6*nu*(146 + 53*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^3*(330 + 109*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(521 + 191*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       (2*ep^2 - (1 + 2*nu)^2)*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/(1 + 2*ep)^2, 
  (I*(1 + 2*nu)*((1 + 2*ep)*(b0*(1 + 2*ep)*(-1 + 2*ep - 2*nu) + 8*ep^2*nu - 
       2*nu*(1 + 2*nu) - ep*(1 + 2*nu + 8*nu^2))*Log[1 - x] - 
     (1 + 2*ep)*(b0*(1 + 2*ep)*(-1 + 2*ep - 2*nu) + 8*ep^2*nu - 
       2*nu*(1 + 2*nu) - ep*(1 + 2*nu + 8*nu^2))*Log[1 + x] + 
     ((I/2)*(-48*ep^4*nu + 4*ep^3*(-1 - 32*nu^3 + 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^2*(-1 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(-1 + 16*nu^4 - 8*nu^3*(-4 + Sqrt[3 + 4*ep + 4*nu + 
              4*nu^2]) - 2*nu*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          4*nu^2*(-5 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^2*(-2 + nu + 32*nu^4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          2*nu^2*(-15 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          4*nu^3*(-7 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(-5 + 128*nu^5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^2*(156 - 72*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^4*(352 - 64*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          10*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          16*nu^3*(-20 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        b0*(-24*ep^4 + (1 + 2*nu)*(4 + 8*nu^3 - Sqrt[3 + 4*ep + 4*nu + 
              4*nu^2] + nu*(10 - 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            4*nu^2*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          ep^2*(18 + 64*nu^3 - 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
            4*nu*(-19 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            8*nu^2*(-7 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          4*ep^3*(-5 - 16*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            nu*(-2 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          ep*(20 + 64*nu^4 - 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            nu*(88 - 36*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu^3*(176 - 32*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            8*nu^2*(-20 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(48*ep^4*nu + 4*ep^3*(1 + 32*nu^3 + Sqrt[3 + 4*ep + 4*nu + 
            4*nu^2] + 8*nu^2*(1 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        (1 + 2*nu)*(-1 + 16*nu^4 + 2*nu*(3 + Sqrt[3 + 4*ep + 4*nu + 
              4*nu^2]) + 8*nu^3*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(5 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        4*ep^2*(-2 + nu + 32*nu^4 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu^2*(15 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(7 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        ep*(-5 + 128*nu^5 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          10*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          32*nu^4*(11 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          12*nu^2*(13 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^3*(20 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        b0*(24*ep^4 - (1 + 2*nu)*(4 + 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 
              4*nu^2] + 4*nu^2*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            2*nu*(5 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          2*ep^2*(9 + 32*nu^3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            2*nu*(19 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(7 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          4*ep^3*(5 + 16*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            nu*(2 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          2*ep*(10 + 32*nu^4 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            8*nu^3*(11 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(20 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            2*nu*(22 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   ((1 + 2*ep)*(2*ep^2 - (1 + 2*nu)^2)), 0, (2*nu*(1 + 2*nu))/(-1 + x^2) - 
   4*(1 + 2*nu)^2*(b0 + 2*nu)*Log[x] - 
   (2*(b0*(1 + 2*ep)*(8*ep^3 - 20*ep^2*nu + 3*nu*(1 + 2*nu) + 
        2*ep*(-2 - 3*nu + 6*nu^2)) - nu*(1 - 32*ep^4 - 2*nu - 8*nu^2 + 
        8*ep^3*(-3 + 8*nu) + ep^2*(10 + 52*nu - 48*nu^2) + 
        ep*(15 + 38*nu + 16*nu^2 + 32*nu^3)))*Log[1 - x^2])/
    ((1 + 2*ep)*(2*ep^2 - (1 + 2*nu)^2)) - 
   (nu*(192*ep^5*nu + (1 + 2*nu)*(2 - 16*nu^4 + 
        Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        8*nu^3*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        8*nu^2*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      ep*(17 - 128*nu^5 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        64*nu^4*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*nu*(10 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        32*nu^3*(-1 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        4*nu^2*(9 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      4*ep^2*(5 + 64*nu^5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu^2*(20 - 30*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        nu*(-12 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        32*nu^4*(6 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        12*nu^3*(19 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
      16*ep^4*(3 + 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        4*nu^2*(9 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        nu*(9 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
      4*ep^3*(9 - 32*nu^3 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        10*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        4*nu^2*(35 + 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
      b0*(-96*ep^5 + (1 + 2*nu)*(5 + 8*nu^3 + 
          2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(6 - 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          4*nu^2*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        8*ep^4*(-17 + 8*nu^2 - 10*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu*(8 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        8*ep^3*(-4 - 8*nu^2 - 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu*(9 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        2*ep*(20 + 32*nu^4 + 11*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^2*(52 - 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          16*nu^3*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(60 + 22*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        2*ep^2*(-28 + 64*nu^4 - 17*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          32*nu^3*(5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(37 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(36 + 31*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
     Log[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
       2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - x^2 - 4*ep*x^2 - 4*ep^2*x^2])/
    ((1 + 2*ep)^2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(2*ep^2 - (1 + 2*nu)^2)) + 
   (nu*(-192*ep^5*nu - 16*ep^4*(-3 - 8*nu^3 + 
        Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(9 - 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*nu^2*(-9 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      (1 + 2*nu)*(-2 + 16*nu^4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        8*nu^2*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        8*nu^3*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      4*ep^2*(-5 - 64*nu^5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        32*nu^4*(-6 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        nu*(12 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        10*nu^2*(2 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        12*nu^3*(-19 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      ep*(-17 + 128*nu^5 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(-10 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        64*nu^4*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        32*nu^3*(1 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        4*nu^2*(-9 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
      4*ep^3*(-9 + 32*nu^3 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        10*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        4*nu^2*(-35 + 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      b0*(-96*ep^5 - 8*ep^4*(17 - 8*nu^2 - 
          10*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu*(-8 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        8*ep^3*(4 + 8*nu^2 - 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu*(-9 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(5 + 8*nu^3 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(6 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        2*ep*(20 + 32*nu^4 - 11*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(60 - 22*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^3*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(13 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        2*ep^2*(28 - 64*nu^4 - 17*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(72 - 62*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          32*nu^3*(-5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-37 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
     Log[2 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
       2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - x^2 - 4*ep^2*x^2 + 
       ep*(2 - 4*x^2)])/((1 + 2*ep)^2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
     (-2*ep^2 + (1 + 2*nu)^2)), 
  -(((1 + 3*nu + 2*nu^2)*((2*(1 + 2*ep)^2)/(-1 + x^2) + 
      8*(1 + 2*ep)^2*(b0 + 2*nu)*Log[x] - 
      (2*(1 + 2*ep)*(-1 - 8*ep^3 + 4*nu + 8*nu^2 + b0*(1 + 2*ep)*
          (3 + 2*ep + 4*nu) + ep^2*(-6 + 8*nu) + ep*(-1 + 24*nu + 32*nu^2))*
        Log[1 - x^2])/(2*ep^2 - (1 + 2*nu)^2) + 
      ((-192*ep^5*nu + (1 + 2*nu)*(16*nu^4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           nu*(8 - 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
           8*nu^3*(-5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
           16*nu^2*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         16*ep^4*(-1 + 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           4*nu^2*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           nu*(-13 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         4*ep^3*(-11 + 84*nu^2 + 96*nu^3 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           2*nu*(2 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         ep*(128*nu^5 + nu*(44 - 34*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
           64*nu^4*(-8 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           3*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
           96*nu^3*(-7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
           20*nu^2*(-17 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
         4*ep^2*(9 + 64*nu^5 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           32*nu^4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           nu*(-22 + 13*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           4*nu^3*(-47 + 20*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           2*nu^2*(-76 + 33*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         b0*(-96*ep^5 + 8*ep^3*(7 + 22*nu + 24*nu^2) + 
           ep*(40 + 64*nu^4 - 18*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             nu^2*(376 - 80*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
             nu*(200 - 68*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
             32*nu^3*(-9 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
           (1 + 2*nu)*(3 + 8*nu^3 - 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             nu*(14 - 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
             4*nu^2*(-5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
           8*ep^4*(-13 + 8*nu^2 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             4*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
           2*ep^2*(-54 + 64*nu^4 + 13*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             32*nu^3*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
             4*nu^2*(-59 + 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
             2*nu*(-98 + 25*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
        Log[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - x^2 - 4*ep*x^2 - 4*ep^2*x^2])/
       ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)) - 
      ((-192*ep^5*nu - 16*ep^4*(1 - 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           4*nu^2*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           nu*(13 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
         4*ep^3*(11 - 84*nu^2 - 96*nu^3 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           2*nu*(-2 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         (1 + 2*nu)*(16*nu^4 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           16*nu^2*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           8*nu^3*(5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           nu*(8 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         4*ep^2*(-9 - 64*nu^5 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           32*nu^4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           nu*(22 + 13*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           4*nu^3*(47 + 20*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           2*nu^2*(76 + 33*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         ep*(128*nu^5 - 3*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           64*nu^4*(8 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           96*nu^3*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           20*nu^2*(17 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           nu*(44 + 34*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         b0*(-96*ep^5 + 8*ep^3*(7 + 22*nu + 24*nu^2) - 
           8*ep^4*(13 - 8*nu^2 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             4*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
           (1 + 2*nu)*(3 + 8*nu^3 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             4*nu^2*(5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
             2*nu*(7 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
           2*ep*(20 + 32*nu^4 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             16*nu^3*(9 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
             4*nu^2*(47 + 10*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
             2*nu*(50 + 17*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
           2*ep^2*(54 - 64*nu^4 + 13*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             32*nu^3*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
             4*nu^2*(59 + 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
             2*nu*(98 + 25*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
        Log[2 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - x^2 - 4*ep^2*x^2 + 
          ep*(2 - 4*x^2)])/((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
        (-2*ep^2 + (1 + 2*nu)^2))))/(1 + 2*ep)^2), 
  (-2*ep*(2*(1 + 2*ep)^2*(b0*(1 + 2*ep)*(-1 + 2*ep - 2*nu) + 8*ep^2*nu - 
       2*nu*(1 + 2*nu) - ep*(1 + 2*nu + 8*nu^2))*Log[-1 + x^2] + 
     (4*ep^3*(1 + 4*nu + 16*nu^2) + ep^2*(4 - 8*nu^2 - 64*nu^3) - 
       2*nu*(1 + 8*nu + 16*nu^2 + 8*nu^3) - ep*(-1 + 10*nu + 72*nu^2 + 
         144*nu^3 + 64*nu^4) + b0*(-1 - 8*nu - 16*nu^2 - 8*nu^3 + 
         4*ep^3*(1 + 8*nu) - 4*ep^2*(1 + nu + 8*nu^2) - 
         2*ep*(3 + 18*nu + 36*nu^2 + 16*nu^3)))*
      Log[-1 + 4*(1 + ep + 2*nu + 2*nu^2)*x^2 - (1 + 2*ep)^2*x^4] + 
     ((1 - 4*nu + 48*ep^4*nu - 32*nu^2 - 72*nu^3 - 80*nu^4 - 32*nu^5 + 
        4*ep^3*(1 + 14*nu + 8*nu^2 + 32*nu^3) - 
        4*ep^2*(-2 + nu + 30*nu^2 + 28*nu^3 + 32*nu^4) - 
        ep*(-5 + 20*nu + 156*nu^2 + 320*nu^3 + 352*nu^4 + 128*nu^5) + 
        2*b0*(-2 + 12*ep^4 - 9*nu - 18*nu^2 - 20*nu^3 - 8*nu^4 + 
          2*ep^3*(5 + 2*nu + 16*nu^2) - ep^2*(9 + 38*nu + 28*nu^2 + 
            32*nu^3) - 2*ep*(5 + 22*nu + 40*nu^2 + 44*nu^3 + 16*nu^4)))*
       (Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] - 
        Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
      Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))/((1 + 2*ep)^2*(1 + 2*nu)*
    (2*ep^2 - (1 + 2*nu)^2)), 4*((2*(2*ep + nu))/(-1 + x^2) - 
    2*(b0 + 2*nu)*(3 + 4*nu)*Log[x] + 
    ((b0*(1 + 2*ep)*(-1 + 14*ep^2 + 4*nu^2 - 4*ep*(1 + 4*nu)) + 
       2*(4*ep^3*(-1 + 5*nu) + nu*(-1 + 4*nu^2) - 2*ep^2*(2 + nu + 16*nu^2) + 
         ep*(1 + 4*nu + 8*nu^2 + 24*nu^3)))*Log[1 - x^2])/
     ((1 + 2*ep)*(2*ep^2 - (1 + 2*nu)^2)) + 
    ((-96*ep^5*nu + 8*ep^4*(1 + 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         4*nu^2*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
         2*nu*(7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       (1 + 2*nu)*(-1 + 16*nu^4 - 8*nu^3*(-4 + Sqrt[3 + 4*ep + 4*nu + 
             4*nu^2]) - 2*nu*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
         4*nu^2*(-5 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       4*ep^3*(-1 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         4*nu^2*(13 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
       ep*(9 - 128*nu^5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         32*nu^4*(-11 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         48*nu^3*(-7 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         2*nu*(-8 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         4*nu^2*(-43 + 18*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
       2*ep^2*(9 + 64*nu^5 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         6*nu*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         32*nu^4*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         4*nu^2*(-24 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         nu^3*(-8 + 80*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       b0*(-48*ep^5 + (1 + 2*nu)*(4 + 8*nu^3 - Sqrt[3 + 4*ep + 4*nu + 
             4*nu^2] + nu*(10 - 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
           4*nu^2*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         8*ep^4*(-9 + 4*nu^2 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           2*nu*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         4*ep^3*(-1 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           4*nu*(7 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
         2*ep*(-15 - 32*nu^4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           16*nu^3*(-6 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           2*nu*(-31 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           4*nu^2*(-25 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         ep^2*(50 - 64*nu^4 - 32*nu^3*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           4*nu*(43 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
           8*nu^2*(-9 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
      Log[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - x^2 - 4*ep*x^2 - 4*ep^2*x^2])/
     ((1 + 2*ep)^2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(2*ep^2 - (1 + 2*nu)^2)) + 
    ((96*ep^5*nu + 8*ep^4*(-1 - 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(-7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         4*nu^2*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
       (1 + 2*nu)*(-1 + 16*nu^4 + 2*nu*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         8*nu^3*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         4*nu^2*(5 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       4*ep^3*(1 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         4*nu^2*(-13 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
       ep*(-9 + 128*nu^5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         32*nu^4*(11 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         48*nu^3*(7 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         2*nu*(8 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         4*nu^2*(43 + 18*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
       2*ep^2*(-9 - 64*nu^5 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         32*nu^4*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         6*nu*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         4*nu^2*(24 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         nu^3*(8 + 80*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       b0*(48*ep^5 + 8*ep^4*(9 - 4*nu^2 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           2*nu*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         4*ep^3*(1 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           4*nu*(-7 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
         (1 + 2*nu)*(4 + 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           4*nu^2*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           2*nu*(5 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         2*ep^2*(-25 + 32*nu^4 + 2*nu*(-43 + Sqrt[3 + 4*ep + 4*nu + 4*
                nu^2]) - 16*nu^3*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
           4*nu^2*(9 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
         2*ep*(15 + 32*nu^4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           16*nu^3*(6 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           2*nu*(31 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           4*nu^2*(25 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
      Log[2 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - x^2 - 4*ep^2*x^2 + 
        ep*(2 - 4*x^2)])/((1 + 2*ep)^2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
      (2*ep^2 - (1 + 2*nu)^2))), I*((-2*x)/(-1 + x^2) - Log[1 - x] + 
    Log[1 + x])}, 
 {(4*(1 + 2*ep)*(ep - nu)*(4 + 10*nu + 4*nu^2 + b0*(3 + 2*nu))*
     Log[1 - (1 + 2*ep)*x^2] + (1 + 4*ep^2 + 4*nu - 8*ep*nu + 8*nu^2)*
     (4 + 5*b0 + 14*nu + 6*b0*nu + 12*nu^2)*
     Log[1 - 4*(1 + ep + 2*nu + 2*nu^2)*x^2 + (1 + 2*ep)^2*x^4] + 
    ((4 + 5*b0 + 14*nu + 6*b0*nu + 12*nu^2)*(1 + 10*nu + 16*nu^2 + 16*nu^3 + 
       ep^2*(-4 + 8*nu) - 4*ep*(1 + 4*nu^2))*
      (Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
          ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] - 
       Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
          ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
     Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/(16*(1 + 2*ep)^2*(1 + nu)), 
  -1/16*((1 + 2*nu)*(-((4 + 2*(5 + 2*ep)*nu + 4*nu^2 + b0*(3 + 2*ep + 2*nu))*
        Log[-1 + x^2]) + 4*ep*(1 + nu)*(2 + b0 + 2*nu)*
       Log[-1 + x^2 + 2*ep*x^2] + (4 + 2*(5 + 2*ep)*nu + 4*nu^2 + 
        b0*(3 + 2*ep + 2*nu))*Log[-1 + x^2 + 2*ep*x^2]))/(ep*(1 + nu)), 
  -1/4*((4 + 10*nu + 4*nu^2 + b0*(3 + 2*nu))*Log[-1 + x^2 + 2*ep*x^2])/
    (1 + nu), ((1 + 2*ep)*(1 + 2*nu)*
    ((4 + 2*(5 + 2*ep)*nu + 4*nu^2 + b0*(3 + 2*ep + 2*nu))*Log[-1 + x^2] - 
     (4 + 10*nu + 4*nu^2 + b0*(3 + 2*nu))*Log[-1 + x^2 + 2*ep*x^2]))/
   (16*ep*(1 + nu)), (4*(1 + 2*ep)*(1 + ep + nu)*(4 + 10*nu + 4*nu^2 + 
      b0*(3 + 2*nu))*Log[1 - (1 + 2*ep)*x^2] - 
    (4 + 5*b0 + 14*nu + 6*b0*nu + 12*nu^2)*(5 + 4*ep^2 + 12*nu + 8*nu^2 + 
      8*ep*(1 + nu))*Log[1 - 4*(1 + ep + 2*nu + 2*nu^2)*x^2 + 
       (1 + 2*ep)^2*x^4] + ((4 + 5*b0 + 14*nu + 6*b0*nu + 12*nu^2)*
      (9 + 26*nu + 32*nu^2 + 16*nu^3 + 4*ep^2*(3 + 2*nu) + 
       4*ep*(5 + 8*nu + 4*nu^2))*
      (-Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] + 
       Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
          ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
     Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/(16*(1 + 2*ep)^2*(1 + nu)), 
  ((-1/4*I)*nu*(1 + 2*nu)*
    (-(((2*nu*(8*ep^3*(1 + nu) + 2*ep*nu*(1 + 2*nu)^2 + 
           (2 + nu)*(1 + 2*nu)^3 - 8*ep^2*(1 + 3*nu + 2*nu^2)) + 
         b0*(8*ep^3*(1 + nu) - 16*ep^2*nu*(1 + nu) + nu*(1 + 2*nu)^2*
            (3 + 2*nu) + 2*ep*(-2 - 5*nu + 4*nu^3)))*Log[1 - x])/
       (ep*(2*ep^2 - (1 + 2*nu)^2))) + 
     ((2*nu*(8*ep^3*(1 + nu) + 2*ep*nu*(1 + 2*nu)^2 + (2 + nu)*(1 + 2*nu)^3 - 
          8*ep^2*(1 + 3*nu + 2*nu^2)) + b0*(8*ep^3*(1 + nu) - 
          16*ep^2*nu*(1 + nu) + nu*(1 + 2*nu)^2*(3 + 2*nu) + 
          2*ep*(-2 - 5*nu + 4*nu^3)))*Log[1 + x])/
      (ep*(2*ep^2 - (1 + 2*nu)^2)) + (nu*(4 + 10*nu + 4*nu^2 + b0*(3 + 2*nu))*
       (-Log[1 - Sqrt[1 + 2*ep]*x] + Log[1 + Sqrt[1 + 2*ep]*x]))/
      (ep*Sqrt[1 + 2*ep]) - (I*nu*(4 + 5*b0 + 14*nu + 6*b0*nu + 12*nu^2)*
       (2*ep^2*(-1 - 6*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        (1 + 2*nu)*(3 + 16*nu^3 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^2*(20 - 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(14 - 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(3 + 10*nu - 16*nu^3 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          8*nu^2*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(2*ep^2 - (1 + 2*nu)^2)*
       Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     (I*nu*(4 + 5*b0 + 14*nu + 6*b0*nu + 12*nu^2)*
       (-2*ep^2*(1 + 6*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        ep*(3 + 10*nu - 16*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          8*nu^2*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(3 + 16*nu^3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(7 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(2*ep^2 - (1 + 2*nu)^2)*
       Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/(1 + nu), 0, 
  (-1/4*I)*(1 + nu)*(1 + 2*nu)*
   (((1 + 2*nu)*(8*ep^2*nu + 2*(2 + nu)*(1 + 2*nu)^2 + 
       4*ep*(2 + 7*nu + 6*nu^2) + b0*(3 + 4*ep^2 + 8*nu + 4*nu^2 + 
         2*ep*(5 + 6*nu)))*Log[1 - x])/(ep*(2*ep^2 - (1 + 2*nu)^2)) - 
    ((1 + 2*nu)*(8*ep^2*nu + 2*(2 + nu)*(1 + 2*nu)^2 + 
       4*ep*(2 + 7*nu + 6*nu^2) + b0*(3 + 4*ep^2 + 8*nu + 4*nu^2 + 
         2*ep*(5 + 6*nu)))*Log[1 + x])/(ep*(2*ep^2 - (1 + 2*nu)^2)) + 
    ((4 + 10*nu + 4*nu^2 + b0*(3 + 2*nu))*(Log[1 - Sqrt[1 + 2*ep]*x] - 
       Log[1 + Sqrt[1 + 2*ep]*x]))/(ep*Sqrt[1 + 2*ep]) + 
    (I*(4 + 5*b0 + 14*nu + 6*b0*nu + 12*nu^2)*
      (-2*ep^2*(-5 - 6*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       (1 + 2*nu)*(7 + 16*nu^3 - 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         nu*(22 - 10*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         nu^2*(28 - 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       ep*(17 + 16*nu^3 - 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         nu*(54 - 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
         8*nu^2*(-7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
            Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                4*nu + 4*nu^2])]] - 
       Log[1 + (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
            Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                4*nu + 4*nu^2])]]))/((1 + 2*ep)*
      Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(2*ep^2 - (1 + 2*nu)^2)*
      Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) - 
    (I*(4 + 5*b0 + 14*nu + 6*b0*nu + 12*nu^2)*
      (2*ep^2*(5 + 6*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       (1 + 2*nu)*(7 + 16*nu^3 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         4*nu^2*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         2*nu*(11 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       ep*(17 + 16*nu^3 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         8*nu^2*(7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         2*nu*(27 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
            Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
          Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
            2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
     ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(2*ep^2 - (1 + 2*nu)^2)*
      Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])), 
  ((-1/4*I)*(-4*(1 + nu)*(b0 + 2*nu)*(3 + 4*ep + 2*nu)*x - 
     ((16*ep^4*(1 + nu)*(b0 + 2*nu) + 2*ep*(1 + nu)*(1 + 2*nu)^2*
         (-2 - 2*nu + 4*nu^2 + b0*(-3 + 2*nu)) + nu*(1 + 2*nu)^3*
         (4 + 10*nu + 4*nu^2 + b0*(3 + 2*nu)) - ep^2*(1 + 2*nu)*
         (4 + 30*nu + 52*nu^2 + 16*nu^3 + b0*(13 + 26*nu + 8*nu^2)) - 
        2*ep^3*(b0*(-1 + 14*nu + 16*nu^2) + 2*nu*(7 + 22*nu + 16*nu^2)))*
       Log[1 - x])/(ep*(2*ep^2 - (1 + 2*nu)^2)) + 
     ((16*ep^4*(1 + nu)*(b0 + 2*nu) + 2*ep*(1 + nu)*(1 + 2*nu)^2*
         (-2 - 2*nu + 4*nu^2 + b0*(-3 + 2*nu)) + nu*(1 + 2*nu)^3*
         (4 + 10*nu + 4*nu^2 + b0*(3 + 2*nu)) - ep^2*(1 + 2*nu)*
         (4 + 30*nu + 52*nu^2 + 16*nu^3 + b0*(13 + 26*nu + 8*nu^2)) - 
        2*ep^3*(b0*(-1 + 14*nu + 16*nu^2) + 2*nu*(7 + 22*nu + 16*nu^2)))*
       Log[1 + x])/(ep*(2*ep^2 - (1 + 2*nu)^2)) + 
     (nu*(1 + 2*ep + 2*nu)*(4 + 10*nu + 4*nu^2 + b0*(3 + 2*nu))*
       (-Log[1 - Sqrt[1 + 2*ep]*x] + Log[1 + Sqrt[1 + 2*ep]*x]))/
      (ep*Sqrt[1 + 2*ep]) - ((I/2)*(4 + 5*b0 + 14*nu + 6*b0*nu + 12*nu^2)*
       (4*ep^3*(-3 - 24*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)^2*(-2 + 32*nu^4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          12*nu^2*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          8*nu^3*(-5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(1 + 2*nu)*(-11 + 32*nu^4 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^2*(28 - 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          16*nu^3*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-20 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^2*(-5 - 32*nu^4 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^3*(-9 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(-19 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-22 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(2*ep^2 - (1 + 2*nu)^2)*
       Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) - 
     ((I/2)*(4 + 5*b0 + 14*nu + 6*b0*nu + 12*nu^2)*
       (-((1 + 2*nu)^2*(-2 + 32*nu^4 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           2*nu*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           12*nu^2*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           8*nu^3*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))) + 
        4*ep^3*(3 + 24*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        ep*(1 + 2*nu)*(-11 + 32*nu^4 - 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          16*nu^3*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(10 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^2*(5 + 32*nu^4 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^3*(9 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(19 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(22 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(2*ep^2 - (1 + 2*nu)^2)*
       Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/(1 + nu), 
  (-1/4*I)*(8*(1 + 2*ep + nu)*(b0 + 2*nu)*x + 
    ((1 + 4*ep + 2*nu)*(4 + 2*(5 + 2*ep)*nu + 4*nu^2 + b0*(3 + 2*ep + 2*nu))*
      Log[1 - x])/ep - ((1 + 4*ep + 2*nu)*(4 + 2*(5 + 2*ep)*nu + 4*nu^2 + 
       b0*(3 + 2*ep + 2*nu))*Log[1 + x])/ep + 
    ((1 + 2*ep + 2*nu)*(4 + 10*nu + 4*nu^2 + b0*(3 + 2*nu))*
      (-Log[1 - Sqrt[1 + 2*ep]*x] + Log[1 + Sqrt[1 + 2*ep]*x]))/
     (ep*Sqrt[1 + 2*ep])), 
  ((I/4)*(8*(1 + nu)^2*(b0 + 2*nu)*x + 
     (nu*(1 + 2*nu)*(4 + 2*(5 + 2*ep)*nu + 4*nu^2 + b0*(3 + 2*ep + 2*nu))*
       Log[1 - x])/ep - (nu*(1 + 2*nu)*(4 + 2*(5 + 2*ep)*nu + 4*nu^2 + 
        b0*(3 + 2*ep + 2*nu))*Log[1 + x])/ep + 
     ((-1 + 2*ep - 2*nu)*nu*(4 + 10*nu + 4*nu^2 + b0*(3 + 2*nu))*
       (Log[1 - Sqrt[1 + 2*ep]*x] - Log[1 + Sqrt[1 + 2*ep]*x]))/
      (ep*Sqrt[1 + 2*ep])))/(1 + nu), 
  ((I/4)*(1 + 2*nu)*(-4*(1 + nu)*(b0 + 2*nu)*x + 
     ((4*ep^3*nu*(7 + 8*nu) - 4*ep*(1 + 2*nu)^2*(-1 + nu^2) - 
        2*(1 + 2*nu)^3*(2 + 3*nu + nu^2) + ep^2*(20 + 78*nu + 92*nu^2 + 
          32*nu^3) + b0*(-2*ep*(1 + nu)*(1 + 2*nu)^2 + 2*ep^3*(7 + 8*nu) - 
          (1 + 2*nu)^2*(3 + 5*nu + 2*nu^2) + ep^2*(21 + 38*nu + 16*nu^2)))*
       Log[1 - x])/(ep*(2*ep^2 - (1 + 2*nu)^2)) - 
     ((4*ep^3*nu*(7 + 8*nu) - 4*ep*(1 + 2*nu)^2*(-1 + nu^2) - 
        2*(1 + 2*nu)^3*(2 + 3*nu + nu^2) + ep^2*(20 + 78*nu + 92*nu^2 + 
          32*nu^3) + b0*(-2*ep*(1 + nu)*(1 + 2*nu)^2 + 2*ep^3*(7 + 8*nu) - 
          (1 + 2*nu)^2*(3 + 5*nu + 2*nu^2) + ep^2*(21 + 38*nu + 16*nu^2)))*
       Log[1 + x])/(ep*(2*ep^2 - (1 + 2*nu)^2)) - 
     ((-1 + 2*ep - 2*nu)*(1 + nu)*(4 + 10*nu + 4*nu^2 + b0*(3 + 2*nu))*
       (-Log[1 - Sqrt[1 + 2*ep]*x] + Log[1 + Sqrt[1 + 2*ep]*x]))/
      (Sqrt[1 + 2*ep]*(ep + 2*ep*nu)) - 
     ((I/2)*(4 + 5*b0 + 14*nu + 6*b0*nu + 12*nu^2)*
       ((1 + 2*nu)^2*(12 + 32*nu^4 - 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^2*(96 - 36*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(54 - 26*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^3*(88 - 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^3*(-13 - 24*nu^2 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(-34 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(1 + 2*nu)*(-5 - 32*nu^4 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          16*nu^3*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-7 + 10*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(-6 + 13*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^2*(-17 - 32*nu^4 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^3*(-23 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(-61 + 17*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-74 + 28*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       (2*ep^2 - (1 + 2*nu)^2)*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) - 
     ((I/2)*(4 + 5*b0 + 14*nu + 6*b0*nu + 12*nu^2)*
       (4*ep^3*(13 + 24*nu^2 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(34 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(1 + 2*nu)*(5 + 32*nu^4 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          16*nu^3*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(7 + 10*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(6 + 13*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        (1 + 2*nu)^2*(12 + 32*nu^4 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          8*nu^3*(11 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          12*nu^2*(8 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(54 + 26*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^2*(17 + 32*nu^4 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^3*(23 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(61 + 17*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(74 + 28*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       (2*ep^2 - (1 + 2*nu)^2)*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/(1 + nu), 
  ((I/4)*(1 + 2*nu)*(-((4*ep^2*nu*(3 + 4*nu) + 4*(1 + 3*nu + 2*nu^2)^2 + 
        2*ep*(2 + 7*nu + 6*nu^2) + b0*(2*(1 + nu)*(1 + 2*nu)^2 + 
          ep*(5 + 6*nu) + ep^2*(6 + 8*nu)))*Log[1 - x]) + 
     (4*ep^2*nu*(3 + 4*nu) + 4*(1 + 3*nu + 2*nu^2)^2 + 
       2*ep*(2 + 7*nu + 6*nu^2) + b0*(2*(1 + nu)*(1 + 2*nu)^2 + 
         ep*(5 + 6*nu) + ep^2*(6 + 8*nu)))*Log[1 + x] + 
     ((I/2)*(1 + 2*ep)*(4 + 5*b0 + 14*nu + 6*b0*nu + 12*nu^2)*
       (ep*(-3 - 6*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        (1 + 2*nu)*(-2 - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(1 + 2*ep)*(4 + 5*b0 + 14*nu + 6*b0*nu + 12*nu^2)*
       (ep*(3 + 6*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        (1 + 2*nu)*(2 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   ((1 + nu)*(2*ep^2 - (1 + 2*nu)^2)), 0, 
  (4*(b0 + 2*nu)*(1 + 3*nu + 2*nu^2)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
     (-2*ep^2 + (1 + 2*nu)^2)*Log[x] + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
     (b0*(-8*ep^3*(1 + nu) + 4*ep^2*nu*(6 + 7*nu) + 
        ep*(4 + 5*nu - 26*nu^2 - 32*nu^3) + 2*nu*(-1 + 8*nu^2 + 8*nu^3)) + 
      2*nu*(-8*ep^3*(1 + nu) + 2*nu*(1 + 2*nu)^3 + 
        4*ep^2*(2 + 8*nu + 7*nu^2) - ep*(2 + 17*nu + 42*nu^2 + 32*nu^3)))*
     Log[1 - x^2] + nu*(4 + 5*b0 + 14*nu + 6*b0*nu + 12*nu^2)*
     (-4*ep^2*(1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
      (1 + 2*nu)*(1 + 4*nu^2 - 2*nu*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      ep*(1 - 16*nu^2 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(-2 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     Log[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
       2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - x^2 - 4*ep*x^2 - 4*ep^2*x^2] - 
    nu*(4 + 5*b0 + 14*nu + 6*b0*nu + 12*nu^2)*
     (4*ep^2*(-1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
      (1 + 2*nu)*(1 + 4*nu^2 + 2*nu*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
      ep*(-1 + 16*nu^2 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(2 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     Log[2 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
       2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - x^2 - 4*ep^2*x^2 + 
       ep*(2 - 4*x^2)])/(4*(1 + nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
    (-2*ep^2 + (1 + 2*nu)^2)), 
  -1/4*(-4*(1 + 2*nu)*(b0 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
      (-2*ep^2 + (1 + 2*nu)^2)*Log[x] - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
      (b0*(8*ep^3 + 8*(1 + nu)^2*(1 + 2*nu) + 4*ep^2*(6 + 7*nu) + 
         ep*(21 + 54*nu + 32*nu^2)) + 
       2*(8*ep^3*nu + 4*(1 + 3*nu + 2*nu^2)^2 + 4*ep^2*(2 + 8*nu + 7*nu^2) + 
         ep*(10 + 47*nu + 70*nu^2 + 32*nu^3)))*Log[1 - x^2] - 
     (4 + 5*b0 + 14*nu + 6*b0*nu + 12*nu^2)*
      (-4*ep^2*(-3 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       ep*(13 + 16*nu^2 - 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         nu*(30 - 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       (1 + 2*nu)*(3 + 4*nu^2 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      Log[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - x^2 - 4*ep*x^2 - 4*ep^2*x^2] + 
     (4 + 5*b0 + 14*nu + 6*b0*nu + 12*nu^2)*
      (4*ep^2*(3 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       (1 + 2*nu)*(3 + 4*nu^2 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       ep*(13 + 16*nu^2 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         nu*(30 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      Log[2 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - x^2 - 4*ep^2*x^2 + 
        ep*(2 - 4*x^2)])/(Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
     (-2*ep^2 + (1 + 2*nu)^2)), 
  -1/2*(ep*(-2*(4*ep^2*nu*(3 + 4*nu) + 4*(1 + 3*nu + 2*nu^2)^2 + 
        2*ep*(2 + 7*nu + 6*nu^2) + b0*(2*(1 + nu)*(1 + 2*nu)^2 + 
          ep*(5 + 6*nu) + ep^2*(6 + 8*nu)))*Log[-1 + x^2] + 
      (4 + 5*b0 + 14*nu + 6*b0*nu + 12*nu^2)*(ep + (1 + 2*nu)^2)*
       Log[-1 + 4*(1 + ep + 2*nu + 2*nu^2)*x^2 - (1 + 2*ep)^2*x^4] + 
      ((1 + 2*nu)*(2 + 3*ep + 4*nu + 4*nu^2)*(4 + 5*b0 + 14*nu + 6*b0*nu + 
         12*nu^2)*(Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + 
             ep*(2 - 4*x^2))/((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] - 
         Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
            ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
       Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))/((1 + nu)*(1 + 2*nu)*
     (2*ep^2 - (1 + 2*nu)^2)), 4*(b0 + 2*nu)*Log[x] + 
   ((8*ep^3*(4 + 19*nu + 18*nu^2) - 2*(1 + 2*nu)^2*(-4 - 5*nu + 2*nu^2 + 
        4*nu^3) + 4*ep^2*(8 + 37*nu + 38*nu^2 + 4*nu^3) + 
      8*ep*(3 + 16*nu + 32*nu^2 + 30*nu^3 + 12*nu^4) + 
      b0*(12*ep^3*(5 + 6*nu) - (1 + 2*nu)^2*(-5 - 2*nu + 4*nu^2) + 
        ep^2*(50 + 68*nu + 8*nu^2) + 4*ep*(5 + 16*nu + 22*nu^2 + 12*nu^3)))*
     Log[1 - x^2])/((1 + 2*ep)*(1 + nu)*(-2*ep^2 + (1 + 2*nu)^2)) + 
   ((4 + 5*b0 + 14*nu + 6*b0*nu + 12*nu^2)*
     (ep^2*(2 + 4*nu - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
      ep*(5 + 10*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
      (1 + 2*nu)*(2 + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     Log[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
       2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - x^2 - 4*ep*x^2 - 4*ep^2*x^2])/
    ((1 + nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)) - 
   ((4 + 5*b0 + 14*nu + 6*b0*nu + 12*nu^2)*
     (2*ep^2*(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
      ep*(5 + 10*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
      (1 + 2*nu)*(2 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     Log[2 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
       2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - x^2 - 4*ep^2*x^2 + 
       ep*(2 - 4*x^2)])/((1 + nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
     (-2*ep^2 + (1 + 2*nu)^2)), (I*(2 + b0 + 2*nu)*(Log[1 - x] - Log[1 + x]))/
   (1 + 2*ep)}, 
 {-1/8*((1 + 2*nu)*(4*(1 + 2*ep)^3*nu*(1 + nu)*(1 + 2*b0 + 4*nu)*Log[x] - 
      2*(1 + 2*ep)^3*nu*(1 + nu)*Log[1 - x^2] + 
      ((b0 + 2*nu)*(-1 - 128*nu^6 + 96*ep^4*nu*(1 + nu) + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 64*nu^5*
          (-5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         2*nu*(-7 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         6*nu^2*(-13 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         8*nu^4*(-43 + 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         4*nu^3*(-52 + 23*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
         8*ep^3*(-1 + 22*nu^2 + 8*nu^4 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           4*nu^3*(9 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
           2*nu*(5 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
         4*ep^2*(-3 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           8*nu^3*(3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
           2*nu*(7 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           2*nu^2*(13 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         2*ep*(1 + 4*nu + 64*nu^5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           nu^3*(60 - 64*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
           16*nu^4*(-7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
           2*nu^2*(2 + 21*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
        Log[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - x^2 - 4*ep*x^2 - 4*ep^2*x^2])/
       ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
      (4*(1 + 2*ep)*(b0 + 2*nu)*(nu + ep^2*(-2 + 4*nu + 4*nu^2) - 
         ep*(1 - 2*nu + 4*nu^2 + 4*nu^3))*Log[1 - (1 + 2*ep)*x^2])/
       (1 + 2*nu) + ((b0 + 2*nu)*(1 + 128*nu^6 - 96*ep^4*nu*(1 + nu) + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 64*nu^5*
          (5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         2*nu*(7 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         6*nu^2*(13 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         8*nu^4*(43 + 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         4*nu^3*(52 + 23*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
         8*ep^3*(1 - 22*nu^2 - 8*nu^4 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           nu*(10 - 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           4*nu^3*(-9 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
         4*ep^2*(3 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           nu*(14 - 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           8*nu^3*(-3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           2*nu^2*(-13 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
         2*ep*(1 + 4*nu + 64*nu^5 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           16*nu^4*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           nu^2*(-4 + 42*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           nu^3*(60 + 64*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
        Log[2 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - x^2 - 4*ep^2*x^2 + 
          ep*(2 - 4*x^2)])/((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))/
    ((1 + 2*ep)^3*nu*(1 + nu)), 
  -1/8*((1 + 2*nu)*(b0 + 2*nu)*((1 + 2*ep)*(1 + 2*ep*(1 + nu))*
       Log[-1 + x^2] + (-1 + ep*(-2 + 4*nu + 4*nu^2))*
       Log[-1 + x^2 + 2*ep*x^2]))/(ep*nu*(1 + nu)), 
  -((2*(1 + 3*ep + 2*ep^2)*nu*(1 + nu)*Log[-1 + x^2] + 
     (b0 + 2*nu)*(-1 + ep*(-2 + 4*nu + 4*nu^2))*Log[-1 + x^2 + 2*ep*x^2])/
    ((2 + 4*ep)*nu*(1 + nu))), 
  ((1 + 2*nu)*(b0 + 2*nu)*((1 + 2*ep)*(-1 + 2*ep*nu)*Log[-1 + x^2] + 
     (1 + ep*(2 - 4*nu - 4*nu^2))*Log[-1 + x^2 + 2*ep*x^2]))/
   (8*ep*nu*(1 + nu)), 
  ((1 + 2*nu)*(4*(1 + 2*ep)^3*nu*(1 + nu)*(1 + 2*b0 + 4*nu)*Log[x] - 
     2*(1 + 2*ep)^3*nu*(1 + nu)*Log[1 - x^2] + 
     ((b0 + 2*nu)*(-9 - 128*nu^6 + 96*ep^4*nu*(1 + nu) + 
        5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        64*nu^5*(-7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        44*nu^3*(-12 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        8*nu^4*(-83 + 24*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        nu*(-62 + 32*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*nu^2*(-119 + 59*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        8*ep^3*(3 + 8*nu^4 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^3*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-22 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(-19 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        2*ep*(-19 - 64*nu^5 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          16*nu^4*(-13 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu*(-16 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(-63 + 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(-76 + 21*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        4*ep^2*(13 - 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          8*nu^3*(-3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(-3 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(-46 + 32*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       Log[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - x^2 - 4*ep*x^2 - 4*ep^2*x^2])/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
     (4*(1 + 2*ep)*(b0 + 2*nu)*(-1 - nu + ep^2*(-2 + 4*nu + 4*nu^2) + 
        ep*(-3 + 2*nu + 8*nu^2 + 4*nu^3))*Log[1 - (1 + 2*ep)*x^2])/
      (1 + 2*nu) + ((b0 + 2*nu)*(9 + 128*nu^6 - 96*ep^4*nu*(1 + nu) + 
        5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        64*nu^5*(7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        44*nu^3*(12 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        8*nu^4*(83 + 24*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        nu*(62 + 32*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*nu^2*(119 + 59*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        8*ep^3*(-3 - 8*nu^4 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^3*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(19 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(22 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        2*ep*(19 + 64*nu^5 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          16*nu^4*(13 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu*(16 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(63 + 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(76 + 21*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        4*ep^2*(-13 - 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          8*nu^3*(3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(3 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(46 + 32*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       Log[2 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - x^2 - 4*ep^2*x^2 + 
         ep*(2 - 4*x^2)])/((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))/
   (8*(1 + 2*ep)^3*nu*(1 + nu)), ((-1/2*I)*nu*(1 + 2*nu)^2*(b0 + 2*nu)*
    (-(((1 + 2*ep)*(-1 - 2*nu + 4*ep^2*(1 + nu) - 2*ep*(1 + 4*nu + 2*nu^2))*
        Log[1 - x])/(ep*(2*ep^2 - (1 + 2*nu)^2))) + 
     ((1 + 2*ep)*(-1 - 2*nu + 4*ep^2*(1 + nu) - 2*ep*(1 + 4*nu + 2*nu^2))*
       Log[1 + x])/(ep*(2*ep^2 - (1 + 2*nu)^2)) + 
     ((-1 + ep*(-2 + 4*nu + 4*nu^2))*(-Log[1 - Sqrt[1 + 2*ep]*x] + 
        Log[1 + Sqrt[1 + 2*ep]*x]))/(Sqrt[1 + 2*ep]*(ep + 2*ep*nu)) - 
     (I*(-48*ep^4*nu*(1 + nu) + 4*ep^2*(-1 + 64*nu^5 + 
          nu^3*(138 - 56*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(74 - 25*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(12 - 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          8*nu^4*(-19 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        ep*(9 - 128*nu^6 - 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(44 - 18*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          32*nu^5*(-7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          48*nu^4*(-2 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(25 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          24*nu^3*(4 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^3*(1 + 6*nu - 32*nu^4 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^3*(-5 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(11 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(-3 - 128*nu^6 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          32*nu^5*(-11 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(-13 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(-53 + 18*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(-59 + 26*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(-72 + 31*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       (2*ep^2 - (1 + 2*nu)^2)*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) - 
     (I*(48*ep^4*nu*(1 + nu) + 4*ep^3*(-1 - 6*nu + 32*nu^4 - 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 4*nu^3*
           (5 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(-11 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(9 - 128*nu^6 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          32*nu^5*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          4*nu^2*(-25 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          48*nu^4*(2 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          24*nu^3*(-4 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(22 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        4*ep^2*(-1 + 64*nu^5 + 8*nu^4*(19 + 4*Sqrt[3 + 4*ep + 4*nu + 4*
                nu^2]) + nu*(12 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(74 + 25*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^3*(69 + 28*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(3 + 128*nu^6 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          32*nu^5*(11 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(13 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(53 + 18*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(59 + 26*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(72 + 31*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       (2*ep^2 - (1 + 2*nu)^2)*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/((1 + 2*ep)*(1 + nu)), 
  0, ((I/2)*(1 + nu)*(1 + 2*nu)^2*(b0 + 2*nu)*
    (-(((1 + 2*ep)*(-1 - 2*nu + 4*ep^2*nu + ep*(-2 + 4*nu^2))*Log[1 - x])/
       (ep*(2*ep^2 - (1 + 2*nu)^2))) + 
     ((1 + 2*ep)*(-1 - 2*nu + 4*ep^2*nu + ep*(-2 + 4*nu^2))*Log[1 + x])/
      (ep*(2*ep^2 - (1 + 2*nu)^2)) + ((-1 + ep*(-2 + 4*nu + 4*nu^2))*
       (-Log[1 - Sqrt[1 + 2*ep]*x] + Log[1 + Sqrt[1 + 2*ep]*x]))/
      (Sqrt[1 + 2*ep]*(ep + 2*ep*nu)) + 
     (I*(-48*ep^4*nu*(1 + nu) + ep*(31 + 128*nu^6 - 
          15*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^3*(800 - 184*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^4*(896 - 176*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(444 - 124*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^5*(544 - 64*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(164 - 62*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^3*(5 - 32*nu^4 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          6*nu*(-5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          10*nu^2*(-11 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(-27 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(7 + 128*nu^6 - 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^3*(448 - 188*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(198 - 96*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^5*(416 - 64*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(50 - 26*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          8*nu^4*(-73 + 22*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^2*(11 - 64*nu^5 - 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          5*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(-21 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^3*(-85 + 36*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(-68 + 49*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       (2*ep^2 - (1 + 2*nu)^2)*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     (I*(48*ep^4*nu*(1 + nu) + 4*ep^3*(-5 + 32*nu^4 - 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          6*nu*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          10*nu^2*(11 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(27 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        ep*(31 + 128*nu^6 + 15*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          32*nu^5*(17 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^4*(56 + 11*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(100 + 23*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(82 + 31*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(111 + 31*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        (1 + 2*nu)*(7 + 128*nu^6 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          32*nu^5*(13 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          6*nu^2*(33 + 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(73 + 22*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(50 + 26*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(112 + 47*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^2*(-11 + 64*nu^5 - 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          5*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(21 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^3*(85 + 36*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(68 + 49*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       (2*ep^2 - (1 + 2*nu)^2)*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/(nu + 2*ep*nu), 
  ((-1/2*I)*(1 + 2*nu)*(b0 + 2*nu)*(4*nu*(1 + nu)*(1 + 2*ep + 2*nu)*x - 
     ((1 + 2*ep)*(-(nu*(1 + 2*nu)^2) + 2*ep^3*(1 + 6*nu + 4*nu^2) - 
        2*ep*nu*(3 + 11*nu + 12*nu^2 + 4*nu^3) - 
        ep^2*(-1 + 2*nu + 16*nu^2 + 8*nu^3))*Log[1 - x])/
      (ep*(2*ep^2 - (1 + 2*nu)^2)) + 
     ((1 + 2*ep)*(-(nu*(1 + 2*nu)^2) + 2*ep^3*(1 + 6*nu + 4*nu^2) - 
        2*ep*nu*(3 + 11*nu + 12*nu^2 + 4*nu^3) - 
        ep^2*(-1 + 2*nu + 16*nu^2 + 8*nu^3))*Log[1 + x])/
      (ep*(2*ep^2 - (1 + 2*nu)^2)) + 
     (nu*(-1 - 2*nu + 4*ep*(1 + nu)^2*(-1 + 2*nu) + 
        ep^2*(-4 + 8*nu + 8*nu^2))*(-Log[1 - Sqrt[1 + 2*ep]*x] + 
        Log[1 + Sqrt[1 + 2*ep]*x]))/(Sqrt[1 + 2*ep]*(ep + 2*ep*nu)) - 
     ((I/2)*(-96*ep^5*nu*(1 + 5*nu + 4*nu^2) - 
        4*ep^3*(-13 - 128*nu^6 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          64*nu^3*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^5*(-23 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-34 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(-45 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu^2*(23 + 18*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        ep*(1 + 2*nu)*(-15 + 256*nu^7 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          120*nu^3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          64*nu^6*(-11 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^4*(23 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          32*nu^5*(-23 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-27 + 11*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-62 + 20*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        (1 + 2*nu)^2*(-2 + 256*nu^7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^3*(156 - 72*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          6*nu^2*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          64*nu^6*(-11 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          48*nu^5*(-17 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          8*nu^4*(-62 + 29*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        8*ep^4*(3 - 128*nu^5 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          32*nu^4*(-7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(-39 + 25*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(-86 + 36*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        2*ep^2*(-21 - 1024*nu^7 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          256*nu^6*(-11 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          6*nu*(-17 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          6*nu^2*(-49 + 12*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^5*(-203 + 78*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(-217 + 97*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(-259 + 137*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       (2*ep^2 - (1 + 2*nu)^2)*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) - 
     ((I/2)*(96*ep^5*nu*(1 + 5*nu + 4*nu^2) - 
        4*ep^3*(13 + 128*nu^6 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^2*(46 - 36*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          64*nu^3*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^5*(23 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(34 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(45 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(1 + 2*nu)*(-15 + 256*nu^7 - 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          120*nu^3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^4*(368 - 64*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          64*nu^6*(11 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          32*nu^5*(23 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(31 + 10*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          4*nu^2*(27 + 11*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)^2*(-2 + 256*nu^7 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          6*nu^2*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          64*nu^6*(11 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          12*nu^3*(13 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          48*nu^5*(17 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(62 + 29*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        8*ep^4*(-3 + 128*nu^5 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          32*nu^4*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(39 + 25*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(86 + 36*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        2*ep^2*(21 + 1024*nu^7 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          256*nu^6*(11 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          6*nu*(17 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          6*nu^2*(49 + 12*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^5*(203 + 78*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(217 + 97*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(259 + 137*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       (2*ep^2 - (1 + 2*nu)^2)*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   ((1 + 2*ep)*nu*(1 + nu)), 
  ((I/2)*(b0 + 2*nu)*((8*nu*(1 - 4*ep^2 + 3*nu + 2*ep*nu + 2*nu^2)*x)/
      (1 + 2*ep) + ((1 + 2*ep + 2*nu - 8*ep^2*nu)*Log[1 - x])/ep + 
     ((1 + 2*ep)*(-1 + (-2 + 4*ep)*nu)*Log[1 + x])/ep + 
     ((-1 - 2*nu + 4*ep*(1 + nu)^2*(-1 + 2*nu) + ep^2*(-4 + 8*nu + 8*nu^2))*
       (Log[1 - Sqrt[1 + 2*ep]*x] - Log[1 + Sqrt[1 + 2*ep]*x]))/
      (ep*(1 + 2*ep)^(3/2))))/nu, 
  ((I/2)*(b0 + 2*nu)*((8*(1 + nu)*(4*ep^2 + 2*ep*(1 + nu) - nu*(1 + 2*nu))*x)/
      (1 + 2*ep) + ((1 + 2*ep)*(-1 - 2*nu + 4*ep*(1 + nu))*Log[1 - x])/ep + 
     ((1 + 2*ep)*(1 + 2*nu - 4*ep*(1 + nu))*Log[1 + x])/ep + 
     ((1 + 2*nu - 4*ep*nu^2*(3 + 2*nu) + ep^2*(-4 + 8*nu + 8*nu^2))*
       (Log[1 - Sqrt[1 + 2*ep]*x] - Log[1 + Sqrt[1 + 2*ep]*x]))/
      (ep*(1 + 2*ep)^(3/2))))/(1 + nu), 
  ((I/2)*(1 + 2*nu)*(b0 + 2*nu)*(4*nu*(1 + nu)*(1 - 2*ep + 2*nu)*x + 
     ((1 + 2*ep)*((1 + nu)*(1 + 2*nu)^2 + ep^3*(-2 + 4*nu + 8*nu^2) + 
        2*ep*nu*(1 + nu - 4*nu^2 - 4*nu^3) + ep^2*(-5 - 6*nu + 8*nu^2 + 
          8*nu^3))*Log[1 - x])/(ep*(2*ep^2 - (1 + 2*nu)^2)) - 
     ((1 + 2*ep)*((1 + nu)*(1 + 2*nu)^2 + ep^3*(-2 + 4*nu + 8*nu^2) + 
        2*ep*nu*(1 + nu - 4*nu^2 - 4*nu^3) + ep^2*(-5 - 6*nu + 8*nu^2 + 
          8*nu^3))*Log[1 + x])/(ep*(2*ep^2 - (1 + 2*nu)^2)) + 
     ((1 + nu)*(-1 - 2*nu + 4*ep*nu^2*(3 + 2*nu) + ep^2*(4 - 8*nu - 8*nu^2))*
       (-Log[1 - Sqrt[1 + 2*ep]*x] + Log[1 + Sqrt[1 + 2*ep]*x]))/
      (Sqrt[1 + 2*ep]*(ep + 2*ep*nu)) - 
     ((I/2)*(-96*ep^5*nu*(3 + 7*nu + 4*nu^2) + 
        8*ep^4*(13 - 128*nu^5 - 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          32*nu^4*(-13 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          12*nu^3*(-45 + 13*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          6*nu^2*(-53 + 20*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-50 + 26*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(1 + 2*nu)*(-19 + 256*nu^7 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^3*(768 - 824*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(76 - 252*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          64*nu^6*(-17 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(35 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          32*nu^5*(-59 + 19*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          16*nu^4*(-107 + 66*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^3*(47 - 128*nu^6 - 19*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          6*nu*(-25 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          88*nu^4*(-5 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^5*(-25 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          32*nu^3*(-4 + 11*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(65 + 74*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)^2*(-12 - 256*nu^7 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          64*nu^6*(-17 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          6*nu*(-17 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          48*nu^5*(-41 + 10*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          6*nu^2*(-76 + 37*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(-248 + 89*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(-303 + 134*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        2*ep^2*(-39 - 1024*nu^7 + 23*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          256*nu^6*(-17 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(-171 + 83*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^5*(-491 + 114*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(-971 + 317*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(-811 + 342*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(-1145 + 439*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       (2*ep^2 - (1 + 2*nu)^2)*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) - 
     ((I/2)*(96*ep^5*nu*(3 + 7*nu + 4*nu^2) + 
        8*ep^4*(-13 + 128*nu^5 - 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          32*nu^4*(13 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          12*nu^3*(45 + 13*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          6*nu^2*(53 + 20*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(50 + 26*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^3*(-47 + 128*nu^6 - 19*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          88*nu^4*(5 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          6*nu*(25 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^5*(25 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          32*nu^3*(4 + 11*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(-65 + 74*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        ep*(1 + 2*nu)*(-19 + 256*nu^7 - 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          64*nu^6*(17 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-70 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          32*nu^5*(59 + 19*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(19 + 63*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^4*(107 + 66*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(96 + 103*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)^2*(12 + 256*nu^7 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          64*nu^6*(17 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          6*nu*(17 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          48*nu^5*(41 + 10*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          6*nu^2*(76 + 37*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(248 + 89*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(303 + 134*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        2*ep^2*(39 + 1024*nu^7 + 23*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          256*nu^6*(17 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(171 + 83*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^5*(491 + 114*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(971 + 317*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(811 + 342*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(1145 + 439*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       (2*ep^2 - (1 + 2*nu)^2)*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   ((1 + 2*ep)*nu*(1 + nu)), ((-1/2*I)*(1 + 2*nu)^2*(b0 + 2*nu)*
    (-((1 + 2*ep)*(ep - 2*nu*(1 + nu))*Log[1 - x]) + 
     (1 + 2*ep)*(ep - 2*nu*(1 + nu))*Log[1 + x] + 
     ((I/2)*(24*ep^3*nu*(1 + nu) + ep*(-7 - 44*nu^2 - 32*nu^3 - 16*nu^4 + 
          3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(-28 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(-2 - 32*nu^5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          16*nu^4*(-5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          6*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^3*(-5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(-40 + 22*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        2*ep^2*(3 - 32*nu^4 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          16*nu^3*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          6*nu*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(-38 + 24*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(-24*ep^3*nu*(1 + nu) + ep*(7 + 44*nu^2 + 32*nu^3 + 16*nu^4 + 
          3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(28 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(2 + 32*nu^5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          6*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^4*(5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^3*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(40 + 22*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        2*ep^2*(-3 + 32*nu^4 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          6*nu*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^3*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(38 + 24*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   (nu*(1 + nu)*(2*ep^2 - (1 + 2*nu)^2)), 0, 
  -1/2*((b0 + 2*nu)*(4*(1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       (1 + 7*nu + 14*nu^2 + 8*nu^3)*(-2*ep^2 + (1 + 2*nu)^2)*Log[x] - 
      2*(1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(8*ep^3*(1 + nu) - 
        4*ep^2*(1 + 7*nu + 5*nu^2) + 2*nu*(1 + 4*nu + 6*nu^2 + 4*nu^3) + 
        ep*(-1 + 2*nu + 16*nu^2 + 8*nu^3))*Log[1 - x^2] + 
      (-96*ep^4*nu*(1 + nu) + 8*ep^3*(-1 + 31*nu^2 + 8*nu^4 - 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 4*nu^3*
           (9 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          nu*(1 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(1 + 32*nu^5 - 2*nu*(-3 + Sqrt[3 + 4*ep + 4*nu + 
              4*nu^2]) - 8*nu^4*(-7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          4*nu^3*(-8 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu^2*(-5 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        ep*(128*nu^6 + nu^2*(88 - 28*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          3*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          64*nu^5*(9 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^4*(53 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(65 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(8 + 11*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        2*ep^2*(-1 + 32*nu^4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          12*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(25 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(56 + 25*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       Log[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - x^2 - 4*ep*x^2 - 4*ep^2*x^2] - 
      (-96*ep^4*nu*(1 + nu) - 8*ep^3*(1 + nu - 31*nu^2 - 8*nu^4 - 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 6*nu*Sqrt[3 + 4*ep + 4*nu + 
             4*nu^2] + 4*nu^3*(-9 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(3 - 128*nu^6 - 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(16 - 22*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          64*nu^5*(-9 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          4*nu^2*(22 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(-65 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^4*(-53 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(1 + 32*nu^5 + 2*nu*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(8 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(5 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        2*ep^2*(1 - 32*nu^4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          12*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(-25 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(-56 + 25*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       Log[2 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - x^2 - 4*ep^2*x^2 + 
         ep*(2 - 4*x^2)]))/((1 + 2*ep)*(1 + nu)*
     Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)), 
  ((b0 + 2*nu)*(-4*(1 + 2*ep)*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
      (3 + 10*nu + 8*nu^2)*(-2*ep^2 + (1 + 2*nu)^2)*Log[x] + 
     2*(1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
      (8*ep^3*nu + 4*ep^2*(-1 + 3*nu + 5*nu^2) + 
       ep*(-5 - 6*nu + 8*nu^2 + 8*nu^3) - 2*(1 + 5*nu + 10*nu^2 + 10*nu^3 + 
         4*nu^4))*Log[1 - x^2] - (-96*ep^4*nu*(1 + nu) + 
       (1 + 2*nu)*(3 + 32*nu^5 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         nu^2*(70 - 28*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
         8*nu^4*(-13 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
         2*nu*(-9 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
         4*nu^3*(-32 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       8*ep^3*(3 + 8*nu^4 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         4*nu^3*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         nu*(-13 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         nu^2*(-29 + 12*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
       ep*(-19 + 128*nu^6 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         64*nu^5*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         16*nu^4*(-7 + 12*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         4*nu^2*(-56 + 23*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         8*nu^3*(-41 + 24*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         nu*(-88 + 34*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       2*ep^2*(19 + 32*nu^4 - 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         4*nu*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         4*nu^3*(7 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         nu^2*(4 + 46*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      Log[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - x^2 - 4*ep*x^2 - 4*ep^2*x^2] + 
     (-96*ep^4*nu*(1 + nu) + ep^2*(38 + 64*nu^4 + 
         14*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         nu^2*(8 - 92*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
         8*nu*(-7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
         8*nu^3*(-7 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       (1 + 2*nu)*(3 + 32*nu^5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         14*nu^2*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         8*nu^4*(13 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         2*nu*(9 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         4*nu^3*(32 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
       8*ep^3*(-3 - 8*nu^4 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         4*nu^3*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         nu*(13 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         nu^2*(29 + 12*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       ep*(19 - 128*nu^6 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         64*nu^5*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         16*nu^4*(7 + 12*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         4*nu^2*(56 + 23*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         8*nu^3*(41 + 24*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         nu*(88 + 34*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      Log[2 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - x^2 - 4*ep^2*x^2 + 
        ep*(2 - 4*x^2)]))/(2*(1 + 2*ep)*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
    (-2*ep^2 + (1 + 2*nu)^2)), 
  -((ep*(b0 + 2*nu)*(2*(1 + 2*ep)^2*(ep - 2*nu*(1 + nu))*Log[-1 + x^2] + 
      (-1 - 3*ep - 6*nu - 22*nu^2 - 32*nu^3 - 16*nu^4 + 
        2*ep^2*(-1 + 8*nu + 8*nu^2))*Log[-1 + 4*(1 + ep + 2*nu + 2*nu^2)*
          x^2 - (1 + 2*ep)^2*x^4] + 
      ((-24*ep^3*nu*(1 + nu) + 2*(1 + 2*nu)^2*(1 + 4*nu + 12*nu^2 + 16*nu^3 + 
           8*nu^4) + ep*(7 + 28*nu + 44*nu^2 + 32*nu^3 + 16*nu^4) - 
         2*ep^2*(-3 + 6*nu + 38*nu^2 + 64*nu^3 + 32*nu^4))*
        (-Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
             ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] + 
         Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
            ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
       ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))/
    ((1 + 2*ep)*nu*(1 + nu)*(2*ep^2 - (1 + 2*nu)^2))), 
  (2*(b0 + 2*nu)*(-8*(1 + 2*ep)*nu*(1 + nu)*(1 + 2*nu)*
      Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)*Log[x] - 
     (1 + 2*ep)*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
      (1 + 6*ep^2 - 2*ep*(-1 + 8*nu + 8*nu^2))*Log[1 - x^2] - 
     (-48*ep^4*nu*(1 + nu) + (1 + 2*nu)*(2 + 32*nu^5 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         nu^3*(80 - 32*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         nu^2*(40 - 22*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
         16*nu^4*(-5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
         6*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
       ep*(64*nu^6 + 3*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         32*nu^5*(6 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         8*nu^2*(-7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         32*nu^3*(1 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         16*nu^4*(11 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         nu*(-40 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       4*ep^3*(1 - 10*nu + 8*nu^4 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         4*nu^3*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         nu^2*(-2 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       4*ep^2*(3 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         12*nu^3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         nu*(5 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         nu^2*(5 + 18*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      Log[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - x^2 - 4*ep*x^2 - 4*ep^2*x^2] + 
     (-48*ep^4*nu*(1 + nu) - 4*ep^3*(-1 + 10*nu - 8*nu^4 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         4*nu^3*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         nu^2*(2 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       ep*(-64*nu^6 + 32*nu^5*(-6 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         3*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         32*nu^3*(-1 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         8*nu^2*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         16*nu^4*(-11 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         nu*(40 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
       4*ep^2*(-3 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         12*nu^3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         nu*(-5 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         nu^2*(-5 + 18*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       (1 + 2*nu)*(2 + 32*nu^5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         6*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         16*nu^4*(5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         16*nu^3*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         nu^2*(40 + 22*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      Log[2 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - x^2 - 4*ep^2*x^2 + 
        ep*(2 - 4*x^2)]))/((1 + 2*ep)*nu*(1 + nu)*
    Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)), 0}, 
 {-1/16*(4*(1 + 2*ep)*(ep - nu)*(b0*(-1 + 2*nu) + 2*nu*(1 + 2*nu))*
      Log[1 - (1 + 2*ep)*x^2] - (1 + 4*ep^2 + 4*nu - 8*ep*nu + 8*nu^2)*
      (b0 + 6*b0*nu + 6*nu*(1 + 2*nu))*
      Log[1 - 4*(1 + ep + 2*nu + 2*nu^2)*x^2 + (1 + 2*ep)^2*x^4] + 
     ((b0 + 6*b0*nu + 6*nu*(1 + 2*nu))*(1 + 10*nu + 16*nu^2 + 16*nu^3 + 
        ep^2*(-4 + 8*nu) - 4*ep*(1 + 4*nu^2))*
       (-Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
            ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] + 
        Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
      Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/((1 + 2*ep)^2*nu), 
  ((1 + 2*ep)*(1 + 2*nu)*((b0*(1 + 2*ep - 2*nu) + 2*(-1 + 2*ep - 2*nu)*nu)*
      Log[-1 + x^2] + (b0*(-1 + 2*nu) + 2*nu*(1 + 2*nu))*
      Log[-1 + x^2 + 2*ep*x^2]))/(16*ep*nu), 
  ((b0*(-1 + 2*nu) + 2*nu*(1 + 2*nu))*Log[-1 + x^2 + 2*ep*x^2])/(4*nu), 
  ((1 + 2*nu)*((b0*(1 + 2*ep - 2*nu) + 2*(-1 + 2*ep - 2*nu)*nu)*
      Log[-1 + x^2] + (1 + 2*ep)*(b0*(-1 + 2*nu) + 2*nu*(1 + 2*nu))*
      Log[-1 + x^2 + 2*ep*x^2]))/(16*ep*nu), 
  -1/16*(4*(1 + 2*ep)*(1 + ep + nu)*(b0*(-1 + 2*nu) + 2*nu*(1 + 2*nu))*
      Log[1 - (1 + 2*ep)*x^2] + (5 + 4*ep^2 + 12*nu + 8*nu^2 + 8*ep*(1 + nu))*
      (b0 + 6*b0*nu + 6*nu*(1 + 2*nu))*
      Log[1 - 4*(1 + ep + 2*nu + 2*nu^2)*x^2 + (1 + 2*ep)^2*x^4] + 
     ((b0 + 6*b0*nu + 6*nu*(1 + 2*nu))*(9 + 26*nu + 32*nu^2 + 16*nu^3 + 
        4*ep^2*(3 + 2*nu) + 4*ep*(5 + 8*nu + 4*nu^2))*
       (Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] - 
        Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
      Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/((1 + 2*ep)^2*nu), 
  (-1/4*I)*nu*(1 + 2*nu)*
   (((1 + 2*nu)*(2*nu*(4*ep^2 - 6*ep*(1 + 2*nu) + (1 + 2*nu)^2) + 
       b0*(-1 + 4*ep^2 + 4*nu^2 - 2*ep*(1 + 6*nu)))*Log[1 - x])/
     (ep*(2*ep^2 - (1 + 2*nu)^2)) - 
    ((1 + 2*nu)*(2*nu*(4*ep^2 - 6*ep*(1 + 2*nu) + (1 + 2*nu)^2) + 
       b0*(-1 + 4*ep^2 + 4*nu^2 - 2*ep*(1 + 6*nu)))*Log[1 + x])/
     (ep*(2*ep^2 - (1 + 2*nu)^2)) + ((b0*(-1 + 2*nu) + 2*nu*(1 + 2*nu))*
      (Log[1 - Sqrt[1 + 2*ep]*x] - Log[1 + Sqrt[1 + 2*ep]*x]))/
     (ep*Sqrt[1 + 2*ep]) - (I*(b0 + 6*b0*nu + 6*nu*(1 + 2*nu))*
      (2*ep^2*(-1 - 6*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       (1 + 2*nu)*(3 + 16*nu^3 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         nu^2*(20 - 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         nu*(14 - 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       ep*(3 + 10*nu - 16*nu^3 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         8*nu^2*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
            Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                4*nu + 4*nu^2])]] - 
       Log[1 + (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
            Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                4*nu + 4*nu^2])]]))/((1 + 2*ep)*
      Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(2*ep^2 - (1 + 2*nu)^2)*
      Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
    (I*(b0 + 6*b0*nu + 6*nu*(1 + 2*nu))*
      (-2*ep^2*(1 + 6*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       ep*(3 + 10*nu - 16*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         8*nu^2*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       (1 + 2*nu)*(3 + 16*nu^3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         4*nu^2*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         2*nu*(7 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
            Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
          Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
            2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
     ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(2*ep^2 - (1 + 2*nu)^2)*
      Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])), 0, 
  ((-1/4*I)*(1 + 3*nu + 2*nu^2)*
    (((2*nu*(8*ep^3*nu + 2*ep*(3 + nu)*(1 + 2*nu)^2 - (1 + nu)*(1 + 2*nu)^3 + 
          8*ep^2*(1 + 3*nu + 2*nu^2)) + b0*(8*ep^3*nu + 16*ep^2*nu*(1 + nu) - 
          (1 + 2*nu)^2*(-1 + nu + 2*nu^2) + 2*ep*(1 + 7*nu + 12*nu^2 + 
            4*nu^3)))*Log[1 - x])/(ep*(2*ep^2 - (1 + 2*nu)^2)) - 
     ((2*nu*(8*ep^3*nu + 2*ep*(3 + nu)*(1 + 2*nu)^2 - (1 + nu)*(1 + 2*nu)^3 + 
          8*ep^2*(1 + 3*nu + 2*nu^2)) + b0*(8*ep^3*nu + 16*ep^2*nu*(1 + nu) - 
          (1 + 2*nu)^2*(-1 + nu + 2*nu^2) + 2*ep*(1 + 7*nu + 12*nu^2 + 
            4*nu^3)))*Log[1 + x])/(ep*(2*ep^2 - (1 + 2*nu)^2)) + 
     ((1 + nu)*(b0*(-1 + 2*nu) + 2*nu*(1 + 2*nu))*
       (-Log[1 - Sqrt[1 + 2*ep]*x] + Log[1 + Sqrt[1 + 2*ep]*x]))/
      (ep*Sqrt[1 + 2*ep]) + (I*(1 + nu)*(b0 + 6*b0*nu + 6*nu*(1 + 2*nu))*
       (-2*ep^2*(-5 - 6*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        (1 + 2*nu)*(7 + 16*nu^3 - 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(22 - 10*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(28 - 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(17 + 16*nu^3 - 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(54 - 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          8*nu^2*(-7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(2*ep^2 - (1 + 2*nu)^2)*
       Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) - 
     (I*(1 + nu)*(b0 + 6*b0*nu + 6*nu*(1 + 2*nu))*
       (2*ep^2*(5 + 6*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        (1 + 2*nu)*(7 + 16*nu^3 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(11 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(17 + 16*nu^3 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          8*nu^2*(7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(27 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(2*ep^2 - (1 + 2*nu)^2)*
       Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/nu, 
  ((I/4)*(1 + 2*nu)*(4*nu*(b0 + 2*nu)*x - 
     ((b0*(-2*ep*nu*(1 + 2*nu)^2 + nu*(-1 + 2*nu)*(1 + 2*nu)^2 + 
          2*ep^3*(1 + 8*nu) + ep^2*(1 + 6*nu - 16*nu^2)) + 
        2*nu*(nu*(1 + 2*nu)^3 + 2*ep^3*(1 + 8*nu) + 
          ep^2*(3 - 2*nu - 16*nu^2) + ep*(2 + 6*nu - 8*nu^3)))*Log[1 - x])/
      (ep*(2*ep^2 - (1 + 2*nu)^2)) + 
     ((b0*(-2*ep*nu*(1 + 2*nu)^2 + nu*(-1 + 2*nu)*(1 + 2*nu)^2 + 
          2*ep^3*(1 + 8*nu) + ep^2*(1 + 6*nu - 16*nu^2)) + 
        2*nu*(nu*(1 + 2*nu)^3 + 2*ep^3*(1 + 8*nu) + 
          ep^2*(3 - 2*nu - 16*nu^2) + ep*(2 + 6*nu - 8*nu^3)))*Log[1 + x])/
      (ep*(2*ep^2 - (1 + 2*nu)^2)) + (nu*(1 + 2*ep + 2*nu)*
       (b0*(-1 + 2*nu) + 2*nu*(1 + 2*nu))*(-Log[1 - Sqrt[1 + 2*ep]*x] + 
        Log[1 + Sqrt[1 + 2*ep]*x]))/(Sqrt[1 + 2*ep]*(ep + 2*ep*nu)) + 
     ((I/2)*(b0 + 6*b0*nu + 6*nu*(1 + 2*nu))*
       (4*ep^3*(-3 - 24*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)^2*(-2 + 32*nu^4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          12*nu^2*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          8*nu^3*(-5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(1 + 2*nu)*(-11 + 32*nu^4 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^2*(28 - 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          16*nu^3*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-20 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^2*(-5 - 32*nu^4 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^3*(-9 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(-19 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-22 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       (2*ep^2 - (1 + 2*nu)^2)*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(b0 + 6*b0*nu + 6*nu*(1 + 2*nu))*
       (-((1 + 2*nu)^2*(-2 + 32*nu^4 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           2*nu*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           12*nu^2*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           8*nu^3*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))) + 
        4*ep^3*(3 + 24*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        ep*(1 + 2*nu)*(-11 + 32*nu^4 - 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          16*nu^3*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(10 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^2*(5 + 32*nu^4 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^3*(9 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(19 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(22 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       (2*ep^2 - (1 + 2*nu)^2)*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/nu, 
  ((-1/4*I)*(8*nu^2*(b0 + 2*nu)*x + 
     ((b0*(1 + 2*ep - 2*nu) + 2*(-1 + 2*ep - 2*nu)*nu)*(1 + 3*nu + 2*nu^2)*
       Log[1 - x])/ep - ((b0*(1 + 2*ep - 2*nu) + 2*(-1 + 2*ep - 2*nu)*nu)*
       (1 + 3*nu + 2*nu^2)*Log[1 + x])/ep + 
     ((1 + nu)*(1 + 2*ep + 2*nu)*(b0*(-1 + 2*nu) + 2*nu*(1 + 2*nu))*
       (Log[1 - Sqrt[1 + 2*ep]*x] - Log[1 + Sqrt[1 + 2*ep]*x]))/
      (ep*Sqrt[1 + 2*ep])))/nu, (-1/4*I)*(8*(2*ep - nu)*(b0 + 2*nu)*x + 
    ((-1 + 4*ep - 2*nu)*(b0*(1 + 2*ep - 2*nu) + 2*(-1 + 2*ep - 2*nu)*nu)*
      Log[1 - x])/ep - ((-1 + 4*ep - 2*nu)*(b0*(1 + 2*ep - 2*nu) + 
       2*(-1 + 2*ep - 2*nu)*nu)*Log[1 + x])/ep + 
    ((-1 + 2*ep - 2*nu)*(b0*(-1 + 2*nu) + 2*nu*(1 + 2*nu))*
      (Log[1 - Sqrt[1 + 2*ep]*x] - Log[1 + Sqrt[1 + 2*ep]*x]))/
     (ep*Sqrt[1 + 2*ep])), ((-1/4*I)*(4*nu*(b0 + 2*nu)*(-1 - 4*ep + 2*nu)*x - 
     ((2*nu*(16*ep^4*nu - 2*ep*(3 + nu)*(1 + 2*nu)^3 + 
          (1 + nu)*(1 + 2*nu)^4 - (-7 + 4*nu)*(ep + 2*ep*nu)^2 + 
          2*ep^3*(9 + 26*nu + 16*nu^2)) + 
        b0*(16*ep^4*nu - 2*ep*nu*(1 + 2*nu)^2*(5 + 2*nu) + 
          (1 + 2*nu)^3*(-1 + nu + 2*nu^2) + ep^3*(2 + 36*nu + 32*nu^2) + 
          ep^2*(5 + 20*nu + 12*nu^2 - 16*nu^3)))*Log[1 - x])/
      (ep*(2*ep^2 - (1 + 2*nu)^2)) + 
     ((2*nu*(16*ep^4*nu - 2*ep*(3 + nu)*(1 + 2*nu)^3 + 
          (1 + nu)*(1 + 2*nu)^4 - (-7 + 4*nu)*(ep + 2*ep*nu)^2 + 
          2*ep^3*(9 + 26*nu + 16*nu^2)) + 
        b0*(16*ep^4*nu - 2*ep*nu*(1 + 2*nu)^2*(5 + 2*nu) + 
          (1 + 2*nu)^3*(-1 + nu + 2*nu^2) + ep^3*(2 + 36*nu + 32*nu^2) + 
          ep^2*(5 + 20*nu + 12*nu^2 - 16*nu^3)))*Log[1 + x])/
      (ep*(2*ep^2 - (1 + 2*nu)^2)) + ((-1 + 2*ep - 2*nu)*(1 + nu)*
       (b0*(-1 + 2*nu) + 2*nu*(1 + 2*nu))*(Log[1 - Sqrt[1 + 2*ep]*x] - 
        Log[1 + Sqrt[1 + 2*ep]*x]))/(ep*Sqrt[1 + 2*ep]) + 
     ((I/2)*(b0 + 6*b0*nu + 6*nu*(1 + 2*nu))*
       ((1 + 2*nu)^2*(12 + 32*nu^4 - 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^2*(96 - 36*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(54 - 26*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^3*(88 - 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^3*(-13 - 24*nu^2 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(-34 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(1 + 2*nu)*(-5 - 32*nu^4 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          16*nu^3*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-7 + 10*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(-6 + 13*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^2*(-17 - 32*nu^4 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^3*(-23 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(-61 + 17*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-74 + 28*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(2*ep^2 - (1 + 2*nu)^2)*
       Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(b0 + 6*b0*nu + 6*nu*(1 + 2*nu))*
       (4*ep^3*(13 + 24*nu^2 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(34 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(1 + 2*nu)*(5 + 32*nu^4 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          16*nu^3*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(7 + 10*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(6 + 13*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        (1 + 2*nu)^2*(12 + 32*nu^4 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          8*nu^3*(11 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          12*nu^2*(8 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(54 + 26*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^2*(17 + 32*nu^4 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^3*(23 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(61 + 17*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(74 + 28*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(2*ep^2 - (1 + 2*nu)^2)*
       Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/nu, 
  ((I/4)*(1 + 2*nu)*
    (-((b0*(ep + 6*ep*nu + 2*nu*(1 + 2*nu)^2 + ep^2*(2 + 8*nu)) + 
        2*nu*(2*(1 + nu)*(1 + 2*nu)^2 + ep*(3 + 6*nu) + ep^2*(2 + 8*nu)))*
       Log[1 - x]) + (b0*(ep + 6*ep*nu + 2*nu*(1 + 2*nu)^2 + 
         ep^2*(2 + 8*nu)) + 2*nu*(2*(1 + nu)*(1 + 2*nu)^2 + ep*(3 + 6*nu) + 
         ep^2*(2 + 8*nu)))*Log[1 + x] + 
     ((I/2)*(1 + 2*ep)*(b0 + 6*b0*nu + 6*nu*(1 + 2*nu))*
       (ep*(-3 - 6*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        (1 + 2*nu)*(-2 - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(1 + 2*ep)*(b0 + 6*b0*nu + 6*nu*(1 + 2*nu))*
       (ep*(3 + 6*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        (1 + 2*nu)*(2 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   (nu*(2*ep^2 - (1 + 2*nu)^2)), 0, 
  (4*(1 + 2*nu)*(b0 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
     (-2*ep^2 + (1 + 2*nu)^2)*Log[x] + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
     (b0*(-8*ep^3 + 8*nu^2*(1 + 2*nu) + 4*ep^2*(1 + 7*nu) + 
        ep*(1 - 10*nu - 32*nu^2)) + 2*nu*(-8*ep^3 + 4*nu*(1 + 2*nu)^2 + 
        4*ep^2*(3 + 7*nu) - ep*(5 + 26*nu + 32*nu^2)))*Log[1 - x^2] + 
    (b0 + 6*b0*nu + 6*nu*(1 + 2*nu))*
     (-4*ep^2*(1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
      (1 + 2*nu)*(1 + 4*nu^2 - 2*nu*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      ep*(1 - 16*nu^2 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(-2 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     Log[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
       2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - x^2 - 4*ep*x^2 - 4*ep^2*x^2] - 
    (b0 + 6*b0*nu + 6*nu*(1 + 2*nu))*
     (4*ep^2*(-1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
      (1 + 2*nu)*(1 + 4*nu^2 + 2*nu*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
      ep*(-1 + 16*nu^2 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(2 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     Log[2 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
       2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - x^2 - 4*ep^2*x^2 + 
       ep*(2 - 4*x^2)])/(4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
    (-2*ep^2 + (1 + 2*nu)^2)), 
  (4*nu*(1 + 2*nu)*(b0 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
     (-2*ep^2 + (1 + 2*nu)^2)*Log[x] + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
     (2*nu*(8*ep^3*nu + 2*(1 + 2*nu)^2*(3 + 5*nu + 2*nu^2) + 
        4*ep^2*(3 + 10*nu + 7*nu^2) + ep*(15 + 65*nu + 86*nu^2 + 32*nu^3)) + 
      b0*(8*ep^3*nu + 4*ep^2*(1 + 8*nu + 7*nu^2) + 
        ep*(5 + 39*nu + 70*nu^2 + 32*nu^3) + 2*(1 + 9*nu + 24*nu^2 + 
          24*nu^3 + 8*nu^4)))*Log[1 - x^2] + 
    (1 + nu)*(b0 + 6*b0*nu + 6*nu*(1 + 2*nu))*
     (-4*ep^2*(-3 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
      ep*(13 + 16*nu^2 - 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(30 - 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      (1 + 2*nu)*(3 + 4*nu^2 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        2*nu*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     Log[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
       2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - x^2 - 4*ep*x^2 - 4*ep^2*x^2] - 
    (1 + nu)*(b0 + 6*b0*nu + 6*nu*(1 + 2*nu))*
     (4*ep^2*(3 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
      (1 + 2*nu)*(3 + 4*nu^2 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      ep*(13 + 16*nu^2 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(30 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     Log[2 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
       2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - x^2 - 4*ep^2*x^2 + 
       ep*(2 - 4*x^2)])/(4*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
    (-2*ep^2 + (1 + 2*nu)^2)), 
  -1/2*(ep*(-2*(b0*(ep + 6*ep*nu + 2*nu*(1 + 2*nu)^2 + ep^2*(2 + 8*nu)) + 
        2*nu*(2*(1 + nu)*(1 + 2*nu)^2 + ep*(3 + 6*nu) + ep^2*(2 + 8*nu)))*
       Log[-1 + x^2] + (b0 + 6*b0*nu + 6*nu*(1 + 2*nu))*(ep + (1 + 2*nu)^2)*
       Log[-1 + 4*(1 + ep + 2*nu + 2*nu^2)*x^2 - (1 + 2*ep)^2*x^4] + 
      ((1 + 2*nu)*(2 + 3*ep + 4*nu + 4*nu^2)*(b0 + 6*b0*nu + 6*nu*(1 + 2*nu))*
        (Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
            ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] - 
         Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
            ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
       Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))/(nu*(1 + 2*nu)*
     (2*ep^2 - (1 + 2*nu)^2)), 4*(b0 + 2*nu)*Log[x] + 
   ((2*nu*(4*ep^3*(7 + 18*nu) - (1 + 2*nu)^2*(-5 - 2*nu + 4*nu^2) + 
        ep^2*(26 + 68*nu + 8*nu^2) + 8*ep*(2 + 8*nu + 11*nu^2 + 6*nu^3)) + 
      b0*(12*ep^3*(1 + 6*nu) - (1 + 2*nu)^2*(-1 - 6*nu + 4*nu^2) + 
        2*ep^2*(5 + 30*nu + 4*nu^2) + 4*ep*(1 + 8*nu + 14*nu^2 + 12*nu^3)))*
     Log[1 - x^2])/((1 + 2*ep)*nu*(-2*ep^2 + (1 + 2*nu)^2)) + 
   ((b0 + 6*b0*nu + 6*nu*(1 + 2*nu))*
     (ep^2*(2 + 4*nu - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
      ep*(5 + 10*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
      (1 + 2*nu)*(2 + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     Log[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
       2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - x^2 - 4*ep*x^2 - 4*ep^2*x^2])/
    (nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)) - 
   ((b0 + 6*b0*nu + 6*nu*(1 + 2*nu))*
     (2*ep^2*(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
      ep*(5 + 10*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
      (1 + 2*nu)*(2 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     Log[2 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
       2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - x^2 - 4*ep^2*x^2 + 
       ep*(2 - 4*x^2)])/(nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
     (-2*ep^2 + (1 + 2*nu)^2)), (I*(2 + b0 + 2*nu)*(Log[1 - x] - Log[1 + x]))/
   (1 + 2*ep)}, 
 {-1/4*((1 + 2*nu)*(2*(1 + 2*ep)^4*(1 + 2*b0 + 4*nu)*Log[x] + 
      (1 + 2*ep)^4*Log[1 - x^2] - ((1 - 2*nu - 192*ep^5*nu - 12*nu^2 + 
         24*nu^3 + 64*nu^4 + 64*nu^5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         4*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         4*nu^2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         16*nu^3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         32*nu^4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         16*ep^3*(5 + 28*nu^2 + 16*nu^3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           4*nu*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         16*ep^4*(3 + 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           4*nu^2*(7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           nu*(2 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         8*ep^2*(-64*nu^4 + 24*nu^2*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           3*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           8*nu^3*(-7 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           2*nu*(6 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
         4*ep*(-3 + 8*nu^3 - 64*nu^5 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           32*nu^4*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
           4*nu^2*(-7 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
           nu*(1 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         b0*(-1 - 96*ep^5 + 32*nu^4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           32*ep^3*(1 + 6*nu + 4*nu^2) + nu^2*(12 - 8*Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2]) + 2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
           16*nu^3*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           16*ep^4*(-3 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(6 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
           2*ep*(3 + 8*nu^2 - 64*nu^4 - 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             32*nu^3*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
             8*nu*(-3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
           16*ep^2*(-16*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             6*nu*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
             2*nu^2*(-7 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
        Log[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - x^2 - 4*ep*x^2 - 4*ep^2*x^2])/
       ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
      ((-1 + 2*nu + 192*ep^5*nu + 12*nu^2 - 24*nu^3 - 64*nu^4 - 64*nu^5 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         4*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         4*nu^2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         16*nu^3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         32*nu^4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         16*ep^3*(-5 - 28*nu^2 - 16*nu^3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           4*nu*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         16*ep^4*(-3 - 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           4*nu^2*(-7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           nu*(-2 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
         4*ep*(3 + nu - 8*nu^3 + 64*nu^5 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
           8*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 32*nu^4*
            (1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
           4*nu^2*(7 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         8*ep^2*(64*nu^4 + 3*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           24*nu^2*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           8*nu^3*(7 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           2*nu*(-6 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         b0*(1 + 96*ep^5 - 32*nu^4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
           32*ep^3*(1 + 6*nu + 4*nu^2) + 2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*
                nu^2]) - 16*nu^3*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
           4*nu^2*(3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           16*ep^4*(3 - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-6 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
           2*ep*(3 + 8*nu^2 - 64*nu^4 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             32*nu^3*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
             8*nu*(3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
           16*ep^2*(16*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             6*nu*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
             2*nu^2*(7 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
        Log[2 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - x^2 - 4*ep^2*x^2 + 
          ep*(2 - 4*x^2)])/((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))/
    (1 + 2*ep)^4, 0, 0, 0, 
  -1/4*(-2*(1 + 2*ep)^4*(1 + 2*nu)*(1 + 2*b0 + 4*nu)*Log[x] + 
     (1 + 2*ep)^4*(3 + 4*ep - 2*nu)*Log[1 - x^2] + 
     ((-3 - 26*nu - 192*ep^5*nu + 4*nu^2 + 88*nu^3 + 128*nu^4 + 64*nu^5 + 
        Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        12*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        12*nu^2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        48*nu^3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        32*nu^4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        4*ep*(5 + 32*nu^2 - 64*nu^5 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(61 - 30*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          32*nu^4*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          24*nu^3*(-3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        16*ep^4*(-1 + 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(-25 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        8*ep^2*(-40*nu^3 + 3*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-25 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(-53 + 26*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        16*ep^3*(-3 - 16*nu^3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          8*nu^2*(-7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-78 + 34*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        b0*(-9 - 96*ep^5 + 32*nu^4 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^2*(44 - 24*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(4 - 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          16*nu^3*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*ep^4*(-25 + 4*nu^2 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            2*nu*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          2*ep*(49 + 28*nu - 64*nu^4 - 26*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            32*nu^3*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            24*nu^2*(-3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          16*ep^3*(-37 - 8*nu^2 + 15*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            nu*(-30 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          8*ep^2*(-47 - 20*nu^2 + 23*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            2*nu*(-25 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
       Log[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - x^2 - 4*ep*x^2 - 4*ep^2*x^2])/
      Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
     ((3 + 26*nu + 192*ep^5*nu - 4*nu^2 - 88*nu^3 - 128*nu^4 - 64*nu^5 + 
        Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        12*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        12*nu^2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        48*nu^3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        32*nu^4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        16*ep^4*(1 - 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(25 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        8*ep^2*(40*nu^3 + 3*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(25 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(53 + 26*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        4*ep*(-5 - 32*nu^2 + 64*nu^5 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          32*nu^4*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          24*nu^3*(3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          nu*(61 + 30*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        16*ep^3*(3 + 16*nu^3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          8*nu^2*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(78 + 34*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        b0*(9 + 96*ep^5 - 32*nu^4 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          16*nu^3*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(2 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          4*nu^2*(11 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*ep^4*(25 - 4*nu^2 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            2*nu*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          2*ep*(-49 - 28*nu + 64*nu^4 - 26*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            32*nu^3*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            24*nu^2*(3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          8*ep^2*(47 + 20*nu^2 + 23*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            2*nu*(25 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          16*ep^3*(37 + 8*nu^2 + 15*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            nu*(30 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
       Log[2 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - x^2 - 4*ep^2*x^2 + 
         ep*(2 - 4*x^2)])/Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/(1 + 2*ep)^4, 
  ((2*I)*nu^2*(1 + 2*nu)^2*((1 + 2*ep)*(1 + b0 + 2*b0*ep + 4*nu + 
       ep*(-1 + 4*nu))*Log[1 - x] - (1 + 2*ep)*(1 + b0 + 2*b0*ep + 4*nu + 
       ep*(-1 + 4*nu))*Log[1 + x] + 
     ((I/2)*(-96*ep^5*nu + 8*ep^4*(1 - 32*nu^3 + 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          10*nu*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-5 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        (1 + 2*nu)*(-8*nu^2 + 64*nu^5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^4*(80 - 32*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          8*nu^3*(-5 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-8 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        4*ep^3*(-3 - 64*nu^4 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          8*nu^3*(-23 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-44 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-37 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(1 - 512*nu^6 - 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(72 - 58*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^3*(224 - 48*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          64*nu^5*(-11 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          32*nu^4*(-10 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          4*nu^2*(-67 + 36*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        2*ep^2*(-384*nu^5 + 3*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          96*nu^4*(-7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          152*nu^3*(-5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu*(-27 + 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-111 + 55*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        b0*(-48*ep^5 + 8*ep^4*(-5 - 16*nu^2 + 4*Sqrt[3 + 4*ep + 4*nu + 4*
                nu^2] + 8*nu*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          (1 + 2*nu)*(3 + 2*nu - 32*nu^4 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            8*nu^3*(-5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(-5 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          4*ep^3*(-20 - 32*nu^3 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            4*nu^2*(-21 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            2*nu*(-36 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          2*ep*(15 - 128*nu^5 - 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            nu*(56 - 30*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu^2*(44 - 12*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(-11 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^3*(-10 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          ep^2*(96 + 384*nu^4 - 46*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            nu*(408 - 196*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            96*nu^3*(-7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            8*nu^2*(-89 + 38*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(96*ep^5*nu + (1 + 2*nu)*(-8*nu^2 + 64*nu^5 - 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 16*nu^4*
           (5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(4 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(5 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        8*ep^4*(-1 + 32*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          10*nu*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(5 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        4*ep^3*(3 + 64*nu^4 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          8*nu^3*(23 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(44 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(37 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(-1 + 512*nu^6 - 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          16*nu^3*(14 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          64*nu^5*(11 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          32*nu^4*(10 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(36 + 29*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          4*nu^2*(67 + 36*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        2*ep^2*(384*nu^5 + 3*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          152*nu^3*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          96*nu^4*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu*(27 + 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(111 + 55*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        b0*(48*ep^5 + 8*ep^4*(5 + 16*nu^2 + 4*Sqrt[3 + 4*ep + 4*nu + 4*
                nu^2] + 8*nu*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          (1 + 2*nu)*(-3 - 2*nu + 32*nu^4 - 2*Sqrt[3 + 4*ep + 4*nu + 4*
                nu^2] + 8*nu^3*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(5 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          4*ep^3*(20 + 32*nu^3 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            4*nu^2*(21 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            2*nu*(36 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          2*ep*(128*nu^5 - 3*(5 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            4*nu^2*(11 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(11 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^3*(10 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            2*nu*(28 + 15*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          2*ep^2*(48 + 192*nu^4 + 23*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            48*nu^3*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(89 + 38*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu*(204 + 98*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   ((1 + 2*ep)^2*(2*ep^2 - (1 + 2*nu)^2)), 0, 
  ((2*I)*(1 + 3*nu + 2*nu^2)*
    (-((1 + 2*ep)*(-1 - 3*nu - 6*nu^2 - 8*nu^3 + 8*ep^3*(1 + 3*nu) + 
        4*ep^2*(1 + 7*nu + 4*nu^2) - ep*(3 + 5*nu + 18*nu^2 + 24*nu^3) + 
        b0*(1 + 2*ep)*(1 + 4*ep^2 + nu - 2*nu^2 + 4*ep*(1 + nu)))*
       Log[1 - x]) + (1 + 2*ep)*(-1 - 3*nu - 6*nu^2 - 8*nu^3 + 
       8*ep^3*(1 + 3*nu) + 4*ep^2*(1 + 7*nu + 4*nu^2) - 
       ep*(3 + 5*nu + 18*nu^2 + 24*nu^3) + b0*(1 + 2*ep)*
        (1 + 4*ep^2 + nu - 2*nu^2 + 4*ep*(1 + nu)))*Log[1 + x] + 
     ((I/2)*(1 + nu)*(-96*ep^5*nu + (1 + 2*nu)*(-2 + 64*nu^5 + 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 8*nu^2*Sqrt[3 + 4*ep + 4*nu + 
             4*nu^2] + 10*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          16*nu^4*(-7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          8*nu^3*(-9 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        8*ep^4*(-3 - 32*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(-27 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-86 + 22*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^3*(-13 - 192*nu^4 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          8*nu^3*(-65 + 12*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu*(-73 + 28*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-155 + 47*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(-15 + 512*nu^6 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          416*nu^4*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          64*nu^5*(-17 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          16*nu^3*(4 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-125 + 48*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(-112 + 55*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        2*ep^2*(-21 - 128*nu^5 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          32*nu^4*(-15 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(-121 + 34*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu*(-98 + 45*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-247 + 97*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        b0*(-48*ep^5 + 4*ep^3*(-124 - 96*nu^3 + 
            49*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 12*nu^2*
             (-21 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            18*nu*(-16 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          (1 + 2*nu)*(-7 + 32*nu^4 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            nu*(2 - 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            8*nu^3*(-7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            4*nu^2*(-9 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          2*ep*(39 - 128*nu^5 - 21*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            nu*(100 - 42*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            104*nu^3*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(-17 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(1 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          8*ep^4*(-39 - 16*nu^2 + 10*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            nu*(-52 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          2*ep^2*(-154 - 64*nu^4 + 75*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            16*nu^3*(-15 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(-115 + 34*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            2*nu*(-220 + 91*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(1 + nu)*(96*ep^5*nu - (1 + 2*nu)*(-2 + 64*nu^5 - 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 8*nu^2*Sqrt[3 + 4*ep + 4*nu + 
             4*nu^2] - 10*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^4*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(9 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        8*ep^4*(3 + 32*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(27 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(86 + 22*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^3*(13 + 192*nu^4 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          8*nu^3*(65 + 12*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu*(73 + 28*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(155 + 47*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(15 - 512*nu^6 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          416*nu^4*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          64*nu^5*(17 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          16*nu^3*(-4 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(125 + 48*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(112 + 55*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        2*ep^2*(21 + 128*nu^5 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          32*nu^4*(15 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(121 + 34*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu*(98 + 45*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(247 + 97*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        b0*(48*ep^5 - (1 + 2*nu)*(-7 + 32*nu^4 - 
            4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 8*nu^3*
             (7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu*(2 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(9 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          4*ep^3*(124 + 96*nu^3 + 49*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            12*nu^2*(21 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            18*nu*(16 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          8*ep^4*(39 + 16*nu^2 + 10*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            nu*(52 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          2*ep*(128*nu^5 + 104*nu^3*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(17 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(-1 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            3*(13 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            2*nu*(50 + 21*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          2*ep^2*(154 + 64*nu^4 + 75*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            16*nu^3*(15 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(115 + 34*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            2*nu*(220 + 91*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   ((1 + 2*ep)^2*(2*ep^2 - (1 + 2*nu)^2)), 
  ((-I)*(1 + 2*nu)*(4*(1 + 4*ep)*nu*(b0 + 2*nu)*x + 
     ((1 + 2*ep)*(24*ep^3*nu - 8*nu^2*(1 + 2*nu) + ep^2*(2 + 32*nu) + 
        b0*(1 + 2*ep)*(1 + 4*ep + 4*ep^2 - 4*nu^2) + 
        ep*(1 + 8*nu - 20*nu^2 - 32*nu^3))*Log[1 - x])/
      (2*ep^2 - (1 + 2*nu)^2) - ((1 + 2*ep)*(24*ep^3*nu - 8*nu^2*(1 + 2*nu) + 
        ep^2*(2 + 32*nu) + b0*(1 + 2*ep)*(1 + 4*ep + 4*ep^2 - 4*nu^2) + 
        ep*(1 + 8*nu - 20*nu^2 - 32*nu^3))*Log[1 + x])/
      (2*ep^2 - (1 + 2*nu)^2) - ((I/2)*(-192*ep^6*nu*(1 + 4*nu) - 
        (1 + 2*nu)^2*(1 + 6*nu + 128*nu^6 + 
          nu^4*(64 - 48*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          32*nu^5*(-5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-5 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        16*ep^5*(-1 - 128*nu^4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          68*nu^2*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          32*nu^3*(-7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-54 + 20*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        4*ep^2*(8 - 256*nu^7 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(121 - 38*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(226 - 10*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          64*nu^6*(-21 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          48*nu^3*(-11 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          88*nu^4*(-23 + 11*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^5*(-149 + 46*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(1 + 2*nu)*(-9 - 1024*nu^7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^2*(44 - 116*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          128*nu^4*(-5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          128*nu^6*(-13 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(-45 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          64*nu^5*(-11 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          8*nu^3*(-87 + 50*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        8*ep^3*(7 - 640*nu^6 - 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^2*(362 - 120*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(141 - 59*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          80*nu^5*(-15 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(-9 + 26*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(-123 + 53*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        16*ep^4*(-3 - 64*nu^5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          8*nu^4*(-15 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu*(-11 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(-73 + 27*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(-143 + 59*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        b0*(-96*ep^6*(1 + 4*nu) + (1 + 2*nu)^2*(-2 - 64*nu^5 + 
            Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            nu*(8 - 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            4*nu^2*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(-5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^3*(-4 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          16*ep^5*(-25 - 64*nu^3 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            8*nu^2*(-13 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            6*nu*(-16 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          2*ep*(1 + 2*nu)*(-256*nu^6 + nu^2*(148 - 88*Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2]) + 7*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            8*nu^3*(-17 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            32*nu^5*(-13 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            4*nu*(-3 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(-11 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          16*ep^4*(-37 - 32*nu^4 + 15*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            16*nu^3*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            2*nu*(-64 + 27*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            2*nu^2*(-67 + 28*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          4*ep^3*(105 - 640*nu^5 - 49*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            24*nu^3*(-38 + 17*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(-73 + 20*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            6*nu*(-50 + 21*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu^2*(-44 + 68*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          2*ep^2*(77 - 256*nu^6 - 38*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            nu*(160 - 48*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            64*nu^5*(-21 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(-143 + 46*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(-122 + 87*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^3*(-232 + 115*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       (2*ep^2 - (1 + 2*nu)^2)*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) - 
     ((I/2)*(192*ep^6*nu*(1 + 4*nu) + (1 + 2*nu)^2*(1 + 6*nu + 128*nu^6 - 
          8*nu^3*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          32*nu^5*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^4*(4 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          4*nu^2*(5 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        16*ep^5*(1 + 128*nu^4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          68*nu^2*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          32*nu^3*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(54 + 20*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        4*ep^2*(256*nu^7 - 2*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          64*nu^6*(21 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu^2*(113 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          48*nu^3*(11 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          88*nu^4*(23 + 11*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          nu*(121 + 38*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^5*(149 + 46*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(1 + 2*nu)*(9 + 1024*nu^7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          128*nu^4*(5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          128*nu^6*(13 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(45 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          64*nu^5*(11 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          4*nu^2*(11 + 29*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          8*nu^3*(87 + 50*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        16*ep^4*(3 + 64*nu^5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          8*nu^4*(15 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu*(11 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(73 + 27*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(143 + 59*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        8*ep^3*(-7 + 640*nu^6 - 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          80*nu^5*(15 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(9 + 26*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(123 + 53*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          nu*(141 + 59*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu^2*(181 + 60*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        b0*(96*ep^6*(1 + 4*nu) + (1 + 2*nu)^2*(2 + 64*nu^5 + 
            Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 4*nu^2*(3 + Sqrt[3 + 4*ep + 
                4*nu + 4*nu^2]) + 16*nu^4*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2]) - 2*nu*(4 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^3*(4 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          16*ep^5*(25 + 64*nu^3 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            8*nu^2*(13 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            6*nu*(16 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          2*ep*(1 + 2*nu)*(256*nu^6 + 7*(2 + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2]) - 4*nu*(3 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            32*nu^5*(13 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            8*nu^3*(17 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(11 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            4*nu^2*(37 + 22*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          16*ep^4*(37 + 32*nu^4 + 15*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            16*nu^3*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            2*nu*(64 + 27*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            2*nu^2*(67 + 28*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          4*ep^3*(640*nu^5 - 7*(15 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            24*nu^3*(38 + 17*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(73 + 20*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            6*nu*(50 + 21*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu^2*(44 + 68*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          2*ep^2*(-77 + 256*nu^6 - 38*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            64*nu^5*(21 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            16*nu*(10 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(143 + 46*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(122 + 87*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^3*(232 + 115*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       (2*ep^2 - (1 + 2*nu)^2)*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/(1 + 2*ep)^2, 0, 0, 
  (I*(4*(1 + 4*ep)*(b0 + 2*nu)*(4*ep^2 + nu - 4*ep*nu + 2*nu^2)*x + 
     ((1 + 2*ep)*(64*ep^4*nu + 8*ep^3*(-1 + 7*nu + 2*nu^2) + 
        2*(1 + 2*nu)^2*(1 + 2*nu + 4*nu^2) - 2*ep^2*(1 - 10*nu + 8*nu^2 + 
          32*nu^3) + ep*(7 + 38*nu + 68*nu^2 + 72*nu^3 + 64*nu^4) + 
        b0*(1 + 2*ep)*(16*ep^3 - 8*ep*nu*(1 + 2*nu) + (-1 + 2*nu)*
           (1 + 2*nu)^2 + 4*ep^2*(3 + 2*nu)))*Log[1 - x])/
      (2*ep^2 - (1 + 2*nu)^2) - 
     ((1 + 2*ep)*(64*ep^4*nu + 8*ep^3*(-1 + 7*nu + 2*nu^2) + 
        2*(1 + 2*nu)^2*(1 + 2*nu + 4*nu^2) - 2*ep^2*(1 - 10*nu + 8*nu^2 + 
          32*nu^3) + ep*(7 + 38*nu + 68*nu^2 + 72*nu^3 + 64*nu^4) + 
        b0*(1 + 2*ep)*(16*ep^3 - 8*ep*nu*(1 + 2*nu) + (-1 + 2*nu)*
           (1 + 2*nu)^2 + 4*ep^2*(3 + 2*nu)))*Log[1 + x])/
      (2*ep^2 - (1 + 2*nu)^2) - ((I/2)*(-192*ep^6*nu*(3 + 4*nu) + 
        (1 + 2*nu)^2*(3 - 128*nu^6 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(38 - 20*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(44 - 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          32*nu^5*(-11 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^4*(-22 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(-16 + 11*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        8*ep^3*(15 - 384*nu^6 - 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^2*(378 - 224*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(229 - 123*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          28*nu^3*(-13 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          48*nu^5*(-23 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(-161 + 43*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(1 + 2*nu)*(13 - 1024*nu^7 - 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^2*(1236 - 572*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(298 - 160*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          128*nu^6*(-23 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          64*nu^4*(-7 + 10*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          64*nu^5*(-45 + 19*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          8*nu^3*(-193 + 58*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        16*ep^5*(-7 - 128*nu^4 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          32*nu^3*(-13 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-131 + 31*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-222 + 64*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^2*(-2 + 768*nu^7 + nu^2*(1070 - 506*Sqrt[3 + 4*ep + 4*nu + 4*
                nu^2]) + nu*(91 - 44*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          192*nu^6*(-17 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          112*nu^5*(-53 + 14*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          40*nu^4*(-157 + 59*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          8*nu^3*(-469 + 207*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        16*ep^4*(-13 - 192*nu^5 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          8*nu^4*(-79 + 12*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(-151 + 65*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(-253 + 75*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(-862 + 330*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        b0*(-96*ep^6*(3 + 4*nu) - 2*ep*(1 + 2*nu)*(-50 + 256*nu^6 + 
            27*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            nu^4*(720 - 304*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            32*nu^5*(-23 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            8*nu^3*(-17 + 20*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(-79 + 26*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu*(-61 + 30*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          4*ep^3*(165 - 384*nu^5 - 101*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            nu*(304 - 218*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(-85 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(-67 + 12*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^3*(-150 + 41*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          (1 + 2*nu)^2*(12 - 64*nu^5 - 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
            2*nu*(-6 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(-11 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^3*(-22 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu^2*(-68 + 44*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          16*ep^5*(-97 - 64*nu^3 + 27*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            8*nu^2*(-25 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu*(-244 + 58*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          32*ep^4*(-61 - 48*nu^4 + 27*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            12*nu^3*(-13 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu^2*(-239 + 74*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu*(-193 + 77*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          2*ep^2*(-75 - 768*nu^6 + 28*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            192*nu^5*(-17 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(-365 + 98*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^3*(-746 + 289*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(-856 + 387*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu*(-932 + 432*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(2*ep^2 - (1 + 2*nu)^2)*
       Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) - 
     ((I/2)*(192*ep^6*nu*(3 + 4*nu) + (1 + 2*nu)^2*(-3 + 128*nu^6 - 
          2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          4*nu^2*(11 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          32*nu^5*(11 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^4*(22 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(19 + 10*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(16 + 11*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        16*ep^5*(7 + 128*nu^4 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          32*nu^3*(13 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(131 + 31*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(222 + 64*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        8*ep^3*(-15 + 384*nu^6 - 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          28*nu^3*(13 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          48*nu^5*(23 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          14*nu^2*(27 + 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^4*(161 + 43*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          nu*(229 + 123*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(1 + 2*nu)*(-13 + 1024*nu^7 - 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          128*nu^6*(23 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          64*nu^4*(7 + 10*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          64*nu^5*(45 + 19*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          8*nu^3*(193 + 58*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(149 + 80*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          4*nu^2*(309 + 143*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        4*ep^2*(-2 + 768*nu^7 + 192*nu^6*(17 + 2*Sqrt[3 + 4*ep + 4*nu + 4*
                nu^2]) + 112*nu^5*(53 + 14*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(91 + 44*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          40*nu^4*(157 + 59*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(469 + 207*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(535 + 253*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        16*ep^4*(13 + 192*nu^5 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          8*nu^4*(79 + 12*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(151 + 65*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^3*(253 + 75*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(862 + 330*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        b0*(96*ep^6*(3 + 4*nu) + 2*ep*(1 + 2*nu)*(-50 + 256*nu^6 - 
            27*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 32*nu^5*
             (23 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(45 + 19*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^3*(17 + 20*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            4*nu^2*(79 + 26*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            4*nu*(61 + 30*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          (1 + 2*nu)^2*(-12 + 64*nu^5 - 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
            2*nu*(6 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(11 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^3*(22 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu^2*(68 + 44*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          16*ep^5*(97 + 64*nu^3 + 27*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            8*nu^2*(25 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu*(244 + 58*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          32*ep^4*(61 + 48*nu^4 + 27*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            12*nu^3*(13 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu^2*(239 + 74*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu*(193 + 77*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          4*ep^3*(-165 + 384*nu^5 - 101*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            4*nu^2*(85 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(67 + 12*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^3*(150 + 41*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            2*nu*(152 + 109*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          2*ep^2*(75 + 768*nu^6 + 28*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            192*nu^5*(17 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            16*nu^4*(365 + 98*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^3*(746 + 289*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(856 + 387*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            nu*(932 + 432*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(2*ep^2 - (1 + 2*nu)^2)*
       Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/(1 + 2*ep)^2, 
  (I*(1 + 2*nu)*(-((1 + 2*ep)*(ep + 2*nu + 10*ep*nu + 8*ep^2*nu + 4*nu^2 + 
        8*ep*nu^2 + b0*(1 + 2*ep)*(1 + 2*ep + 2*nu))*Log[1 - x]) + 
     (1 + 2*ep)*(ep + 2*nu + 10*ep*nu + 8*ep^2*nu + 4*nu^2 + 8*ep*nu^2 + 
       b0*(1 + 2*ep)*(1 + 2*ep + 2*nu))*Log[1 + x] + 
     ((I/2)*(-48*ep^4*nu + (1 + 2*nu)*(-1 + 16*nu^4 + 
          2*nu*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          8*nu^3*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          4*nu^2*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^3*(-1 - 32*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          16*nu^2*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(-21 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(-5 + 128*nu^5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^3*(32 - 48*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          32*nu^4*(-5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-25 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-60 + 22*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^2*(-2 - 32*nu^4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^3*(-17 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-41 + 18*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(-86 + 30*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        b0*(-24*ep^4 + (1 + 2*nu)*(-2 + 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 
              4*nu^2] - 4*nu^2*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            2*nu*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          2*ep*(-32*nu^4 + nu*(20 - 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            5*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^3*(-5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(-2 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          2*ep^2*(-33 - 32*nu^3 + 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            4*nu^2*(-17 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            6*nu*(-13 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          4*ep^3*(-19 - 16*nu^2 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            nu*(-30 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(48*ep^4*nu - (1 + 2*nu)*(-1 + 16*nu^4 + 
          4*nu^2*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^3*(1 + 32*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          16*nu^2*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(21 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(5 - 128*nu^5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          32*nu^4*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          16*nu^3*(2 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(25 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(60 + 22*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^2*(2 + 32*nu^4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^3*(17 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(41 + 18*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(86 + 30*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        b0*(24*ep^4 - (1 + 2*nu)*(-2 + 8*nu^3 - Sqrt[3 + 4*ep + 4*nu + 
              4*nu^2] + 2*nu*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
          2*ep*(32*nu^4 - 5*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            8*nu^3*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            4*nu^2*(2 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
            2*nu*(10 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          2*ep^2*(33 + 32*nu^3 + 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            4*nu^2*(17 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
            6*nu*(13 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
          4*ep^3*(19 + 16*nu^2 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
            nu*(30 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   ((1 + 2*ep)*(2*ep^2 - (1 + 2*nu)^2)), 0, 
  -((nu*(1 + 2*nu)*((2*(1 + 2*ep)^2)/(-1 + x^2) + 8*(1 + 2*ep)^2*(b0 + 2*nu)*
       Log[x] + (2*(1 + 2*ep)*(-1 + 8*ep^3 + ep^2*(6 - 8*nu) + 8*nu^2 - 
         ep*(7 + 24*nu) + b0*(1 - 4*ep^2 + 4*nu + 8*ep*nu))*Log[1 - x^2])/
       (2*ep^2 - (1 + 2*nu)^2) - 
      ((192*ep^5*nu + (1 + 2*nu)*(2 + 8*nu^2 - 16*nu^4 + 
           Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 8*nu^3*
            (-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           2*nu*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
         16*ep^4*(3 + 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           4*nu^2*(7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           nu*(11 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
         4*ep^3*(9 + 100*nu^2 + 96*nu^3 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           2*nu*(26 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         ep*(17 - 128*nu^5 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           64*nu^4*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           64*nu^3*(6 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           4*nu^2*(79 + 20*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           2*nu*(58 + 25*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         4*ep^2*(5 + 64*nu^5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           21*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           32*nu^4*(10 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           12*nu^3*(27 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           2*nu^2*(84 + 25*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         b0*(96*ep^5 - 8*ep^3*(9 + 26*nu + 24*nu^2) - (1 + 2*nu)*
            (-1 - 2*nu + 8*nu^3 - 4*nu^2*(-1 + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])) - 8*ep^4*(3 + 8*nu^2 + 2*Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2] + 4*nu*(6 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
           2*ep*(4 - 32*nu^4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             16*nu^3*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
             2*nu*(14 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
             nu^2*(52 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
           2*ep^2*(2 + 64*nu^4 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             32*nu^3*(9 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
             4*nu^2*(61 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
             2*nu*(38 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
        Log[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - x^2 - 4*ep*x^2 - 4*ep^2*x^2])/
       ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)) - 
      ((-192*ep^5*nu + (1 + 2*nu)*(-2 - 8*nu^2 + 16*nu^4 + 
           Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           2*nu*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           8*nu^3*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
         16*ep^4*(-3 - 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           4*nu^2*(-7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           nu*(-11 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
         4*ep^3*(-9 - 100*nu^2 - 96*nu^3 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           2*nu*(-26 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         4*ep^2*(-5 - 64*nu^5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           32*nu^4*(-10 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           21*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           12*nu^3*(-27 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           2*nu^2*(-84 + 25*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         ep*(-17 + 128*nu^5 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           64*nu^3*(-6 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           64*nu^4*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           4*nu^2*(-79 + 20*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           2*nu*(-58 + 25*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         b0*(-96*ep^5 + 8*ep^3*(9 + 26*nu + 24*nu^2) - 
           8*ep^4*(-3 - 8*nu^2 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             4*nu*(-6 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
           (1 + 2*nu)*(-1 - 2*nu + 8*nu^3 + 4*nu^2*(1 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])) + 2*ep*(-4 + 32*nu^4 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-14 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2]) + 16*nu^3*(-1 + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2]) + nu^2*(-52 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
           2*ep^2*(-2 - 64*nu^4 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             32*nu^3*(-9 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
             4*nu^2*(-61 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
             2*nu*(-38 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
        Log[2 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - x^2 - 4*ep^2*x^2 + 
          ep*(2 - 4*x^2)])/((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
        (-2*ep^2 + (1 + 2*nu)^2))))/(1 + 2*ep)^2), 
  (2 + 6*nu + 4*nu^2)/(-1 + x^2) - 4*(1 + 2*nu)^2*(b0 + 2*nu)*Log[x] - 
   (2*(1 + 11*nu + 32*ep^4*nu + 26*nu^2 + 16*nu^3 + 
      8*ep^3*(1 + 15*nu + 12*nu^2) + 2*ep^2*(3 + 57*nu + 86*nu^2 + 24*nu^3) + 
      ep*(1 + 35*nu + 58*nu^2 - 16*nu^3 - 32*nu^4) + 
      b0*(1 + 2*ep)*(3 + 8*ep^3 + 9*nu + 6*nu^2 + 20*ep^2*(1 + nu) + 
        2*ep*(7 + 15*nu + 6*nu^2)))*Log[1 - x^2])/
    ((1 + 2*ep)*(2*ep^2 - (1 + 2*nu)^2)) - 
   ((1 + nu)*(192*ep^5*nu + ep*(9 + 140*nu^2 - 128*nu^5 - 
        3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(116 - 46*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        64*nu^4*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        32*nu^3*(-4 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
      (1 + 2*nu)*(16*nu^4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        8*nu^3*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        8*nu^2*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        nu*(-4 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      4*ep^2*(9 + 64*nu^5 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(128 - 45*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        32*nu^4*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        20*nu^3*(5 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        2*nu^2*(-94 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
      16*ep^4*(-1 + 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        4*nu^2*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        nu*(-41 + 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
      4*ep^3*(-11 - 32*nu^3 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        4*nu^2*(-53 + 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        nu*(-216 + 94*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      b0*(96*ep^5 - 8*ep^4*(-41 + 8*nu^2 + 
          14*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        8*ep^3*(-48 - 8*nu^2 + 21*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu*(-13 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(3 - 8*nu^3 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-6 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        2*ep*(20 - 32*nu^4 - 11*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(20 - 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^3*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-13 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        2*ep^2*(96 + 64*nu^4 - 45*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          32*nu^3*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          6*nu*(-24 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(52 + 64*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
     Log[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
       2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - x^2 - 4*ep*x^2 - 4*ep^2*x^2])/
    ((1 + 2*ep)^2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(2*ep^2 - (1 + 2*nu)^2)) - 
   ((1 + nu)*(192*ep^5*nu - (1 + 2*nu)*(16*nu^4 - 
        Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        8*nu^2*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        8*nu^3*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        2*nu*(2 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      16*ep^4*(1 - 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        4*nu^2*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        nu*(41 + 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      ep*(140*nu^2 - 128*nu^5 + 3*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        64*nu^4*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        32*nu^3*(4 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*nu*(58 + 23*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      4*ep^2*(9 + 64*nu^5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        32*nu^4*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        20*nu^3*(-5 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*nu^2*(94 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        nu*(128 + 45*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      4*ep^3*(11 + 32*nu^3 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        4*nu^2*(53 + 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        nu*(216 + 94*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      b0*(96*ep^5 + 8*ep^4*(41 - 8*nu^2 + 14*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        (1 + 2*nu)*(-3 + 8*nu^3 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(6 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        8*ep^3*(48 + 8*nu^2 + 21*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu*(13 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        2*ep^2*(96 + 64*nu^4 + 45*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^2*(52 - 64*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          32*nu^3*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          6*nu*(24 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        2*ep*(-20 + 32*nu^4 - 11*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          16*nu^3*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(10 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(13 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
     Log[2 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
       2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - x^2 - 4*ep^2*x^2 + 
       ep*(2 - 4*x^2)])/((1 + 2*ep)^2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
     (-2*ep^2 + (1 + 2*nu)^2)), 
  (2*ep*(2*(1 + 2*ep)^2*(ep + 2*nu + 10*ep*nu + 8*ep^2*nu + 4*nu^2 + 
       8*ep*nu^2 + b0*(1 + 2*ep)*(1 + 2*ep + 2*nu))*Log[-1 + x^2] - 
     (ep^3*(4 + 64*nu + 64*nu^2) - 2*nu*(-1 + 8*nu^2 + 8*nu^3) + 
       4*ep^2*(1 + 18*nu + 30*nu^2 + 16*nu^3) + 
       ep*(1 + 22*nu + 24*nu^2 - 48*nu^3 - 64*nu^4) + 
       b0*(1 - 8*nu^2 - 8*nu^3 + 4*ep^3*(7 + 8*nu) + 
         4*ep^2*(8 + 15*nu + 8*nu^2) - 2*ep*(-5 - 6*nu + 12*nu^2 + 16*nu^3)))*
      Log[-1 + 4*(1 + ep + 2*nu + 2*nu^2)*x^2 - (1 + 2*ep)^2*x^4] + 
     ((1 + 8*nu + 48*ep^4*nu + 8*nu^2 - 24*nu^3 - 48*nu^4 - 32*nu^5 + 
        4*ep^3*(1 + 42*nu + 64*nu^2 + 32*nu^3) + 
        4*ep^2*(2 + 41*nu + 86*nu^2 + 68*nu^3 + 32*nu^4) + 
        ep*(5 + 60*nu + 100*nu^2 - 32*nu^3 - 160*nu^4 - 128*nu^5) + 
        2*b0*(1 + 12*ep^4 + nu - 6*nu^2 - 12*nu^3 - 8*nu^4 + 
          ep^3*(38 + 60*nu + 32*nu^2) + ep^2*(33 + 78*nu + 68*nu^2 + 
            32*nu^3) - 2*ep*(-5 - 10*nu + 4*nu^2 + 20*nu^3 + 16*nu^4)))*
       (-Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
            ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] + 
        Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
      Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))/((1 + 2*ep)^2*(1 + 2*nu)*
    (2*ep^2 - (1 + 2*nu)^2)), (-8*(2*ep + nu))/(-1 + x^2) - 
   8*(b0 + 2*nu)*(1 + 4*nu)*Log[x] - 
   (4*(b0*(1 + 2*ep)*(3 + 14*ep^2 + 8*nu + 4*nu^2 + 4*ep*(3 + 4*nu)) + 
      2*(4*ep^3*(1 + 9*nu) + nu*(3 + 8*nu + 4*nu^2) + 
        ep^2*(4 + 46*nu + 32*nu^2) + ep*(-1 + 8*nu + 8*nu^2 - 8*nu^3)))*
     Log[1 - x^2])/((1 + 2*ep)*(2*ep^2 - (1 + 2*nu)^2)) + 
   (4*(-96*ep^5*nu + (1 + 2*nu)*(-1 + 16*nu^4 + 
        2*nu*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        8*nu^3*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        4*nu^2*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      8*ep^4*(1 + 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        4*nu^2*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*nu*(-9 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
      ep*(9 - 128*nu^5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(88 - 10*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        32*nu^4*(-3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*nu^2*(41 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        16*nu^3*(3 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
      2*ep^2*(9 + 64*nu^5 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        12*nu^2*(-22 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        32*nu^4*(8 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        6*nu*(-21 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        8*nu^3*(35 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      4*ep^3*(-1 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        12*nu^2*(-5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        nu*(-62 + 34*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      b0*(-48*ep^5 + (1 + 2*nu)*(-2 + 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 
            4*nu^2] - 4*nu^2*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        8*ep^4*(-11 + 4*nu^2 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^3*(-29 + 14*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu*(-7 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        2*ep^2*(41 + 32*nu^4 - 18*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(94 - 18*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^3*(7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(27 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(-22 + 64*nu^4 + 10*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^2*(8 - 32*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          32*nu^3*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-44 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
     Log[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
       2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - x^2 - 4*ep*x^2 - 4*ep^2*x^2])/
    ((1 + 2*ep)^2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(2*ep^2 - (1 + 2*nu)^2)) + 
   (4*(96*ep^5*nu - (1 + 2*nu)*(-1 + 16*nu^4 + 
        4*nu^2*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        8*nu^3*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        2*nu*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      8*ep^4*(-1 - 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        4*nu^2*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*nu*(9 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
      ep*(-9 + 128*nu^5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        4*nu^2*(-41 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        32*nu^4*(3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        16*nu^3*(-3 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        2*nu*(44 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      2*ep^2*(9 + 64*nu^5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        32*nu^4*(-8 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        12*nu^2*(22 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        6*nu*(21 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        8*nu^3*(-35 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      4*ep^3*(1 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        12*nu^2*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        nu*(62 + 34*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      b0*(48*ep^5 + 8*ep^4*(11 - 4*nu^2 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        (1 + 2*nu)*(-2 + 8*nu^3 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^3*(29 + 14*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu*(7 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        2*ep*(-11 + 32*nu^4 - 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          16*nu^3*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(11 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(1 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep^2*(82 + 64*nu^4 + 36*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          32*nu^3*(-7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          8*nu^2*(-27 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu*(47 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))))*
     Log[2 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
       2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - x^2 - 4*ep^2*x^2 + 
       ep*(2 - 4*x^2)])/((1 + 2*ep)^2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
     (2*ep^2 - (1 + 2*nu)^2)), (-I)*((-2*x)/(-1 + x^2) - Log[1 - x] + 
    Log[1 + x])}, {0, 0, 0, 0, 0, -2*(1 + 2*nu)*Log[x], 0, 0, -4*Log[x], 0, 
  0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, -2*Log[x], 
  2*Log[x], 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, (2 + 4*nu)*Log[x], 
  0, 0, 0, 4*Log[x], 0, 0, 0, 0, 0, 0, 0}, 
 {-1/8*(((8*ep^3 - 16*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*nu^2*(-3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*ep^2*(3 - 4*nu + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*ep*(4 + 12*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          6*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] + 
     ((-8*ep^3 + 16*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*nu^2*(3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*ep^2*(-3 + 4*nu + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        2*ep*(4 + 12*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          6*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])/
    ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]), 0, 0, 0, 
  (((4*ep^2 + 8*ep^3 + 2*ep*(-4 - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       (3 + 4*nu)*(-2 - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
            Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                4*nu + 4*nu^2])]] - 
       Log[1 + (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
            Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                4*nu + 4*nu^2])]]))/Sqrt[-2 - 2*ep - 4*nu^2 + 
       Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
       2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] + 
    ((-4*ep^2 - 8*ep^3 + (3 + 4*nu)*(2 + 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       2*ep*(4 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
            Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
          Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
            2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
     Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
       2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])/
   (8*(1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]), 
  -1/4*(nu*(1 + 2*nu)*(-8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       (-2*ep^2 + (1 + 2*nu)^2)*Log[x] + 2*(2 - 4*ep^2 + 5*nu + 4*ep*nu + 
        2*nu^2)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Log[1 - x^2] + 
      nu*(-4*ep^2 + ep*(-2 + 8*nu - 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        (1 + 2*nu)*(3 - 2*nu + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       Log[-2 - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + x^2 + 4*ep^2*x^2 + 
         ep*(-2 + 4*x^2)] + 
      nu*(4*ep^2 + ep*(2 - 8*nu - 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        (1 + 2*nu)*(-3 + 2*nu + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       Log[-2 - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + x^2 + 4*ep^2*x^2 + 
         ep*(-2 + 4*x^2)]))/(Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
     (-2*ep^2 + (1 + 2*nu)^2)), 0, 
  ((1 + 3*nu + 2*nu^2)^2*(2*Log[-1 + x^2] - 
     Log[-1 + 4*(1 + ep + 2*nu + 2*nu^2)*x^2 - (1 + 2*ep)^2*x^4] + 
     ((2*ep - 4*ep^2 + 3*(1 + 2*nu)^2)*
       (-Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
            ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] + 
        Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))/
   (4*(2*ep^2 - (1 + 2*nu)^2)), 
  (32*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)*Log[x] - 
    2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-16*ep^3 + (1 + 2*nu)^2*(3 + 2*nu) + 
      ep^2*(-4 + 8*nu) + 8*ep*(1 + 3*nu + 2*nu^2))*Log[1 - x^2] - 
    (-8*ep^3*(1 + 4*nu) + 2*ep*(1 + 2*nu)*(3 + 8*nu^2 + 
        2*nu*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
      4*ep^2*(1 - 8*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(4 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      (1 + 2*nu)^2*(3 - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(8 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     Log[-2 - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
       2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + x^2 + 4*ep^2*x^2 + 
       ep*(-2 + 4*x^2)] + (-8*ep^3*(1 + 4*nu) + 2*ep*(1 + 2*nu)*
       (3 + 8*nu^2 + nu*(14 - 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
      (1 + 2*nu)^2*(-3 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(-8 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      4*ep^2*(-1 + 8*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(-4 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     Log[-2 - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
       2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + x^2 + 4*ep^2*x^2 + 
       ep*(-2 + 4*x^2)])/(8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
    (-2*ep^2 + (1 + 2*nu)^2)), 0, 0, 
  ((1 + 2*nu)*(2*(3 - 4*ep - 4*ep^2 + 8*nu + 4*nu^2)*Log[-1 + x^2] + 
     (-3 + 4*ep + 4*ep^2 - 8*nu - 4*nu^2)*
      Log[-1 + 4*(1 + ep + 2*nu + 2*nu^2)*x^2 - (1 + 2*ep)^2*x^4] + 
     ((8*ep^3*(3 + 4*nu) - 4*ep^2*(3 + 8*nu + 8*nu^2) + 
        (1 + 2*nu)^2*(3 + 16*nu + 12*nu^2) - 2*ep*(7 + 40*nu + 68*nu^2 + 
          32*nu^3))*(-Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + 
             ep*(2 - 4*x^2))/((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] + 
        Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))/
   (8*(2*ep^2 - (1 + 2*nu)^2)), 
  ((1 + 2*ep)*(1 + 2*nu)*(2*(-1 + 2*ep - 2*nu)*Log[-1 + x^2] + 
     (1 - 2*ep + 2*nu)*Log[-1 + 4*(1 + ep + 2*nu + 2*nu^2)*x^2 - 
        (1 + 2*ep)^2*x^4] + ((-3 + 4*ep^2 - 8*nu - 4*ep*nu - 4*nu^2)*
       (Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] - 
        Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
      Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))/(8*(2*ep^2 - (1 + 2*nu)^2)), 0, 
  ((I/2)*((8*ep^3 - 20*ep^2*nu + 3*nu*(1 + 2*nu) + 2*ep*(-2 - 3*nu + 6*nu^2))*
      Log[1 - x] + (-8*ep^3 + 20*ep^2*nu - 3*nu*(1 + 2*nu) + 
       ep*(4 + 6*nu - 12*nu^2))*Log[1 + x] + 
     ((I/2)*(1 + 2*ep)*nu*(16*ep^3 + 4*ep^2*(3 - 8*nu + 
          4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - (1 + 2*nu)*
         (3 + 8*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(2 - 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        2*ep*(6 - 12*nu^2 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(6 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(1 + 2*ep)*nu*(-16*ep^3 + 4*ep^2*(-3 + 8*nu + 
          4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + (1 + 2*nu)*
         (3 + 8*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(2 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        2*ep*(-6 + 12*nu^2 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-6 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   (2*ep^2 - (1 + 2*nu)^2), ((I/2)*(1 + 3*nu + 2*nu^2)*
    (-((3 + 2*ep + 4*nu)*Log[1 - x]) + (3 + 2*ep + 4*nu)*Log[1 + x] + 
     ((I/2)*(1 + 2*ep)*(-4*ep^2 + 16*ep^3 + (3 + 10*nu + 8*nu^2)*
         (-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*ep*(-8 - 20*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-12 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(1 + 2*ep)*(4*ep^2 - 16*ep^3 + (3 + 10*nu + 8*nu^2)*
         (1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*ep*(8 + 20*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(12 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   (2*ep^2 - (1 + 2*nu)^2), 
  ((-I)*ep*(1 + 2*ep)*((-1 + 2*ep - 2*nu)*Log[1 - x] + 
     (1 - 2*ep + 2*nu)*Log[1 + x] + 
     ((I/2)*(-4*ep^2 + (1 + 2*nu)*(3 + 8*nu^2 - Sqrt[3 + 4*ep + 4*nu + 
            4*nu^2] + nu*(6 - 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(2 - 8*nu^2 + 4*nu*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(4*ep^2 + ep*(-2 + 8*nu^2 + 
          4*nu*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        (1 + 2*nu)*(3 + 8*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(6 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   ((1 + 2*nu)*(-2*ep^2 + (1 + 2*nu)^2)), 
  ((-I)*((-1 + 14*ep^2 + 4*nu^2 - 4*ep*(1 + 4*nu))*Log[1 - x] + 
     (1 - 14*ep^2 - 4*nu^2 + 4*ep*(1 + 4*nu))*Log[1 + x] - 
     (I*(1 + 2*ep)*(8*ep^3 + 4*ep^2*(1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
            4*nu^2]) - 2*ep*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(-3 - 8*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(-6 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) - 
     (I*(1 + 2*ep)*(-8*ep^3 + 4*ep^2*(-1 + 2*nu + 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        2*ep*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(3 + 8*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(6 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   (2*ep^2 - (1 + 2*nu)^2), 0}, 
 {((I/8)*((2*(ep - nu)*(-Log[1 - Sqrt[1 + 2*ep]*x] + 
        Log[1 + Sqrt[1 + 2*ep]*x]))/Sqrt[1 + 2*ep] + 
     ((I/2)*(3 + 32*nu^4 + 16*ep^3*(1 + nu) - 
        Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu^2*(48 - 20*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*ep^2*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        8*nu^3*(-7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        2*nu*(-9 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*ep*(1 - 4*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu^2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(-3 - 32*nu^4 - 16*ep^3*(1 + nu) - 
        Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        4*ep^2*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        8*nu^3*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        2*nu*(9 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        4*nu^2*(12 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*ep*(-1 + 4*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu^2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/(1 + nu), 
  ((-1/16*I)*(1 + 2*ep)*(1 + 2*nu)*(Log[1 - x] - Log[1 + x] + 
     Sqrt[1 + 2*ep]*(-Log[1 - Sqrt[1 + 2*ep]*x] + 
       Log[1 + Sqrt[1 + 2*ep]*x])))/(ep*(1 + nu)), 
  ((I/4)*Sqrt[1 + 2*ep]*(Log[1 - Sqrt[1 + 2*ep]*x] - 
     Log[1 + Sqrt[1 + 2*ep]*x]))/(1 + nu), 
  ((-1/16*I)*(1 + 2*ep)*(1 + 2*nu)*((1 + 2*ep)*(Log[1 - x] - Log[1 + x]) + 
     Sqrt[1 + 2*ep]*(-Log[1 - Sqrt[1 + 2*ep]*x] + 
       Log[1 + Sqrt[1 + 2*ep]*x])))/(ep*(1 + nu)), 
  ((I/8)*((2*(1 + ep + nu)*(-Log[1 - Sqrt[1 + 2*ep]*x] + 
        Log[1 + Sqrt[1 + 2*ep]*x]))/Sqrt[1 + 2*ep] + 
     ((I/2)*(-16*ep^3*(1 + nu) + 4*ep^2*(-11 - 8*nu^2 + 
          3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu*(-5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (3 + 4*nu)*(-5 - 8*nu^3 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(-7 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep*(-11 - 12*nu^3 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^2*(-32 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-32 + 11*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(16*ep^3*(1 + nu) + 4*ep^2*(11 + 8*nu^2 + 
          3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu*(5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (3 + 4*nu)*(5 + 8*nu^3 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(7 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep*(11 + 12*nu^3 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^2*(32 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(32 + 11*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/(1 + nu), 
  -1/4*(nu^2*(1 + 2*nu)^2*(-(((1 + 2*(1 + ep)*nu)*Log[-1 + x^2])/
        (ep*(2*ep^2 - (1 + 2*nu)^2))) - Log[-1 + x^2 + 2*ep*x^2]/
       (ep + 2*ep*nu) - ((ep + nu + 2*nu^2)*
        Log[-1 + 4*(1 + ep + 2*nu + 2*nu^2)*x^2 - (1 + 2*ep)^2*x^4])/
       ((1 + 2*nu)*(-2*ep^2 + (1 + 2*nu)^2)) + 
      ((3 + ep + 13*nu + 4*ep*nu + 20*nu^2 + 12*nu^3 - 4*ep^2*(1 + nu))*
        (-Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
             ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] + 
         Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
            ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
       ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2))))/
    (1 + nu), 0, -1/4*((1 + nu)*(1 + 2*nu)^2*
    (((1 + 4*ep^2 + 2*nu + ep*(4 + 6*nu))*Log[-1 + x^2])/
      (ep*(2*ep^2 - (1 + 2*nu)^2)) + Log[-1 + x^2 + 2*ep*x^2]/
      (ep + 2*ep*nu) + ((2 + 7*nu + 6*nu^2 + ep*(3 + 4*nu))*
       Log[-1 + 4*(1 + ep + 2*nu + 2*nu^2)*x^2 - (1 + 2*ep)^2*x^4])/
      ((1 + 2*nu)*(-2*ep^2 + (1 + 2*nu)^2)) + 
     ((3 + 11*nu + 12*nu^2 + 4*nu^3 + 4*ep^2*(1 + nu) + 
        ep*(7 + 16*nu + 8*nu^2))*
       (Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] - 
        Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)))), 
  ((1 + 2*nu)*((-2*(-(nu*(1 + 2*nu)^2) + ep^3*(2 + 4*nu) + ep^2*(3 + 8*nu) + 
        ep*(1 + nu - 4*nu^2 - 4*nu^3))*Log[-1 + x^2])/
      (ep*(2*ep^2 - (1 + 2*nu)^2)) + (2*nu*(1 + 2*ep + 2*nu)*
       Log[-1 + x^2 + 2*ep*x^2])/(ep + 2*ep*nu) - 
     ((3*ep*(1 + 2*nu)^2 - (-1 + nu)*(1 + 2*nu)^3 + ep^2*(2 + 4*nu + 8*nu^2))*
       Log[-1 + 4*(1 + ep + 2*nu + 2*nu^2)*x^2 - (1 + 2*ep)^2*x^4])/
      ((1 + 2*nu)*(-2*ep^2 + (1 + 2*nu)^2)) + 
     ((-8*ep^3*(1 + 5*nu + 4*nu^2) + nu*(1 + 2*nu)^2*(7 + 16*nu + 12*nu^2) - 
        2*ep^2*(5 + 20*nu + 24*nu^2 + 16*nu^3) + 
        ep*(-3 + 4*nu + 60*nu^2 + 112*nu^3 + 64*nu^4))*
       (Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] - 
        Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2))))/
   (8*(1 + nu)), (8*ep*nu*Log[x] - (1 + 2*ep)*(1 + 4*ep + 2*nu)*
     Log[1 - x^2] + (1 + 2*ep + 2*nu)*Log[1 - (1 + 2*ep)*x^2])/(4*ep), 
  (nu*(-8*ep*(1 + nu)*Log[x] + (1 + 2*ep)*(1 + 2*nu)*Log[1 - x^2] + 
     (-1 + 2*ep - 2*nu)*Log[1 - (1 + 2*ep)*x^2]))/(4*ep*(1 + nu)), 
  ((1 + 2*nu)*((2*(-((1 + nu)*(1 + 2*nu)^2) + 2*ep^3*(5 + 6*nu) + 
        ep^2*(7 + 16*nu + 8*nu^2) - ep*(1 + 9*nu + 20*nu^2 + 12*nu^3))*
       Log[-1 + x^2])/(ep*(2*ep^2 - (1 + 2*nu)^2)) + 
     (2*(-1 + 2*ep - 2*nu)*(1 + nu)*Log[-1 + x^2 + 2*ep*x^2])/
      (ep + 2*ep*nu) + ((-3*(1 + nu)*(1 + 2*nu)^3 + ep*(1 + 2*nu)^2*
         (5 + 4*nu) + 2*ep^2*(7 + 18*nu + 12*nu^2))*
       Log[-1 + 4*(1 + ep + 2*nu + 2*nu^2)*x^2 - (1 + 2*ep)^2*x^4])/
      ((1 + 2*nu)*(-2*ep^2 + (1 + 2*nu)^2)) + 
     ((-8*ep^3*(3 + 7*nu + 4*nu^2) + (1 + 2*nu)^2*(6 + 17*nu + 16*nu^2 + 
          4*nu^3) - 2*ep^2*(15 + 48*nu + 48*nu^2 + 16*nu^3) + 
        ep*(-1 + 8*nu + 44*nu^2 + 64*nu^3 + 32*nu^4))*
       (-Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
            ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] + 
        Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2))))/
   (8*(1 + nu)), ((1 + 2*ep)*(1 + 2*nu)^2*(-2*(1 + ep + nu)*Log[-1 + x^2] + 
     (1 + ep + nu)*Log[-1 + 4*(1 + ep + 2*nu + 2*nu^2)*x^2 - 
        (1 + 2*ep)^2*x^4] + ((4*ep^2*(1 + nu) - nu*(1 + 2*nu)^2 + 
        ep*(3 + 6*nu + 4*nu^2))*
       (Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] - 
        Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))/
   (8*(1 + nu)*(2*ep^2 - (1 + 2*nu)^2)), 0, 
  ((-1/2*I)*nu*((-1 + 4*ep^2 - 5*nu - 10*nu^2 - 8*nu^3 + 
       ep*(-1 - 2*nu + 4*nu^2))*Log[1 - x] + 
     (1 + ep - 4*ep^2 + 5*nu + 2*ep*nu + 10*nu^2 - 4*ep*nu^2 + 8*nu^3)*
      Log[1 + x] - ((I/2)*(1 + 2*ep)*(16*ep^3*(1 + nu) + 
        4*ep^2*(-3*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        (1 + 2*nu)*(8*nu^3 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^2*(10 - 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(5 - 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(-9 - 40*nu^3 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(-14 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(19 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(1 + 2*ep)*(16*ep^3*(1 + nu) - 
        4*ep^2*(3*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        ep*(-9 - 40*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-19 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          4*nu^2*(14 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu^2*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(5 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   ((1 + nu)*(2*ep^2 - (1 + 2*nu)^2)), 
  ((I/2)*((1 + 8*ep^3 + 3*nu + 2*nu^2 + 4*ep^2*(4 + 5*nu) + 
       ep*(9 + 22*nu + 12*nu^2))*Log[1 - x] - 
     (1 + 8*ep^3 + 3*nu + 2*nu^2 + 4*ep^2*(4 + 5*nu) + 
       ep*(9 + 22*nu + 12*nu^2))*Log[1 + x] + 
     ((I/2)*(1 + 2*ep)*(16*ep^3*(1 + nu) + 
        ep*(23 + 24*nu^3 - 13*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(78 - 38*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(80 - 28*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        (3 + 10*nu + 8*nu^2)*(-2 - 2*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        4*ep^2*(-8 - 8*nu^2 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(-17 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) - 
     ((I/2)*(1 + 2*ep)*(16*ep^3*(1 + nu) + (3 + 10*nu + 8*nu^2)*
         (2 + 2*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^2*(8 + 8*nu^2 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(17 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(23 + 24*nu^3 + 13*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(20 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(78 + 38*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   (2*ep^2 - (1 + 2*nu)^2), 
  ((-I)*ep*(1 + 2*ep)*(-((1 + ep + nu)*Log[1 - x]) + 
     (1 + ep + nu)*Log[1 + x] + 
     ((I/2)*(-4*ep^2*(1 + nu) + ep*(-7 - 8*nu^3 + 
          3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(-7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(-3 - 8*nu^3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu^2*(-7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-11 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(4*ep^2*(1 + nu) + ep*(7 + 8*nu^3 + 
          3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          8*nu*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(3 + 8*nu^3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu^2*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(11 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   ((1 + nu)*(-2*ep^2 + (1 + 2*nu)^2)), 
  ((-I)*(-((2 + 7*nu + 8*nu^2 + 4*nu^3 + 2*ep^2*(4 + 7*nu) + 
        2*ep*(5 + 14*nu + 8*nu^2))*Log[1 - x]) + 
     (2 + 7*nu + 8*nu^2 + 4*nu^3 + 2*ep^2*(4 + 7*nu) + 
       2*ep*(5 + 14*nu + 8*nu^2))*Log[1 + x] - 
     (I*(1 + 2*ep)*(8*ep^3*(1 + nu) + 
        ep*(7 - 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(22 - 14*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(20 - 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(3 + 8*nu^3 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(11 - 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(14 - 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        2*ep^2*(-5 - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     (I*(1 + 2*ep)*(8*ep^3*(1 + nu) + 2*ep^2*(5 + 4*nu^2 + 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(3 + 8*nu^3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu^2*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(11 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(7 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(11 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   ((1 + nu)*(2*ep^2 - (1 + 2*nu)^2)), 0}, 
 {((-1/8*I)*((2*(ep - nu)*(Log[1 - Sqrt[1 + 2*ep]*x] - 
        Log[1 + Sqrt[1 + 2*ep]*x]))/Sqrt[1 + 2*ep] + 
     ((I/2)*(16*ep^3*nu + 4*ep*(1 + 12*nu^3 + 
          nu^2*(4 - 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          nu*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 4*nu)*(-1 - 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^2*(1 - 8*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(-16*ep^3*nu + 4*ep^2*(-1 + 8*nu^2 + 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 4*nu)*(1 + 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        4*ep*(1 + 12*nu^3 + nu*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(4 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/nu, 
  ((-1/16*I)*(1 + 2*ep)*(1 + 2*nu)*((1 + 2*ep)*(Log[1 - x] - Log[1 + x]) + 
     Sqrt[1 + 2*ep]*(-Log[1 - Sqrt[1 + 2*ep]*x] + 
       Log[1 + Sqrt[1 + 2*ep]*x])))/(ep*nu), 
  ((I/4)*Sqrt[1 + 2*ep]*(Log[1 - Sqrt[1 + 2*ep]*x] - 
     Log[1 + Sqrt[1 + 2*ep]*x]))/nu, 
  ((-1/16*I)*(1 + 2*ep)*(1 + 2*nu)*(Log[1 - x] - Log[1 + x] + 
     Sqrt[1 + 2*ep]*(-Log[1 - Sqrt[1 + 2*ep]*x] + 
       Log[1 + Sqrt[1 + 2*ep]*x])))/(ep*nu), 
  ((I/8)*((2*(1 + ep + nu)*(-Log[1 - Sqrt[1 + 2*ep]*x] + 
        Log[1 + Sqrt[1 + 2*ep]*x]))/Sqrt[1 + 2*ep] + 
     ((I/2)*(-9 + 16*ep^3*nu - 32*nu^4 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        4*ep^2*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        8*nu^3*(-9 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*nu^2*(-18 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*nu*(-19 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*ep*(-5 - 4*nu^3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu^2*(-6 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          3*nu*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(9 - 16*ep^3*nu + 32*nu^4 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        4*ep^2*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        8*nu^3*(9 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*nu^2*(18 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*nu*(19 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*ep*(5 + 4*nu^3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          3*nu*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(6 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/nu, 
  (nu*(1 + 2*nu)^2*(((1 - 4*ep^2 + 2*nu + ep*(2 + 6*nu))*Log[-1 + x^2])/
      (ep*(2*ep^2 - (1 + 2*nu)^2)) + Log[-1 + x^2 + 2*ep*x^2]/
      (ep + 2*ep*nu) + ((1 + 5*nu + 6*nu^2 - ep*(1 + 4*nu))*
       Log[-1 + 4*(1 + ep + 2*nu + 2*nu^2)*x^2 - (1 + 2*ep)^2*x^4])/
      ((1 + 2*nu)*(-2*ep^2 + (1 + 2*nu)^2)) + 
     ((ep - nu + 4*ep^2*nu - 8*ep*nu^2 + 4*nu^3)*
       (Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] - 
        Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2))))/
   4, 0, ((1 + 3*nu + 2*nu^2)^2*(-(((1 + 2*nu + 2*ep*(1 + nu))*Log[-1 + x^2])/
       (ep*(2*ep^2 - (1 + 2*nu)^2))) - Log[-1 + x^2 + 2*ep*x^2]/
      (ep + 2*ep*nu) - ((1 + ep + 3*nu + 2*nu^2)*
       Log[-1 + 4*(1 + ep + 2*nu + 2*nu^2)*x^2 - (1 + 2*ep)^2*x^4])/
      ((1 + 2*nu)*(-2*ep^2 + (1 + 2*nu)^2)) + 
     ((2 + 9*nu - 4*ep^2*nu + 16*nu^2 + 12*nu^3 + ep*(3 + 4*nu))*
       (-Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
            ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] + 
        Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2))))/
   (4*nu), 
  -1/8*((1 + 2*nu)*((2*(-(nu*(1 + 2*nu)^2) + 2*ep^3*(1 + 6*nu) + 
         ep^2*(1 - 8*nu^2) - ep*nu*(5 + 16*nu + 12*nu^2))*Log[-1 + x^2])/
       (ep*(2*ep^2 - (1 + 2*nu)^2)) - (2*nu*(1 + 2*ep + 2*nu)*
        Log[-1 + x^2 + 2*ep*x^2])/(ep + 2*ep*nu) + 
      ((-3*nu*(1 + 2*nu)^3 - ep*(1 + 2*nu)^2*(-1 + 4*nu) + 
         2*ep^2*(1 + 6*nu + 12*nu^2))*Log[-1 + 4*(1 + ep + 2*nu + 2*nu^2)*
           x^2 - (1 + 2*ep)^2*x^4])/((1 + 2*nu)*(-2*ep^2 + (1 + 2*nu)^2)) + 
      ((8*ep^3*nu*(1 + 4*nu) + (1 + 2*nu)^2*(-1 - 3*nu - 4*nu^2 + 4*nu^3) - 
         2*ep^2*(1 + 16*nu^3) - ep*(3 + 16*nu + 44*nu^2 + 64*nu^3 + 32*nu^4))*
        (-Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
             ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] + 
         Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
            ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
       ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2))))/
    nu, ((1 + nu)*(8*ep*nu*Log[x] - (1 + 2*ep)*(1 + 2*nu)*Log[1 - x^2] + 
     (1 + 2*ep + 2*nu)*Log[1 - (1 + 2*ep)*x^2]))/(4*ep*nu), 
  (-8*ep*(1 + nu)*Log[x] - (1 + 2*ep)*(-1 + 4*ep - 2*nu)*Log[1 - x^2] + 
    (-1 + 2*ep - 2*nu)*Log[1 - (1 + 2*ep)*x^2])/(4*ep), 
  ((1 + 2*nu)*((2*(-((1 + nu)*(1 + 2*nu)^2) + ep^3*(2 + 4*nu) + 
        ep^2*(5 + 8*nu) - ep*nu*(3 + 8*nu + 4*nu^2))*Log[-1 + x^2])/
      (ep*(2*ep^2 - (1 + 2*nu)^2)) + (2*(-1 + 2*ep - 2*nu)*(1 + nu)*
       Log[-1 + x^2 + 2*ep*x^2])/(ep + 2*ep*nu) + 
     ((3*ep*(1 + 2*nu)^2 - (2 + nu)*(1 + 2*nu)^3 + 
        2*ep^2*(3 + 6*nu + 4*nu^2))*Log[-1 + 4*(1 + ep + 2*nu + 2*nu^2)*x^2 - 
         (1 + 2*ep)^2*x^4])/((1 + 2*nu)*(-2*ep^2 + (1 + 2*nu)^2)) + 
     ((8*ep^3*nu*(3 + 4*nu) + (1 + 2*nu)^2*(3 + 11*nu + 20*nu^2 + 12*nu^3) - 
        2*ep^2*(7 + 20*nu + 24*nu^2 + 16*nu^3) - 
        ep*(5 + 36*nu + 108*nu^2 + 144*nu^3 + 64*nu^4))*
       (-Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
            ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] + 
        Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2))))/
   (8*nu), ((1 + 2*ep)*(1 + 2*nu)^2*(2*(-ep + nu)*Log[-1 + x^2] + 
     (ep - nu)*Log[-1 + 4*(1 + ep + 2*nu + 2*nu^2)*x^2 - (1 + 2*ep)^2*x^4] + 
     ((-4*ep^2*nu + (1 + nu)*(1 + 2*nu)^2 + ep*(1 + 2*nu + 4*nu^2))*
       (Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] - 
        Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))/
   (8*nu*(2*ep^2 - (1 + 2*nu)^2)), 0, 
  ((-1/2*I)*((8*ep^3 + nu*(1 + 2*nu) - 4*ep^2*(1 + 5*nu) + 
       ep*(-1 + 2*nu + 12*nu^2))*Log[1 - x] - 
     (8*ep^3 + nu*(1 + 2*nu) - 4*ep^2*(1 + 5*nu) + ep*(-1 + 2*nu + 12*nu^2))*
      Log[1 + x] + ((I/2)*(1 + 2*ep)*(16*ep^3*nu - (1 + 6*nu + 8*nu^2)*
         (1 + nu + 2*nu^2 - nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*ep^2*(1 + nu - 8*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        ep*(1 - 24*nu^3 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(2 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(5 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(1 + 2*ep)*(-16*ep^3*nu + (1 + 6*nu + 8*nu^2)*
         (1 + nu + 2*nu^2 + nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*ep^2*(-1 + 8*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(-1 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(1 - 24*nu^3 - 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^2*(8 - 28*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(-5 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   (2*ep^2 - (1 + 2*nu)^2), 
  ((-1/2*I)*(1 + nu)*(-((2 + 4*ep^2 + 9*nu + 14*nu^2 + 8*nu^3 + 
        ep*(5 + 10*nu + 4*nu^2))*Log[1 - x]) + 
     (2 + 4*ep^2 + 9*nu + 14*nu^2 + 8*nu^3 + ep*(5 + 10*nu + 4*nu^2))*
      Log[1 + x] + ((I/2)*(1 + 2*ep)*(16*ep^3*nu + 
        4*ep^2*(-3 - 3*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        ep*(-13 - 40*nu^3 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(-16 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(-23 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(-3 - 8*nu^3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu^2*(-7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-9 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(1 + 2*ep)*(-16*ep^3*nu + 4*ep^2*(3 + 3*nu + 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + (1 + 2*nu)*
         (3 + 8*nu^3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu^2*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(9 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(13 + 40*nu^3 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(16 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(23 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   (nu*(2*ep^2 - (1 + 2*nu)^2)), 
  (I*ep*(1 + 2*ep)*((ep - nu)*Log[1 - x] + (-ep + nu)*Log[1 + x] + 
     ((I/2)*(-4*ep^2*nu + (1 + 2*nu)*(2 + 8*nu^3 - 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^2*(10 - 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(7 - 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(3 + 8*nu - 8*nu^3 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) - 
     ((I/2)*(-4*ep^2*nu + ep*(3 + 8*nu - 8*nu^3 + 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 4*nu^2*
           (-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(2 + 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu^2*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(7 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   (nu*(-2*ep^2 + (1 + 2*nu)^2)), 
  ((-I)*(-((1 + 3*nu + 4*nu^2 + 4*nu^3 + 2*ep^2*(3 + 7*nu) - 
        2*ep*(-1 + 2*nu + 8*nu^2))*Log[1 - x]) + 
     (1 + 3*nu + 4*nu^2 + 4*nu^3 + 2*ep^2*(3 + 7*nu) - 
       2*ep*(-1 + 2*nu + 8*nu^2))*Log[1 + x] + 
     (I*(1 + 2*ep)*(8*ep^3*nu + 2*ep^2*(-1 - 4*nu^2 + 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*Sqrt[3 + 4*ep + 4*nu + 
             4*nu^2]) - ep*(5 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(9 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(-2 - 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu^2*(-5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-7 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     (I*(1 + 2*ep)*(-8*ep^3*nu + 2*ep^2*(1 + 4*nu^2 + 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*Sqrt[3 + 4*ep + 4*nu + 
             4*nu^2]) + ep*(5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^2*(20 - 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(-9 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(2 + 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu^2*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(7 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   (nu*(2*ep^2 - (1 + 2*nu)^2)), 0}, 
 {(((4*ep^2 + 8*ep^3 + 2*ep*(-4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       (1 + 4*nu)*(2 + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
            Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                4*nu + 4*nu^2])]] - 
       Log[1 + (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
            Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                4*nu + 4*nu^2])]]))/Sqrt[-2 - 2*ep - 4*nu^2 + 
       Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
       2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] + 
    ((-4*ep^2 - 8*ep^3 + 2*ep*(4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
       (1 + 4*nu)*(2 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
            Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
          Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
            2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
     Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
       2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])/
   (8*(1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]), 0, 0, 0, 
  (((-12 - 8*ep^3 - 16*nu^3 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
       4*nu^2*(-9 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       4*ep^2*(-7 - 4*nu + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       2*nu*(-16 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       2*ep*(-16 - 12*nu^2 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         6*nu*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
            Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                4*nu + 4*nu^2])]] - 
       Log[1 + (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
            Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                4*nu + 4*nu^2])]]))/Sqrt[-2 - 2*ep - 4*nu^2 + 
       Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
       2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] + 
    ((12 + 8*ep^3 + 16*nu^3 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
       4*nu^2*(9 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       4*ep^2*(7 + 4*nu + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       2*nu*(16 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       2*ep*(16 + 12*nu^2 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         6*nu*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
            Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
          Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
            2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
     Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
       2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])/
   (8*(1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]), 
  -1/4*(nu^2*(1 + 2*nu)^2*(2*Log[-1 + x^2] - 
      Log[-1 + 4*(1 + ep + 2*nu + 2*nu^2)*x^2 - (1 + 2*ep)^2*x^4] + 
      ((2*ep - 4*ep^2 + 3*(1 + 2*nu)^2)*
        (-Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
             ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] + 
         Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
            ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
       ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))/(2*ep^2 - (1 + 2*nu)^2), 
  0, ((1 + 3*nu + 2*nu^2)*(-8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
      (-2*ep^2 + (1 + 2*nu)^2)*Log[x] - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
      (1 + 4*ep^2 + nu - 2*nu^2 + 4*ep*(1 + nu))*Log[1 - x^2] - 
     (1 + nu)*(4*ep^2 + ep*(10 + 8*nu - 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
       (1 + 2*nu)*(-5 - 2*nu + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
      Log[-2 - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + x^2 + 4*ep^2*x^2 + 
        ep*(-2 + 4*x^2)] + (1 + nu)*(4*ep^2 + 
       2*ep*(5 + 4*nu + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       (1 + 2*nu)*(5 + 2*nu + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
      Log[-2 - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + x^2 + 4*ep^2*x^2 + 
        ep*(-2 + 4*x^2)]))/(4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
    (-2*ep^2 + (1 + 2*nu)^2)), 
  -1/8*((1 + 2*nu)*(-2*(1 + 4*ep + 4*ep^2 - 4*nu^2)*Log[-1 + x^2] + 
      (1 + 4*ep + 4*ep^2 - 4*nu^2)*Log[-1 + 4*(1 + ep + 2*nu + 2*nu^2)*x^2 - 
         (1 + 2*ep)^2*x^4] + 
      ((8*ep^3*(1 + 4*nu) + 4*ep^2*(3 + 8*nu + 8*nu^2) - 
         (1 + 2*nu)^2*(-1 + 8*nu + 12*nu^2) + ep*(6 - 56*nu^2 - 64*nu^3))*
        (Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
            ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] - 
         Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
            ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
       ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))/(2*ep^2 - (1 + 2*nu)^2), 
  0, 0, (-32*(1 + nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)*
     Log[x] + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
     (16*ep^3 - 8*ep*nu*(1 + 2*nu) + (-1 + 2*nu)*(1 + 2*nu)^2 + 
      4*ep^2*(3 + 2*nu))*Log[1 - x^2] - 
    (-8*ep^3*(3 + 4*nu) + (1 + 2*nu)^2*(9 + 4*nu^2 - 
        5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(16 - 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      2*ep*(1 + 2*nu)*(-3 + 8*nu^2 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(2 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      4*ep^2*(-11 - 8*nu^2 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(-20 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     Log[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
       2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - x^2 - 4*ep*x^2 - 4*ep^2*x^2] + 
    (-8*ep^3*(3 + 4*nu) + 2*ep*(1 + 2*nu)*(-3 + 8*nu^2 - 
        4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(2 - 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      (1 + 2*nu)^2*(9 + 4*nu^2 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(8 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
      4*ep^2*(11 + 8*nu^2 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(20 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     Log[2 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
       2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - x^2 - 4*ep^2*x^2 + 
       ep*(2 - 4*x^2)])/(8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
    (-2*ep^2 + (1 + 2*nu)^2)), 
  ((1 + 2*ep)*(1 + 2*nu)*(2*(1 + 2*ep + 2*nu)*Log[-1 + x^2] - 
     (1 + 2*ep + 2*nu)*Log[-1 + 4*(1 + ep + 2*nu + 2*nu^2)*x^2 - 
        (1 + 2*ep)^2*x^4] + ((1 + 4*ep^2 - 4*nu^2 + 4*ep*(1 + nu))*
       (-Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
            ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] + 
        Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
      Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))/(8*(2*ep^2 - (1 + 2*nu)^2)), 0, 
  ((-1/2*I)*nu*(1 + 2*nu)*((1 - 2*ep + 4*nu)*Log[1 - x] + 
     (-1 + 2*ep - 4*nu)*Log[1 + x] + 
     ((I/2)*(1 + 2*ep)*(-4*ep^2 + 16*ep^3 - (1 + 6*nu + 8*nu^2)*
         (-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*ep*(-4 - 20*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-8 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) - 
     ((I/2)*(1 + 2*ep)*(-4*ep^2 + 16*ep^3 + (1 + 6*nu + 8*nu^2)*
         (1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        2*ep*(4 + 20*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(8 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   (2*ep^2 - (1 + 2*nu)^2), 
  ((-1/2*I)*((3 + 8*ep^3 + 9*nu + 6*nu^2 + 20*ep^2*(1 + nu) + 
       2*ep*(7 + 15*nu + 6*nu^2))*Log[1 - x] - 
     (3 + 8*ep^3 + 9*nu + 6*nu^2 + 20*ep^2*(1 + nu) + 
       2*ep*(7 + 15*nu + 6*nu^2))*Log[1 + x] + 
     ((I/2)*(1 + 2*ep)*(1 + nu)*(16*ep^3 + 
        ep^2*(44 + 32*nu - 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        ep*(36 + 72*nu + 24*nu^2 - 18*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          28*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        (1 + 2*nu)*(9 + 8*nu^2 - 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(14 - 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) - 
     ((I/2)*(1 + 2*ep)*(1 + nu)*(16*ep^3 + 4*ep^2*(11 + 8*nu + 
          4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + (1 + 2*nu)*
         (9 + 8*nu^2 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        2*ep*(12*nu^2 + 9*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(18 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   (2*ep^2 - (1 + 2*nu)^2), 
  (I*ep*(1 + 2*ep)*(-((1 + 2*ep + 2*nu)*Log[1 - x]) + 
     (1 + 2*ep + 2*nu)*Log[1 + x] + 
     ((I/2)*(-4*ep^2 + 2*ep*(-5 - 4*nu^2 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(-5 - 8*nu^2 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(4*ep^2 + 2*ep*(5 + 4*nu^2 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(5 + 8*nu^2 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   ((1 + 2*nu)*(-2*ep^2 + (1 + 2*nu)^2)), 
  ((-I)*((3 + 14*ep^2 + 8*nu + 4*nu^2 + 4*ep*(3 + 4*nu))*Log[1 - x] - 
     (3 + 14*ep^2 + 8*nu + 4*nu^2 + 4*ep*(3 + 4*nu))*Log[1 + x] + 
     (I*(1 + 2*ep)*(8*ep^3 - 4*ep^2*(-3 - 2*nu + 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        ep*(12 + 20*nu - 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          8*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + (1 + 2*nu)*
         (5 + 8*nu^2 - 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(10 - 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) - 
     (I*(1 + 2*ep)*(8*ep^3 + 4*ep^2*(3 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
            4*nu^2]) + 2*ep*(6 + 10*nu + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + (1 + 2*nu)*
         (5 + 8*nu^2 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   (2*ep^2 - (1 + 2*nu)^2), 0}, 
 {((I/2)*(2 + b0 + 2*nu)*
    (((-1/2*I)*(1 + 4*ep^2 + 4*nu^2 - 
        2*nu*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*ep*(1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] + 
     ((I/2)*(1 + 4*ep^2 + 4*nu^2 + 
        2*nu*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        2*ep*(-1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
   Sqrt[3 + 4*ep + 4*nu + 4*nu^2], 0, 0, 0, 
  ((2 + b0 + 2*nu)*
    (((-3 - 4*ep^2 - 4*nu^2 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*ep*(-3 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] + 
     ((3 + 4*ep^2 + 4*nu^2 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*ep*(3 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
   (4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]), 
  -1/2*(nu*(1 + 2*nu)*(2 + b0 + 2*nu)*(2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       (-2*ep^2 + (1 + 2*nu)^2)*Log[x] + (-1 + 2*ep^2 - 2*nu - 4*ep*nu)*
       Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Log[1 - x^2] - 
      nu*(-4*ep^2 - 2*ep*(-2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        (1 + 2*nu)*(3 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       Log[-2 - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + x^2 + 4*ep^2*x^2 + 
         ep*(-2 + 4*x^2)] + nu*(-4*ep^2 - (1 + 2*nu)*(-3 - 2*nu + 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*ep*(2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       Log[-2 - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + x^2 + 4*ep^2*x^2 + 
         ep*(-2 + 4*x^2)]))/(Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
     (-2*ep^2 + (1 + 2*nu)^2)), 0, ((2 + b0 + 2*nu)*(1 + 3*nu + 2*nu^2)*
    (-2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)*Log[x] - 
     Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(1 + 2*ep^2 + 2*nu + 4*ep*(1 + nu))*
      Log[1 - x^2] + (1 + nu)*(-4*ep^2 + 
       2*ep*(-2 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       (1 + 2*nu)*(-1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
      Log[-2 - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + x^2 + 4*ep^2*x^2 + 
        ep*(-2 + 4*x^2)] + (1 + nu)*(4*ep^2 + (1 + 2*nu)*
        (1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       2*ep*(2 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
      Log[-2 - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + x^2 + 4*ep^2*x^2 + 
        ep*(-2 + 4*x^2)]))/(2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
    (-2*ep^2 + (1 + 2*nu)^2)), 
  -1/4*((2 + b0 + 2*nu)*(8*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       (-2*ep^2 + (1 + 2*nu)^2)*Log[x] + 4*ep^2*(1 + 2*ep - 2*nu)*
       Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Log[1 - x^2] - 
      (-8*ep^3*(1 + 4*nu) - 8*ep^2*
         (1 + nu*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)^2*(1 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        2*ep*(1 + 2*nu)*(12*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       Log[-2 - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + x^2 + 4*ep^2*x^2 + 
         ep*(-2 + 4*x^2)] + (-8*ep^3*(1 + 4*nu) - 2*ep*(1 + 2*nu)*
         (-12*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)^2*(1 + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          2*nu*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        8*ep^2*(-1 + nu*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       Log[-2 - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + x^2 + 4*ep^2*x^2 + 
         ep*(-2 + 4*x^2)]))/(Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
     (-2*ep^2 + (1 + 2*nu)^2)), 0, 0, 
  ((2 + b0 + 2*nu)*(-8*(1 + nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
      (-2*ep^2 + (1 + 2*nu)^2)*Log[x] + 4*ep^2*(3 + 2*ep + 2*nu)*
      Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Log[1 - x^2] - 
     (-8*ep^3*(3 + 4*nu) - (1 + 2*nu)^2*(-3 + 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       8*ep^2*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         nu*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       2*ep*(1 + 2*nu)*(2 + 12*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      Log[-2 - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + x^2 + 4*ep^2*x^2 + 
        ep*(-2 + 4*x^2)] + (-8*ep^3*(3 + 4*nu) + (1 + 2*nu)^2*
        (3 - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 2*ep*(1 + 2*nu)*
        (2 + 12*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(-7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
       8*ep^2*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         nu*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      Log[-2 - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + x^2 + 4*ep^2*x^2 + 
        ep*(-2 + 4*x^2)]))/(4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
    (-2*ep^2 + (1 + 2*nu)^2)), ((1 + 2*ep)*(1 + 2*nu)^2*(2 + b0 + 2*nu)*
    (2*Log[-1 + x^2] - Log[-1 + 4*(1 + ep + 2*nu + 2*nu^2)*x^2 - 
       (1 + 2*ep)^2*x^4] + ((-2*ep - 4*ep^2 + (1 + 2*nu)^2)*
       (Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] - 
        Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))/
   (4*(2*ep^2 - (1 + 2*nu)^2)), 0, 
  ((-1/2*I)*(2 + b0 + 2*nu)*((8*ep^4 + ep^3*(4 - 28*nu) + 
       2*ep^2*(-2 - 9*nu + 14*nu^2) + 2*ep*(-1 + nu + 8*nu^2 - 4*nu^3) + 
       nu*(3 + 10*nu + 12*nu^2 + 8*nu^3))*Log[1 - x] - 
     (8*ep^4 + ep^3*(4 - 28*nu) + 2*ep^2*(-2 - 9*nu + 14*nu^2) + 
       2*ep*(-1 + nu + 8*nu^2 - 4*nu^3) + nu*(3 + 10*nu + 12*nu^2 + 8*nu^3))*
      Log[1 + x] + (I*(1 + 2*ep)^2*nu*(16*ep^3 - (1 + 2*nu)*
         (1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*ep^2*(1 - 4*nu + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        2*ep*(5 + 4*nu^2 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(7 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) - 
     (I*(1 + 2*ep)^2*nu*(16*ep^3 + (1 + 2*nu)*(-1 + 2*nu + 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        4*ep^2*(-1 + 4*nu + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*ep*(-5 - 4*nu^2 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-7 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   ((1 + 2*ep)*(2*ep^2 - (1 + 2*nu)^2)), 
  ((-1/2*I)*(2 + b0 + 2*nu)*((3 + 8*ep^4 + 13*nu + 22*nu^2 + 20*nu^3 + 
       8*nu^4 + 4*ep^3*(8 + 7*nu) + ep^2*(42 + 74*nu + 28*nu^2) + 
       ep*(20 + 54*nu + 40*nu^2 + 8*nu^3))*Log[1 - x] - 
     (3 + 8*ep^4 + 13*nu + 22*nu^2 + 20*nu^3 + 8*nu^4 + 4*ep^3*(8 + 7*nu) + 
       ep^2*(42 + 74*nu + 28*nu^2) + ep*(20 + 54*nu + 40*nu^2 + 8*nu^3))*
      Log[1 + x] + (I*(1 + 2*ep)^2*(1 + nu)*(16*ep^3 + 
        ep^2*(20 + 16*nu - 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        (1 + 2*nu)*(-3 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        2*ep*(-5 + 4*nu^2 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          6*nu*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) - 
     (I*(1 + 2*ep)^2*(1 + nu)*(16*ep^3 + (1 + 2*nu)*(3 + 2*nu + 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*ep^2*(5 + 4*nu + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*ep*(5 - 4*nu^2 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          6*nu*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   ((1 + 2*ep)*(2*ep^2 - (1 + 2*nu)^2)), 
  ((2*I)*ep*(1 + 2*ep)*(2 + b0 + 2*nu)*(Log[1 - x] - Log[1 + x] + 
     ((I/2)*(1 + 2*ep)*(2*ep - (1 + 2*nu)*(-1 - 2*nu + 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) - 
     ((I/2)*(1 + 2*ep)*(2*ep + (1 + 2*nu)*(1 + 2*nu + 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   (2*ep^2 - (1 + 2*nu)^2), (I*(1 + 2*nu)*(2 + b0 + 2*nu)*
    (-((5 + 24*ep + 30*ep^2 + 4*nu + 4*nu^2)*Log[1 - x]) + 
     (5 + 24*ep + 30*ep^2 + 4*nu + 4*nu^2)*Log[1 + x] + 
     ((2*I)*(1 + 2*ep)^2*(-8*ep^2 - 8*ep^3 + (1 + 2*nu)*
         (-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        ep*(-2 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          8*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((2*I)*(1 + 2*ep)^2*(8*ep^2 + 8*ep^3 + (1 + 2*nu)*
         (1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        ep*(2 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          8*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   ((1 + 2*ep)*(2*ep^2 - (1 + 2*nu)^2)), 0}, 
 {((I/16)*(2 + b0 + 2*nu)*((2*(ep - nu)*(-1 + 4*nu + 4*nu^2)*
       (-Log[1 - Sqrt[1 + 2*ep]*x] + Log[1 + Sqrt[1 + 2*ep]*x]))/
      Sqrt[1 + 2*ep] + ((I/2)*(-1 - 12*nu^2 + 64*ep^3*nu*(1 + nu) + 
        Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(-4 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*ep*(1 + 16*nu^4 + nu^2*(12 - 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          8*nu^3*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^2*(1 - 16*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(8 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(-4 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(1 + 12*nu^2 - 64*ep^3*nu*(1 + nu) + 
        Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(4 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        4*ep*(1 + 16*nu^4 - 2*nu*(-5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^2*(-1 + 16*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-8 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(4 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/(nu*(1 + nu)), 
  ((I/32)*(1 + 2*nu)*(2 + b0 + 2*nu)*
    ((1 - 4*nu - 4*nu^2 + 4*ep^2*(1 + nu) - 2*ep*(-2 + nu + 2*nu^2))*
      Log[1 - x] + (-1 + 4*nu + 4*nu^2 - 4*ep^2*(1 + nu) + 
       2*ep*(-2 + nu + 2*nu^2))*Log[1 + x] + (1 + 2*ep)^(3/2)*
      (-1 + 4*nu + 4*nu^2)*(Log[1 - Sqrt[1 + 2*ep]*x] - 
       Log[1 + Sqrt[1 + 2*ep]*x])))/(ep*nu*(1 + nu)), 
  ((I/8)*Sqrt[1 + 2*ep]*(2 + b0 + 2*nu)*(-1 + 4*nu + 4*nu^2)*
    (Log[1 - Sqrt[1 + 2*ep]*x] - Log[1 + Sqrt[1 + 2*ep]*x]))/(nu*(1 + nu)), 
  ((I/32)*(1 + 2*nu)*(2 + b0 + 2*nu)*
    (-((-1 + 4*nu + 4*ep^2*nu + 4*nu^2 + ep*(-2 + 6*nu + 4*nu^2))*
       Log[1 - x]) + (-1 + 4*nu + 4*ep^2*nu + 4*nu^2 + 
       ep*(-2 + 6*nu + 4*nu^2))*Log[1 + x] + (1 + 2*ep)^(3/2)*
      (-1 + 4*nu + 4*nu^2)*(Log[1 - Sqrt[1 + 2*ep]*x] - 
       Log[1 + Sqrt[1 + 2*ep]*x])))/(ep*nu*(1 + nu)), 
  ((I/16)*(2 + b0 + 2*nu)*((2*(1 + ep + nu)*(-1 + 4*nu + 4*nu^2)*
       (-Log[1 - Sqrt[1 + 2*ep]*x] + Log[1 + Sqrt[1 + 2*ep]*x]))/
      Sqrt[1 + 2*ep] + ((I/2)*(9 + 12*nu^2 - 64*ep^3*nu*(1 + nu) - 
        5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(20 - 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*ep*(5 - 16*nu^4 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          8*nu^3*(-5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          6*nu*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-9 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^2*(3 - 16*nu^3 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          6*nu*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(-44 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(-9 - 12*nu^2 + 64*ep^3*nu*(1 + nu) - 
        5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        2*nu*(10 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*ep*(-5 + 16*nu^4 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          6*nu*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^3*(5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(9 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^2*(-3 + 16*nu^3 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          6*nu*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu^2*(44 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/(nu*(1 + nu)), 
  -1/8*(nu*(1 + 2*nu)^2*(2 + b0 + 2*nu)*
     (-(((-1 + 2*nu + 12*nu^2 + 8*nu^3 + 4*ep^2*(1 + nu) - 
          2*ep*(1 + 6*nu + 4*nu^2))*Log[-1 + x^2])/
        (ep*(2*ep^2 - (1 + 2*nu)^2))) - 
      ((-1 + 4*nu + 4*nu^2)*Log[-1 + x^2 + 2*ep*x^2])/(ep + 2*ep*nu) + 
      ((1 + 8*nu + 16*nu^2 + 8*nu^3 - ep*(1 + 10*nu + 8*nu^2))*
        Log[-1 + 4*(1 + ep + 2*nu + 2*nu^2)*x^2 - (1 + 2*ep)^2*x^4])/
       ((1 + 2*nu)*(-2*ep^2 + (1 + 2*nu)^2)) + 
      ((-16*ep^2*nu*(1 + nu) + 2*nu*(5 + 18*nu + 20*nu^2 + 8*nu^3) + 
         ep*(-1 + 20*nu^2 + 16*nu^3))*
        (-Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
             ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] + 
         Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
            ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
       ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2))))/
    (1 + nu), 0, ((1 + nu)*(1 + 2*nu)^2*(2 + b0 + 2*nu)*
    (-(((-1 + 2*nu + 4*ep^2*nu + 12*nu^2 + 8*nu^3 + ep*(-2 + 4*nu + 8*nu^2))*
        Log[-1 + x^2])/(ep*(2*ep^2 - (1 + 2*nu)^2))) - 
     ((-1 + 4*nu + 4*nu^2)*Log[-1 + x^2 + 2*ep*x^2])/(ep + 2*ep*nu) - 
     ((-1 + 8*nu^2 + 8*nu^3 + ep*(-1 + 6*nu + 8*nu^2))*
       Log[-1 + 4*(1 + ep + 2*nu + 2*nu^2)*x^2 - (1 + 2*ep)^2*x^4])/
      ((1 + 2*nu)*(-2*ep^2 + (1 + 2*nu)^2)) + 
     ((16*ep^2*nu*(1 + nu) + ep*(-3 + 8*nu + 28*nu^2 + 16*nu^3) - 
        2*(1 + 3*nu + 6*nu^2 + 12*nu^3 + 8*nu^4))*
       (-Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
            ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] + 
        Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2))))/
   (8*nu), -1/16*((1 + 2*nu)*(2 + b0 + 2*nu)*
     ((-2*(-8*ep*nu*(1 + 3*nu + 2*nu^2) + nu*(1 + 2*nu)^2*
          (-1 + 4*nu + 4*nu^2) + 2*ep^3*(1 + 6*nu + 4*nu^2) - 
         ep^2*(-1 + 6*nu + 36*nu^2 + 24*nu^3))*Log[-1 + x^2])/
       (ep*(2*ep^2 - (1 + 2*nu)^2)) - (2*nu*(1 + 2*ep + 2*nu)*
        (-1 + 4*nu + 4*nu^2)*Log[-1 + x^2 + 2*ep*x^2])/(ep + 2*ep*nu) + 
      ((2*nu*(1 + 2*nu)^3*(3 + 2*nu) + ep*(1 + 2*nu)^2*(-1 + 10*nu + 
           8*nu^2) - 2*ep^2*(1 + 6*nu + 24*nu^2 + 16*nu^3))*
        Log[-1 + 4*(1 + ep + 2*nu + 2*nu^2)*x^2 - (1 + 2*ep)^2*x^4])/
       ((1 + 2*nu)*(-2*ep^2 + (1 + 2*nu)^2)) + 
      ((-32*ep^3*nu*(1 + 5*nu + 4*nu^2) - 2*ep^2*(-1 + 12*nu + 52*nu^2 + 
           32*nu^3) + (1 + 2*nu)^2*(1 + 6*nu + 32*nu^2 + 40*nu^3 + 16*nu^4) + 
         ep*(3 + 16*nu + 104*nu^2 + 336*nu^3 + 432*nu^4 + 192*nu^5))*
        (-Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
             ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] + 
         Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
            ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
       ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2))))/
    (nu*(1 + nu)), 
  -1/8*((2 + b0 + 2*nu)*(8*nu*Log[x] + 
      ((-1 + 2*nu + 8*ep^2*nu + 12*nu^2 + 8*nu^3 + ep*(-2 + 8*nu + 8*nu^2))*
        Log[1 - x^2])/ep - ((1 + 2*ep + 2*nu)*(-1 + 4*nu + 4*nu^2)*
        Log[1 - (1 + 2*ep)*x^2])/ep))/nu, 
  ((2 + b0 + 2*nu)*(8*(1 + nu)*Log[x] + 
     ((-1 + 2*nu + 12*nu^2 + 8*nu^3 + 8*ep^2*(1 + nu) + 
        ep*(2 - 8*nu - 8*nu^2))*Log[1 - x^2])/ep + 
     ((-1 + 2*ep - 2*nu)*(-1 + 4*nu + 4*nu^2)*Log[1 - (1 + 2*ep)*x^2])/ep))/
   (8*(1 + nu)), ((1 + 2*nu)*(2 + b0 + 2*nu)*
    ((2*(8*ep*nu*(1 + 3*nu + 2*nu^2) + ep^3*(-2 + 4*nu + 8*nu^2) - 
        (1 + 2*nu)^2*(-1 + 3*nu + 8*nu^2 + 4*nu^3) + 
        ep^2*(-5 + 6*nu + 36*nu^2 + 24*nu^3))*Log[-1 + x^2])/
      (ep*(2*ep^2 - (1 + 2*nu)^2)) + (2*(-1 + 2*ep - 2*nu)*
       (-1 + 3*nu + 8*nu^2 + 4*nu^3)*Log[-1 + x^2 + 2*ep*x^2])/
      (ep + 2*ep*nu) + ((-2*(1 + 2*nu)^3*(-1 + nu + 2*nu^2) + 
        ep*(1 + 2*nu)^2*(-3 + 6*nu + 8*nu^2) + 
        2*ep^2*(-3 + 6*nu + 24*nu^2 + 16*nu^3))*
       Log[-1 + 4*(1 + ep + 2*nu + 2*nu^2)*x^2 - (1 + 2*ep)^2*x^4])/
      ((1 + 2*nu)*(-2*ep^2 + (1 + 2*nu)^2)) + 
     ((32*ep^3*nu*(3 + 7*nu + 4*nu^2) + 2*ep^2*(-7 + 4*nu + 44*nu^2 + 
          32*nu^3) + (1 + 2*nu)^2*(3 + 2*nu + 8*nu^2 + 24*nu^3 + 16*nu^4) - 
        ep*(5 + 48*nu + 232*nu^2 + 528*nu^3 + 528*nu^4 + 192*nu^5))*
       (Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] - 
        Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
           ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2))))/
   (16*nu*(1 + nu)), -1/16*((1 + 2*ep)*(1 + 2*nu)^2*(2 + b0 + 2*nu)*
     (-2*(ep - 4*nu*(1 + nu))*Log[-1 + x^2] + (ep - 4*nu*(1 + nu))*
       Log[-1 + 4*(1 + ep + 2*nu + 2*nu^2)*x^2 - (1 + 2*ep)^2*x^4] + 
      ((-16*ep^2*nu*(1 + nu) + (1 + 2*nu)^4 + ep*(1 - 4*nu - 4*nu^2))*
        (Log[1 + (2 + 4*nu + 4*nu^2 - x^2 - 4*ep^2*x^2 + ep*(2 - 4*x^2))/
            ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] - 
         Log[1 + (-2 - 4*nu - 4*nu^2 + x^2 + 4*ep^2*x^2 + ep*(-2 + 4*x^2))/
            ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
       ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))/
    (nu*(1 + nu)*(2*ep^2 - (1 + 2*nu)^2)), 0, 
  ((I/4)*(2 + b0 + 2*nu)*((16*ep^4*(1 + nu) - 8*ep^3*nu*(8 + 7*nu) + 
       ep^2*(-6 - 24*nu + 52*nu^2 + 56*nu^3) + 
       ep*(-1 + 10*nu + 36*nu^2 - 16*nu^4) + 
       2*nu*(2 + 9*nu + 18*nu^2 + 20*nu^3 + 8*nu^4))*Log[1 - x] - 
     (16*ep^4*(1 + nu) - 8*ep^3*nu*(8 + 7*nu) + 
       ep^2*(-6 - 24*nu + 52*nu^2 + 56*nu^3) + 
       ep*(-1 + 10*nu + 36*nu^2 - 16*nu^4) + 
       2*nu*(2 + 9*nu + 18*nu^2 + 20*nu^3 + 8*nu^4))*Log[1 + x] + 
     ((I/2)*(1 + 2*ep)^2*(64*ep^3*nu*(1 + nu) - (1 + 2*nu)*
         (1 + 4*nu^2 + 2*nu*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^2*(1 - 16*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          8*nu^2*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(2 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        ep*(1 + 32*nu^4 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          10*nu*(4 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^3*(7 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(33 + 20*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(1 + 2*ep)^2*(-64*ep^3*nu*(1 + nu) + (1 + 2*nu)*
         (1 + 4*nu^2 - 2*nu*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(1 + 32*nu^4 - 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^2*(132 - 80*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(40 - 30*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          16*nu^3*(-7 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^2*(-1 + 16*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          8*nu^2*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(-2 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   ((1 + 2*ep)*(1 + nu)*(2*ep^2 - (1 + 2*nu)^2)), 
  ((I/4)*(2 + b0 + 2*nu)*((16*ep^4*nu + 8*ep^3*(-1 + 6*nu + 7*nu^2) + 
       2*ep^2*(-7 + 20*nu + 58*nu^2 + 28*nu^3) + 
       ep*(-9 + 2*nu + 60*nu^2 + 64*nu^3 + 16*nu^4) + 
       2*(-1 - 2*nu + 5*nu^2 + 18*nu^3 + 20*nu^4 + 8*nu^5))*Log[1 - x] - 
     (16*ep^4*nu + 8*ep^3*(-1 + 6*nu + 7*nu^2) + 
       2*ep^2*(-7 + 20*nu + 58*nu^2 + 28*nu^3) + 
       ep*(-9 + 2*nu + 60*nu^2 + 64*nu^3 + 16*nu^4) + 
       2*(-1 - 2*nu + 5*nu^2 + 18*nu^3 + 20*nu^4 + 8*nu^5))*Log[1 + x] + 
     ((I/2)*(1 + 2*ep)^2*(64*ep^3*nu*(1 + nu) + (1 + 2*nu)*
         (-3 + 4*nu^2 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        4*ep^2*(3 - 16*nu^3 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          8*nu^2*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          6*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        ep*(13 + 32*nu^4 - 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          16*nu^3*(1 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(8 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-3 + 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) - 
     ((I/2)*(1 + 2*ep)^2*(64*ep^3*nu*(1 + nu) + (1 + 2*nu)*
         (-3 + 4*nu^2 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*ep^2*(-3 + 16*nu^3 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          6*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          8*nu^2*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(-13 - 32*nu^4 - 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          16*nu^3*(-1 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(-8 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(3 + 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   ((1 + 2*ep)*nu*(2*ep^2 - (1 + 2*nu)^2)), 
  ((-1/2*I)*ep*(1 + 2*ep)*(2 + b0 + 2*nu)*((ep - 4*nu*(1 + nu))*Log[1 - x] + 
     (-ep + 4*nu*(1 + nu))*Log[1 + x] + 
     ((I/2)*(-16*ep^2*nu*(1 + nu) - (1 + 2*nu)*(-2 - 4*nu + 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        ep*(3 - 32*nu^4 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          16*nu^3*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          12*nu^2*(-3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(-4 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(16*ep^2*nu*(1 + nu) - (1 + 2*nu)*(2 + 4*nu + 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        ep*(-3 + 32*nu^4 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          16*nu^3*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          12*nu^2*(3 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          nu*(4 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   (nu*(1 + nu)*(-2*ep^2 + (1 + 2*nu)^2)), 
  ((-1/2*I)*(1 + 2*nu)*(2 + b0 + 2*nu)*
    ((1 + 12*ep^3 - 6*nu - 14*nu^2 - 16*nu^3 - 8*nu^4 + 
       ep*(4 - 40*nu - 40*nu^2) - 10*ep^2*(-1 + 6*nu + 6*nu^2))*Log[1 - x] + 
     (-1 - 12*ep^3 + 6*nu + 14*nu^2 + 16*nu^3 + 8*nu^4 + 
       10*ep^2*(-1 + 6*nu + 6*nu^2) + ep*(-4 + 40*nu + 40*nu^2))*Log[1 + x] - 
     (I*(1 + 2*ep)^2*(32*ep^3*nu*(1 + nu) + (1 + 2*nu)*
         (-2 - 4*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*ep^2*(-1 + 12*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(6 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        ep*(5 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          32*nu^3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          12*nu^2*(1 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(6 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 + 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*nu*(-2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
             2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) - 
     (I*(1 + 2*ep)^2*(-32*ep^3*nu*(1 + nu) + (1 + 2*nu)*
         (2 + 4*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*ep^2*(1 - 12*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-6 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          32*nu^3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^2*(12 - 48*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          2*nu*(-6 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[1 - (I*(x + 2*ep*x))/Sqrt[-2 - 2*ep - 4*nu^2 - 
             Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 2*nu*(2 + Sqrt[3 + 4*ep + 
                 4*nu + 4*nu^2])]] - Log[1 + (I*(x + 2*ep*x))/
           Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
             2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   ((1 + 2*ep)*nu*(1 + nu)*(2*ep^2 - (1 + 2*nu)^2)), 0}, 
 {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -((1 + 2*nu)*Log[x]), 0, 0, 
  -2*Log[x], 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  (1 + 2*nu)*Log[x], 0, 2*Log[x], 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, 0, ((-2 - 2*a0 + b0 + 2*nu)*Log[x + 2*nu*x])/(2 + 4*nu), 
  (-4 - 4*a0 + 2*b0 + 4*nu)*Log[x], 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, (nu*(1 + 2*nu)*(2*Log[x] - Log[1 - x^2]))/4, 
  -1/4*((1 + 3*nu + 2*nu^2)*(2*Log[x] - Log[1 - x^2])), 0, 
  -Log[x] - (2*ep + nu)*Log[1 - x^2], (I/4)*(Log[1 - x] - Log[1 + x])}, 
 {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  (-1/2*I)*b0*nu*((-2*(a0 - 2*nu)*(-1 + 8*ep*(1 + nu)))/((1 - 4*ep)^2*x) + 
    (1 + 2*nu)*Log[1 - x] - (1 + 2*nu)*Log[1 + x]), 
  I*b0*(1 + nu)*(((a0 - 2*nu)*(1 + 8*ep*nu))/((1 - 4*ep)^2*x) + 
    (1/2 + nu)*Log[1 - x] - ((1 + 2*nu)*Log[1 + x])/2), 0, 
  I*((8*b0*ep*(a0 - 2*nu)*(1 + 2*nu))/((1 - 4*ep)^2*x) + 
    ((1 + 2*ep)*(-1 + 2*ep - 2*nu)*nu*(a0 + 2*a0*nu - 
       2*(2*ep^2 + nu + 2*nu^2))*x)/(ep^2*(-1 + 2*ep)) - 
    (2*b0*(-128*ep^5 + 128*ep^6 - 4*ep^2*nu + (a0 - 2*nu)*nu*(1 + 2*nu) - 
       6*ep*(a0 - 2*nu)*nu*(1 + 2*nu) - 8*ep^4*(-5 + a0 + 6*nu + 2*a0*nu - 
         4*nu^2) + 4*ep^3*(-1 + a0 + 6*nu + 8*a0*nu - 16*nu^2 + 12*a0*nu^2 - 
         24*nu^3))*x)/((1 - 4*ep)^2*ep^2*(-1 + 2*ep)) - 
    2*b0*(2*ep + nu)*Log[1 - x] + 2*b0*(2*ep + nu)*Log[1 + x]), 
  -1/4*((a0*(2*b0*(1 - 6*ep + 24*ep^3) - (1 - 4*ep)^2*(1 + 2*ep)*
          (-1 + 2*ep - 2*nu))*(1 + 2*nu) - 
       2*(-128*ep^6 + 64*ep^5*(1 + b0 + 2*nu) + nu*(1 + 2*nu)*
          (1 + 2*b0 + 2*nu) - 4*ep*nu*(1 + 2*nu)*(2 + 3*b0 + 3*nu) + 
         2*ep^2*(1 + b0 + 8*nu + 12*nu^2) - 8*ep^4*(-3 + 8*nu + 16*nu^2) + 
         4*ep^3*(3*b0*(-1 + 4*nu + 8*nu^2) + 2*(-2 + nu + 16*nu^2 + 
             16*nu^3))))*Log[x])/((1 - 4*ep)^2*ep^2*(-1 + 2*ep)) - 
   (b0*Log[1 - x^2])/2}}
