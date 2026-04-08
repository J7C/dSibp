(* Created with the Wolfram Language : www.wolfram.com *)
{{((1 + 2*nu)*Log[-1 + x] - 4*ep*(1 + 2*ep - 2*nu)*Log[x] + 
    (1 + 2*nu)*(Log[1 + x] - (1 + 2*ep)*(Log[-Sqrt[1 + 2*ep] + x] + 
        Log[Sqrt[1 + 2*ep] + x])))/(4*ep), 
  -((1 + 2*ep)*(1 + 2*nu)*(-1/4*Log[-1 + x]/ep - Log[1 + x]/(4*ep) + 
     (Log[-Sqrt[1 + 2*ep] + x] + Log[Sqrt[1 + 2*ep] + x])/(4*ep))), 
  (-4*(1 + 8*ep^2 + ep*(2 - 12*nu) + 2*nu + 8*nu^2)*Log[x] + 
    4*(1 + 2*ep)*(ep - nu)*(Log[-Sqrt[1 + 2*ep] + x] + 
      Log[Sqrt[1 + 2*ep] + x]) + 
    ((1 + 16*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
       8*nu^2*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       4*ep^2*(-1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       2*nu*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
       4*ep*(1 + 4*nu^2 + 2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
      (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
     Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
    ((-1 - 16*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
       8*nu^2*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       4*ep^2*(1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       2*nu*(-5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       ep*(4 + 16*nu^2 - 8*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
      (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
     Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/(4*(1 + 2*ep)^2), 
  2*Log[x] - Log[-Sqrt[1 + 2*ep] + x] - Log[Sqrt[1 + 2*ep] + x], 
  -1/4*((1 + 2*nu)*(-4*(3 + 2*ep + 4*nu)*Log[x] - 
      (4*(1 + 2*ep)*(1 + ep + nu)*(Log[-Sqrt[1 + 2*ep] + x] + 
         Log[Sqrt[1 + 2*ep] + x]))/(1 + 2*nu) + 
      ((9 + 16*nu^3 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         8*nu^2*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         4*ep^2*(3 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         2*nu*(13 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         4*ep*(5 + 4*nu^2 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           2*nu*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
        (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
       ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
      ((-9 - 16*nu^3 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         8*nu^2*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         4*ep^2*(-3 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         2*nu*(-13 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         4*ep*(-5 - 4*nu^2 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           2*nu*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
        (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
       ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))/(1 + 2*ep)^2, 
  ((I/4)*(-2*Sqrt[-1 - 2*ep]*(8*ep^3*nu + ep^2*(1 + 2*nu) - 
       ep*(-1 + 2*nu)*(1 + 2*nu)^2 - nu*(1 + 2*nu)^3)*
      (Log[-1 + x] - Log[1 + x]) - (2*I)*nu*(-4*ep^3 - 2*ep^2*(1 + 2*nu) + 
       2*ep*(1 + 2*nu)^2 + (1 + 2*nu)^3)*(Log[-Sqrt[1 + 2*ep] + x] - 
       Log[Sqrt[1 + 2*ep] + x]) + Sqrt[-1 - 2*ep]*ep*
      ((Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         4*ep*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         6*ep^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 4*ep^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 4*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 16*ep*nu*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         24*ep^2*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 16*ep^3*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 8*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 8*ep*nu^2*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         56*ep^2*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 64*nu^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] - 32*ep*nu^3*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         64*ep^2*nu^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 112*nu^4*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         32*ep*nu^4*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] - 64*nu^5*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         2*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         8*ep^2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 8*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         4*ep*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 8*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/2 + 
         (nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 - 
         2*ep^2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
               Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                 32*nu^3 + 16*nu^4]])^2*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         ep*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
               Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                 32*nu^3 + 16*nu^4]])^2*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/
          8) + (Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
           x] + 4*ep*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 6*ep^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 4*ep^3*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         4*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         16*ep*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 24*ep^2*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 16*ep^3*nu*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         8*nu^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 8*ep*nu^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 56*ep^2*nu^2*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         64*nu^3*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] - 32*ep*nu^3*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 64*ep^2*nu^3*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         112*nu^4*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] - 32*ep*nu^4*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 64*nu^5*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] - 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         2*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         8*ep^2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 8*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         4*ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 8*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/2 + 
         (nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 - 
         2*ep^2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 2*nu^2*
          (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 2*nu^3*
          (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
         (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2) + 
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         4*ep*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] + 6*ep^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 4*ep^3*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         4*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] + 16*ep*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 24*ep^2*nu*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         16*ep^3*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] - 8*nu^2*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         8*ep*nu^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 56*ep^2*nu^2*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         64*nu^3*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] - 32*ep*nu^3*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 64*ep^2*nu^3*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         112*nu^4*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] - 32*ep*nu^4*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         64*nu^5*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] - ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] - 2*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         8*ep^2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 8*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         4*ep*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 8*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
          4 - (ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2*
           Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
          2 + (nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                  4*nu^2])/Sqrt[2]) + x])/2 - 2*ep^2*nu*
          (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2]) + x] + ep*nu^2*
          (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         2*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2]) + x])/(1 + 2*ep + 4*nu + 4*nu^2 + 
         (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/
          8) + (Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
           x] + 4*ep*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 6*ep^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 4*ep^3*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         4*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         16*ep*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 24*ep^2*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 16*ep^3*nu*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         8*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 8*ep*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 56*ep^2*nu^2*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         64*nu^3*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] - 32*ep*nu^3*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 64*ep^2*nu^3*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         112*nu^4*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] - 32*ep*nu^4*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 64*nu^5*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] - 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         2*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         8*ep^2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 8*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         4*ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 8*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/2 + 
         (nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 - 
         2*ep^2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
               Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                 32*nu^3 + 16*nu^4]])^2*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
               Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                 32*nu^3 + 16*nu^4]])^2*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
         (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2))))/
   (Sqrt[-1 - 2*ep]*ep*(2*ep^2 - (1 + 2*nu)^2)), 
  ((I/2)*(1 + nu)*(-((1 + 4*ep + 2*nu)*(Log[-1 + x] - Log[1 + x])) + 
     (I*(1 + 2*ep + 2*nu)*(Log[-Sqrt[1 + 2*ep] + x] - 
        Log[Sqrt[1 + 2*ep] + x]))/Sqrt[-1 - 2*ep]))/ep, 
  ((I/2)*nu*((1 + 2*nu)*(Log[-1 + x] - Log[1 + x]) + 
     ((I/2)*(-2 + 4*ep - 4*nu)*(Log[-Sqrt[1 + 2*ep] + x] - 
        Log[Sqrt[1 + 2*ep] + x]))/Sqrt[-1 - 2*ep]))/ep, 
  ((I/4)*(2*Sqrt[-1 - 2*ep]*(1 + 2*nu)*(ep*(1 + 2*nu)^2 - 
       (1 + nu)*(1 + 2*nu)^2 + ep^2*(5 + 4*nu))*(Log[-1 + x] - Log[1 + x]) + 
     (2*I)*(1 + nu)*(4*ep^3 - 2*ep^2*(1 + 2*nu) - 2*ep*(1 + 2*nu)^2 + 
       (1 + 2*nu)^3)*(Log[-Sqrt[1 + 2*ep] + x] - Log[Sqrt[1 + 2*ep] + x]) - 
     Sqrt[-1 - 2*ep]*ep*
      ((-5*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         4*ep*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         26*ep^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 12*ep^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 44*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 32*ep*nu*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         104*ep^2*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 16*ep^3*nu*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         152*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 88*ep*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 136*ep^2*nu^2*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         256*nu^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 96*ep*nu^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 64*ep^2*nu^3*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         208*nu^4*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 32*ep*nu^4*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 64*nu^5*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 
         2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         3*ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         6*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 10*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         8*ep*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 8*ep^2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         16*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 4*ep*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         8*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + ((-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 - 
         (3*ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/4 - 
         (3*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/2 + 
         (5*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/2 - 2*ep*nu*
          (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         2*ep^2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 4*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
               Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                 32*nu^3 + 16*nu^4]])^2*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         ep*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
               Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                 32*nu^3 + 16*nu^4]])^2*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/
          8) + (-5*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 4*ep*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 26*ep^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 12*ep^3*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         44*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 32*ep*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 104*ep^2*nu*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         16*ep^3*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 152*nu^2*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         88*ep*nu^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 136*ep^2*nu^2*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         256*nu^3*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 96*ep*nu^3*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 64*ep^2*nu^3*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         208*nu^4*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 32*ep*nu^4*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 64*nu^5*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 
         2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         3*ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         6*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 10*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         8*ep*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 8*ep^2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         16*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 4*ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         8*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + ((-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2*
           Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 - 
         (3*ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/4 - 
         (3*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/2 + 
         (5*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/2 - 2*ep*nu*
          (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         2*ep^2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 4*nu^2*
          (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 2*nu^3*
          (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
         (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2) + 
       (-5*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         4*ep*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] + 26*ep^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 12*ep^3*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         44*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] + 32*ep*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 104*ep^2*nu*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         16*ep^3*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] - 152*nu^2*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         88*ep*nu^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 136*ep^2*nu^2*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         256*nu^3*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 96*ep*nu^3*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         64*ep^2*nu^3*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] - 208*nu^4*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         32*ep*nu^4*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] - 64*nu^5*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         3*ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         6*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 10*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         8*ep*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] - 8*ep^2*nu*
          (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         16*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] - 4*ep*nu^2*
          (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         8*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + ((-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2*
           Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
          2 - (3*ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2*
           Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
          4 - (3*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2*
           Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
          2 + (5*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2*
           Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
          2 - 2*ep*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[
                3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                 32*nu^3 + 16*nu^4]])^2*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         2*ep^2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2]) + x] + 
         4*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2]) + x] - ep*nu^2*
          (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         2*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2]) + x])/(1 + 2*ep + 4*nu + 4*nu^2 + 
         (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/
          8) + (-5*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 4*ep*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 26*ep^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 12*ep^3*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         44*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         32*ep*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 104*ep^2*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 16*ep^3*nu*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         152*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 88*ep*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 136*ep^2*nu^2*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         256*nu^3*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 96*ep*nu^3*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 64*ep^2*nu^3*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         208*nu^4*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 32*ep*nu^4*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 64*nu^5*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 
         2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         3*ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         6*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 10*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         8*ep*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 8*ep^2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         16*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 4*ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         8*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + ((-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 - 
         (3*ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/4 - 
         (3*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/2 + 
         (5*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/2 - 2*ep*nu*
          (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         2*ep^2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 4*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
               Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                 32*nu^3 + 16*nu^4]])^2*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
               Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                 32*nu^3 + 16*nu^4]])^2*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
         (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2))))/
   (Sqrt[-1 - 2*ep]*ep*(2*ep^2 - (1 + 2*nu)^2)), 
  ((-1/2*I)*nu^2*(1 + 2*nu)*(Sqrt[-1 - 2*ep]*(4*ep^2 - 2*ep*(1 + 2*nu) - 
       (1 + 2*nu)^2)*(Log[-1 + x] - Log[1 + x]) + 
     (I/2)*(-4*ep^2 + 2*(1 + 2*nu)^2)*(Log[-Sqrt[1 + 2*ep] + x] - 
       Log[Sqrt[1 + 2*ep] + x]) - Sqrt[-1 - 2*ep]*ep*
      ((-Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         2*ep*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         2*ep^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] - 8*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 20*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 8*ep*nu^2*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         16*nu^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         ((-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 + 
         (nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2)/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/
          8) + (-Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] - 2*ep*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*ep^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] - 
         8*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         20*nu^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 8*ep*nu^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 16*nu^3*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         ((-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 + 
         (nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2)/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
         (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2) + 
       (-Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         2*ep*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] + 2*ep^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] - 
         8*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] - 20*nu^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 8*ep*nu^2*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         16*nu^3*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] + (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] - ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         ((-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
          4 - (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                  4*nu^2])/Sqrt[2]) + x])/4 + 
         (nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
          2)/(1 + 2*ep + 4*nu + 4*nu^2 + 
         (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/
          8) + (-Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] - 2*ep*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*ep^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] - 
         8*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         20*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 8*ep*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 16*nu^3*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         ((-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 + 
         (nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2)/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
         (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2))))/
   (Sqrt[-1 - 2*ep]*ep*(2*ep^2 - (1 + 2*nu)^2)), 0, 
  ((I/2)*(1 + 3*nu + 2*nu^2)^2*
    (-(Sqrt[-1 - 2*ep]*(1 + 2*nu)*(1 + 2*ep + 2*nu)*
       (Log[-1 + x] - Log[1 + x])) + (I/2)*(-4*ep^2 + 2*(1 + 2*nu)^2)*
      (Log[-Sqrt[1 + 2*ep] + x] - Log[Sqrt[1 + 2*ep] + x]) + 
     Sqrt[-1 - 2*ep]*ep*
      ((3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         6*ep*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         2*ep^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 16*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 16*ep*nu*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         28*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 8*ep*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 16*nu^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         ((-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2)/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/
          8) + (3*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 6*ep*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*ep^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 
         16*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 16*ep*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 28*nu^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 8*ep*nu^2*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         16*nu^3*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] - (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         ((-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2)/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
         (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2) + 
       (3*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         6*ep*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] + 2*ep^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 16*nu*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         16*ep*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 28*nu^2*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         8*ep*nu^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 16*nu^3*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         ((-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
          4 - (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                  4*nu^2])/Sqrt[2]) + x])/4 - 
         (nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
          2)/(1 + 2*ep + 4*nu + 4*nu^2 + 
         (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/
          8) + (3*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 6*ep*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*ep^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 
         16*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         16*ep*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 28*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 8*ep*nu^2*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         16*nu^3*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] - (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         ((-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2)/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
         (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2))))/
   (Sqrt[-1 - 2*ep]*ep*(1 + 2*nu)*(2*ep^2 - (1 + 2*nu)^2)), 
  ((I/4)*(1 + 2*nu)*(-2*(ep + (1 + 2*nu)^2)*(Log[-1 + x] - Log[1 + x]) + 
     (1 + 2*ep)*((Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
           x] + 2*ep*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*ep^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 
         4*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         8*ep*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 4*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 8*ep*nu^2*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4)/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/
          8) + (Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
           x] + 2*ep*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*ep^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 
         4*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         8*ep*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 4*nu^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 8*ep*nu^2*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4)/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
         (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2) + 
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         2*ep*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] + 2*ep^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 
         4*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] + 8*ep*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 4*nu^2*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         8*ep*nu^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] - ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
          4)/(1 + 2*ep + 4*nu + 4*nu^2 + 
         (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/
          8) + (Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
           x] + 2*ep*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*ep^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 
         4*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         8*ep*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 4*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 8*ep*nu^2*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4)/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
         (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2))))/
   (2*ep^2 - (1 + 2*nu)^2), 0}, 
 {(1 + 2*ep)*(1 + 2*nu)*(-1/4*Log[-1 + x]/ep - Log[1 + x]/(4*ep) + 
    (Log[-Sqrt[1 + 2*ep] + x] + Log[Sqrt[1 + 2*ep] + x])/(4*ep)), 
  -1/4*((1 + 2*nu)*Log[-1 + x] + 4*ep*(3 + 2*ep + 2*nu)*Log[x] + 
     (1 + 2*nu)*(Log[1 + x] - (1 + 2*ep)*(Log[-Sqrt[1 + 2*ep] + x] + 
         Log[Sqrt[1 + 2*ep] + x])))/ep, 
  ((1 + 2*nu)*(4*(-1 + 2*ep - 4*nu)*Log[x] + 
     (4*(1 + 2*ep)*(-ep + nu)*(Log[-Sqrt[1 + 2*ep] + x] + 
        Log[Sqrt[1 + 2*ep] + x]))/(1 + 2*nu) + 
     ((1 + 16*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        8*nu^2*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*ep^2*(-1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*nu*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        4*ep*(1 + 4*nu^2 + 2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
     ((-1 - 16*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        8*nu^2*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*ep^2*(1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*nu*(-5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        ep*(4 + 16*nu^2 - 8*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))/(4*(1 + 2*ep)^2), 
  -2*Log[x] + Log[-Sqrt[1 + 2*ep] + x] + Log[Sqrt[1 + 2*ep] + x], 
  -1/4*(-4*(7 + 8*ep^2 + 14*nu + 8*nu^2 + 2*ep*(7 + 6*nu))*Log[x] + 
     4*(1 + 2*ep)*(1 + ep + nu)*(Log[-Sqrt[1 + 2*ep] + x] + 
       Log[Sqrt[1 + 2*ep] + x]) + 
     ((9 + 16*nu^3 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        8*nu^2*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*ep^2*(3 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*nu*(13 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*ep*(5 + 4*nu^2 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
     ((-9 - 16*nu^3 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        8*nu^2*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*ep^2*(-3 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*nu*(-13 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*ep*(-5 - 4*nu^2 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/(1 + 2*ep)^2, 
  ((I/4)*(-2*Sqrt[-1 - 2*ep]*(1 + 2*nu)*(ep^2*(1 - 4*nu) + ep*(1 + 2*nu)^2 + 
       nu*(1 + 2*nu)^2)*(Log[-1 + x] - Log[1 + x]) + 
     (2*I)*nu*(-4*ep^3 - 2*ep^2*(1 + 2*nu) + 2*ep*(1 + 2*nu)^2 + 
       (1 + 2*nu)^3)*(Log[-Sqrt[1 + 2*ep] + x] - Log[Sqrt[1 + 2*ep] + x]) + 
     Sqrt[-1 - 2*ep]*ep*
      ((Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         4*ep*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         6*ep^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 4*ep^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 4*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 16*ep*nu*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         24*ep^2*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 16*ep^3*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 8*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 8*ep*nu^2*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         56*ep^2*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 64*nu^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] - 32*ep*nu^3*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         64*ep^2*nu^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 112*nu^4*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         32*ep*nu^4*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] - 64*nu^5*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         2*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         8*ep^2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 8*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         4*ep*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 8*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/2 + 
         (nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 - 
         2*ep^2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
               Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                 32*nu^3 + 16*nu^4]])^2*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         ep*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
               Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                 32*nu^3 + 16*nu^4]])^2*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/
          8) + (Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
           x] + 4*ep*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 6*ep^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 4*ep^3*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         4*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         16*ep*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 24*ep^2*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 16*ep^3*nu*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         8*nu^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 8*ep*nu^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 56*ep^2*nu^2*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         64*nu^3*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] - 32*ep*nu^3*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 64*ep^2*nu^3*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         112*nu^4*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] - 32*ep*nu^4*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 64*nu^5*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] - 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         2*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         8*ep^2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 8*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         4*ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 8*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/2 + 
         (nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 - 
         2*ep^2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 2*nu^2*
          (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 2*nu^3*
          (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
         (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2) + 
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         4*ep*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] + 6*ep^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 4*ep^3*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         4*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] + 16*ep*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 24*ep^2*nu*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         16*ep^3*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] - 8*nu^2*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         8*ep*nu^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 56*ep^2*nu^2*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         64*nu^3*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] - 32*ep*nu^3*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 64*ep^2*nu^3*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         112*nu^4*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] - 32*ep*nu^4*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         64*nu^5*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] - ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] - 2*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         8*ep^2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 8*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         4*ep*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 8*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
          4 - (ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2*
           Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
          2 + (nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                  4*nu^2])/Sqrt[2]) + x])/2 - 2*ep^2*nu*
          (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2]) + x] + ep*nu^2*
          (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         2*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2]) + x])/(1 + 2*ep + 4*nu + 4*nu^2 + 
         (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/
          8) + (Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
           x] + 4*ep*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 6*ep^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 4*ep^3*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         4*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         16*ep*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 24*ep^2*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 16*ep^3*nu*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         8*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 8*ep*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 56*ep^2*nu^2*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         64*nu^3*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] - 32*ep*nu^3*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 64*ep^2*nu^3*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         112*nu^4*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] - 32*ep*nu^4*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 64*nu^5*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] - 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         2*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         8*ep^2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 8*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         4*ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 8*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/2 + 
         (nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 - 
         2*ep^2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
               Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                 32*nu^3 + 16*nu^4]])^2*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
               Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                 32*nu^3 + 16*nu^4]])^2*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
         (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2))))/
   (Sqrt[-1 - 2*ep]*ep*(2*ep^2 - (1 + 2*nu)^2)), 
  ((-1/2*I)*(1 + nu)*(-((1 + 2*nu)*(Log[-1 + x] - Log[1 + x])) + 
     ((I/2)*(2 + 4*ep + 4*nu)*(Log[-Sqrt[1 + 2*ep] + x] - 
        Log[Sqrt[1 + 2*ep] + x]))/Sqrt[-1 - 2*ep]))/ep, 
  ((I/2)*nu*((-1 + 4*ep - 2*nu)*(Log[-1 + x] - Log[1 + x]) - 
     (I*(-1 + 2*ep - 2*nu)*(Log[-Sqrt[1 + 2*ep] + x] - 
        Log[Sqrt[1 + 2*ep] + x]))/Sqrt[-1 - 2*ep]))/ep, 
  ((-1/4*I)*(-2*Sqrt[-1 - 2*ep]*(8*ep^3*(1 + nu) + ep^2*(1 + 2*nu) + 
       (1 + nu)*(1 + 2*nu)^3 - ep*(1 + 2*nu)^2*(3 + 2*nu))*
      (Log[-1 + x] - Log[1 + x]) + (2*I)*(1 + nu)*
      (4*ep^3 - 2*ep^2*(1 + 2*nu) - 2*ep*(1 + 2*nu)^2 + (1 + 2*nu)^3)*
      (Log[-Sqrt[1 + 2*ep] + x] - Log[Sqrt[1 + 2*ep] + x]) + 
     Sqrt[-1 - 2*ep]*ep*
      ((-5*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         4*ep*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         26*ep^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 12*ep^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 44*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 32*ep*nu*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         104*ep^2*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 16*ep^3*nu*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         152*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 88*ep*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 136*ep^2*nu^2*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         256*nu^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 96*ep*nu^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 64*ep^2*nu^3*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         208*nu^4*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 32*ep*nu^4*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 64*nu^5*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 
         2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         3*ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         6*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 10*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         8*ep*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 8*ep^2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         16*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 4*ep*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         8*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + ((-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 - 
         (3*ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/4 - 
         (3*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/2 + 
         (5*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/2 - 2*ep*nu*
          (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         2*ep^2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 4*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
               Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                 32*nu^3 + 16*nu^4]])^2*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         ep*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
               Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                 32*nu^3 + 16*nu^4]])^2*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/
          8) + (-5*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 4*ep*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 26*ep^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 12*ep^3*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         44*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 32*ep*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 104*ep^2*nu*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         16*ep^3*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 152*nu^2*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         88*ep*nu^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 136*ep^2*nu^2*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         256*nu^3*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 96*ep*nu^3*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 64*ep^2*nu^3*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         208*nu^4*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 32*ep*nu^4*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 64*nu^5*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 
         2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         3*ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         6*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 10*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         8*ep*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 8*ep^2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         16*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 4*ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         8*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + ((-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2*
           Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 - 
         (3*ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/4 - 
         (3*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/2 + 
         (5*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/2 - 2*ep*nu*
          (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         2*ep^2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 4*nu^2*
          (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 2*nu^3*
          (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
         (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2) + 
       (-5*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         4*ep*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] + 26*ep^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 12*ep^3*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         44*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] + 32*ep*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 104*ep^2*nu*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         16*ep^3*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] - 152*nu^2*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         88*ep*nu^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 136*ep^2*nu^2*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         256*nu^3*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 96*ep*nu^3*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         64*ep^2*nu^3*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] - 208*nu^4*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         32*ep*nu^4*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] - 64*nu^5*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         3*ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         6*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 10*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         8*ep*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] - 8*ep^2*nu*
          (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         16*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] - 4*ep*nu^2*
          (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         8*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + ((-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2*
           Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
          2 - (3*ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2*
           Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
          4 - (3*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2*
           Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
          2 + (5*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2*
           Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
          2 - 2*ep*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[
                3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                 32*nu^3 + 16*nu^4]])^2*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         2*ep^2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2]) + x] + 
         4*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2]) + x] - ep*nu^2*
          (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         2*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2]) + x])/(1 + 2*ep + 4*nu + 4*nu^2 + 
         (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/
          8) + (-5*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 4*ep*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 26*ep^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 12*ep^3*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         44*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         32*ep*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 104*ep^2*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 16*ep^3*nu*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         152*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 88*ep*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 136*ep^2*nu^2*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         256*nu^3*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 96*ep*nu^3*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 64*ep^2*nu^3*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         208*nu^4*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 32*ep*nu^4*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 64*nu^5*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 
         2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         3*ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         6*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 10*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         8*ep*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 8*ep^2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         16*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 4*ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         8*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + ((-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 - 
         (3*ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/4 - 
         (3*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/2 + 
         (5*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/2 - 2*ep*nu*
          (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         2*ep^2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 4*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
               Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                 32*nu^3 + 16*nu^4]])^2*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                 16*nu^4]])^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
               Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                 32*nu^3 + 16*nu^4]])^2*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
         (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2))))/
   (Sqrt[-1 - 2*ep]*ep*(2*ep^2 - (1 + 2*nu)^2)), 
  ((-1/2*I)*nu^2*(1 + 2*nu)*(-(Sqrt[-1 - 2*ep]*(-1 + 2*ep - 2*nu)*(1 + 2*nu)*
       (Log[-1 + x] - Log[1 + x])) + (I/2)*(4*ep^2 - 2*(1 + 2*nu)^2)*
      (Log[-Sqrt[1 + 2*ep] + x] - Log[Sqrt[1 + 2*ep] + x]) - 
     Sqrt[-1 - 2*ep]*ep*
      ((-Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         2*ep*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         2*ep^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] - 8*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 20*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 8*ep*nu^2*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         16*nu^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         ((-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 + 
         (nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2)/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/
          8) + (-Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] - 2*ep*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*ep^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] - 
         8*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         20*nu^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 8*ep*nu^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 16*nu^3*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         ((-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 + 
         (nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2)/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
         (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2) + 
       (-Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         2*ep*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] + 2*ep^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] - 
         8*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] - 20*nu^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 8*ep*nu^2*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         16*nu^3*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] + (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] - ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         ((-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
          4 - (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                  4*nu^2])/Sqrt[2]) + x])/4 + 
         (nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
          2)/(1 + 2*ep + 4*nu + 4*nu^2 + 
         (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/
          8) + (-Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] - 2*ep*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*ep^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] - 
         8*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         20*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 8*ep*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 16*nu^3*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         ((-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 + 
         (nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2)/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
         (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2))))/
   (Sqrt[-1 - 2*ep]*ep*(2*ep^2 - (1 + 2*nu)^2)), 0, 
  ((I/2)*(1 + nu)^2*(1 + 2*nu)*
    (-(Sqrt[-1 - 2*ep]*(4*ep^2 - (1 + 2*nu)^2 + ep*(2 + 4*nu))*
       (Log[-1 + x] - Log[1 + x])) + (I/2)*(4*ep^2 - 2*(1 + 2*nu)^2)*
      (Log[-Sqrt[1 + 2*ep] + x] - Log[Sqrt[1 + 2*ep] + x]) + 
     Sqrt[-1 - 2*ep]*ep*
      ((3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         6*ep*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         2*ep^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 16*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 16*ep*nu*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         28*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 8*ep*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 16*nu^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         ((-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2)/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/
          8) + (3*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 6*ep*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*ep^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 
         16*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 16*ep*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 28*nu^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 8*ep*nu^2*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         16*nu^3*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] - (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         ((-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2)/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
         (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2) + 
       (3*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         6*ep*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] + 2*ep^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 16*nu*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         16*ep*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 28*nu^2*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         8*ep*nu^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 16*nu^3*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         ((-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
          4 - (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                  4*nu^2])/Sqrt[2]) + x])/4 - 
         (nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
          2)/(1 + 2*ep + 4*nu + 4*nu^2 + 
         (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/
          8) + (3*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 6*ep*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*ep^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 
         16*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         16*ep*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 28*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 8*ep*nu^2*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         16*nu^3*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] - (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         ((-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2)/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
         (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2))))/
   (Sqrt[-1 - 2*ep]*ep*(2*ep^2 - (1 + 2*nu)^2)), 
  ((I/4)*(1 + 2*nu)*(-2*(ep + (1 + 2*nu)^2)*(Log[-1 + x] - Log[1 + x]) + 
     (1 + 2*ep)*((Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
           x] + 2*ep*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*ep^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 
         4*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         8*ep*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 4*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 8*ep*nu^2*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4)/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/
          8) + (Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
           x] + 2*ep*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*ep^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 
         4*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         8*ep*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 4*nu^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 8*ep*nu^2*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4)/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
         (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2) + 
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         2*ep*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] + 2*ep^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 
         4*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] + 8*ep*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 4*nu^2*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         8*ep*nu^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] - ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
          4)/(1 + 2*ep + 4*nu + 4*nu^2 + 
         (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/
          8) + (Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
           x] + 2*ep*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*ep^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 
         4*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         8*ep*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 4*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 8*ep*nu^2*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4)/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
         (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2))))/
   (2*ep^2 - (1 + 2*nu)^2), 0}, 
 {0, 0, (-5*Log[-1 + x] - 4*ep*Log[-1 + x] - 2*nu*Log[-1 + x] - 
    5*Log[1 + x] - 4*ep*Log[1 + x] - 2*nu*Log[1 + x] + 
    ((1 + 2*nu)*(1 + 6*ep - 2*nu + 4*ep*nu)*
      (-Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
     ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
    (1 + 2*nu)*(Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
        x] + Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
      Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
      Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/4, 0, 
  -1/4*((1 + 2*nu)*(-((1 + 2*ep)*Log[-1 + x]) - (1 + 2*ep)*Log[1 + x] + 
      ((3 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*ep*(1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
        (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
       Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
      ((-3 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*ep*(-1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
        (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
       Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))/(1 + 2*ep), 
  ((I/4)*(1 + 2*nu)*(2*(-2*ep^2 + 8*ep^3*nu - 2*nu*(1 + 2*nu)^2 - 
       ep*(1 + 4*nu + 12*nu^2 + 16*nu^3))*(Log[-1 + x] - Log[1 + x]) + 
     (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*ep*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*ep^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep^4*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       16*ep^2*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] + 16*ep^3*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] + 32*ep^4*nu*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       24*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] - 56*ep^2*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] - 16*ep^3*nu^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       32*nu^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       32*ep^2*nu^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] + 16*nu^4*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] + (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*ep^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       10*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       16*ep*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       16*ep^2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       16*ep^3*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       32*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       44*ep*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*ep^2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       40*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       32*ep*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       16*nu^4*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       ((-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 + 
       (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
       ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       ep^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       (5*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
       4*ep*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*ep^2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*ep^3*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       11*ep*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*ep^2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       10*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu^4*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
       ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8) + 
     (Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*ep*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*ep^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep^3*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep^4*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] - 16*ep^2*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] + 16*ep^3*nu*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       32*ep^4*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] + 24*nu^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] + 8*ep*nu^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       56*ep^2*nu^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] - 16*ep^3*nu^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       32*nu^3*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] - 32*ep^2*nu^3*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] + 16*nu^4*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*ep^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       10*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       16*ep*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       16*ep^2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       16*ep^3*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       32*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       44*ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*ep^2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       40*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       32*ep*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       16*nu^4*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       ((-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 + 
       (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
       ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       ep^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       (5*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
       4*ep*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*ep^2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*ep^3*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       11*ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*ep^2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       10*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu^4*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
       (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2) + 
     (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       2*ep*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       2*ep^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
          x] + 8*ep^3*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
            Sqrt[2]) + x] + 8*ep^4*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       8*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       8*ep*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
          x] - 16*ep^2*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
            Sqrt[2]) + x] + 16*ep^3*nu*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       32*ep^4*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
            Sqrt[2]) + x] + 24*nu^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       8*ep*nu^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
          x] - 56*ep^2*nu^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
            Sqrt[2]) + x] - 16*ep^3*nu^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       32*nu^3*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
          x] - 32*ep^2*nu^3*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
            Sqrt[2]) + x] + 16*nu^4*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       4*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       4*ep^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       10*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       16*ep*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       16*ep^2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       16*ep^3*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       32*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       44*ep*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       8*ep^2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       40*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       32*ep*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       16*nu^4*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       ((-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/4 + 
       (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/4 - 
       ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       ep^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       (5*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/2 + 
       4*ep*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       4*ep^2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       4*ep^3*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       8*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       11*ep*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       2*ep^2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       10*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       8*ep*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       4*nu^4*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
       ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8) + 
     (Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*ep*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*ep^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep^3*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep^4*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       16*ep^2*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] + 16*ep^3*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] + 32*ep^4*nu*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       24*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] - 56*ep^2*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] - 16*ep^3*nu^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       32*nu^3*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       32*ep^2*nu^3*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] + 16*nu^4*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] + (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*ep^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       10*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       16*ep*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       16*ep^2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       16*ep^3*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       32*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       44*ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*ep^2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       40*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       32*ep*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       16*nu^4*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       ((-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 + 
       (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
       ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       ep^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       (5*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
       4*ep*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*ep^2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*ep^3*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       11*ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*ep^2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       10*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu^4*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
       (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2)))/
   ((1 + 2*ep)*(2*ep^2 - (1 + 2*nu)^2)), 0, 0, 
  ((-1/4*I)*(1 + 2*nu)*(-2*(8*ep^3*(1 + nu) - 2*(1 + nu)*(1 + 2*nu)^2 + 
       ep^2*(6 + 8*nu) - ep*(1 + 12*nu + 28*nu^2 + 16*nu^3))*
      (Log[-1 + x] - Log[1 + x]) + 
     (-Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*ep*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       6*ep^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       24*ep^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       24*ep^4*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*ep*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       48*ep^3*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] + 32*ep^4*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] - 24*nu^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*ep*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] - 40*ep^2*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] + 16*ep^3*nu^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       32*nu^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       32*ep^2*nu^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] - 16*nu^4*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] + (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       3*ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       12*ep^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       24*ep*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       16*ep^3*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       52*ep*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep^2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       24*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       32*ep*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       16*nu^4*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       ((-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 + 
       (3*ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
       ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       3*ep^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       (nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
       6*ep*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*ep^3*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       13*ep*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*ep^2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       6*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*nu^4*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
       ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8) + 
     (-Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*ep*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       6*ep^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       24*ep^3*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] + 24*ep^4*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] - 
       8*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*ep*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] + 48*ep^3*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] + 32*ep^4*nu*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       24*nu^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] - 8*ep*nu^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] - 40*ep^2*nu^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       16*ep^3*nu^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] - 32*nu^3*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       32*ep^2*nu^3*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] - 16*nu^4*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       3*ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       12*ep^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       24*ep*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       16*ep^3*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       52*ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep^2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       24*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       32*ep*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       16*nu^4*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       ((-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 + 
       (3*ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
       ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       3*ep^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       (nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
       6*ep*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*ep^3*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       13*ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*ep^2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       6*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*nu^4*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
       (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2) + 
     (-Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       2*ep*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       6*ep^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
          x] + 24*ep^3*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
            Sqrt[2]) + x] + 24*ep^4*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       8*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       8*ep*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
          x] + 48*ep^3*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
            Sqrt[2]) + x] + 32*ep^4*nu*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       24*nu^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
          x] - 8*ep*nu^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
            Sqrt[2]) + x] - 40*ep^2*nu^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       16*ep^3*nu^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
            Sqrt[2]) + x] - 32*nu^3*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       32*ep^2*nu^3*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
            Sqrt[2]) + x] - 16*nu^4*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       3*ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       4*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       12*ep^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       24*ep*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       16*ep^3*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       8*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       52*ep*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       8*ep^2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       24*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       32*ep*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       16*nu^4*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       ((-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/4 + 
       (3*ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/4 - 
       ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       3*ep^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       (nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/2 + 
       6*ep*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       4*ep^3*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       13*ep*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       2*ep^2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       6*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       8*ep*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       4*nu^4*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
       ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8) + 
     (-Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*ep*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       6*ep^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       24*ep^3*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       24*ep^4*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*ep*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       48*ep^3*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] + 32*ep^4*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] - 24*nu^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*ep*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] - 40*ep^2*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] + 16*ep^3*nu^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       32*nu^3*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       32*ep^2*nu^3*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] - 16*nu^4*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] + (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       3*ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       12*ep^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       24*ep*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       16*ep^3*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       52*ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep^2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       24*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       32*ep*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       16*nu^4*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       ((-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 + 
       (3*ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
       ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       3*ep^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       (nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
       6*ep*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*ep^3*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       13*ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*ep^2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       6*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*nu^4*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
       (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2)))/
   ((1 + 2*ep)*(2*ep^2 - (1 + 2*nu)^2)), 
  ((I/2)*nu^2*(1 + 2*nu)*(2*(4*ep^2 + 8*ep^3 - (1 + 2*nu)^2 - 
       ep*(5 + 18*nu + 16*nu^2))*(Log[-1 + x] - Log[1 + x]) + 
     (1 + 2*nu)*((Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
           x] - 4*ep*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 2*ep^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 4*ep^3*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         4*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         8*ep*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] - 8*ep^2*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 4*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 
         2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         2*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 6*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         4*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + ((-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 - 
         (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/2 + 
         (3*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/2 + 
         nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/
          8) + (Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
           x] - 4*ep*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 2*ep^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 4*ep^3*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         4*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         8*ep*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] - 8*ep^2*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 4*nu^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 
         2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         2*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 6*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         4*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + ((-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2*
           Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 - 
         (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/2 + 
         (3*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/2 + 
         nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
         (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2) + 
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         4*ep*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] - 2*ep^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 4*ep^3*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         4*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] - 8*ep*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] - 8*ep^2*nu*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         4*nu^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] + 2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] - ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
         2*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 6*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         4*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + ((-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2*
           Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
          2 - (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                  4*nu^2])/Sqrt[2]) + x])/4 - 
         (ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                  4*nu^2])/Sqrt[2]) + x])/2 + 
         (3*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                  4*nu^2])/Sqrt[2]) + x])/2 + 
         nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/
          8) + (Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
           x] - 4*ep*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - 2*ep^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 4*ep^3*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         4*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         8*ep*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] - 8*ep^2*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 4*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 
         2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         2*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 6*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         4*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + ((-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 - 
         (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/2 + 
         (3*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/2 + 
         nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
         (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2))))/
   ((1 + 2*ep)*(2*ep^2 - (1 + 2*nu)^2)), 0, 
  ((I/2)*(1 + 3*nu + 2*nu^2)^2*(-2*(1 + ep + 2*nu)*
      (Log[-1 + x] - Log[1 + x]) + 
     (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*ep*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       6*ep^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*ep^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep^2*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] + 4*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] - ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
       (ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
       (nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
       nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
       ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8) + 
     (Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*ep*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       6*ep^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*ep^3*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] + 8*ep^2*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] + 4*nu^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
       (ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
       (nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
       nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
       (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2) + 
     (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       4*ep*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       6*ep^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
          x] + 4*ep^3*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
            Sqrt[2]) + x] + 
       4*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       8*ep*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
          x] + 8*ep^2*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
            Sqrt[2]) + x] + 4*nu^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       2*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       4*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/4 - 
       (ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/2 + 
       (nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/2 + 
       nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
       ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8) + 
     (Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*ep*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       6*ep^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*ep^3*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep^2*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] + 4*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] - ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
       (ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
       (nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
       nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
       (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2)))/
   ((1 + 2*ep)*(2*ep^2 - (1 + 2*nu)^2)), 
  ((I/4)*(1 + 2*nu)^2*(2*ep*(-Log[-1 + x] + Log[1 + x]) + 
     (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*ep^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*ep^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       ((-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
       (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
       (ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
       nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 16*
                ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
       ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8) + 
     (Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*ep^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*ep^3*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       ((-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
       (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
       (ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
       nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 16*
                ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
       (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2) + 
     (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       2*ep^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
          x] + 4*ep^3*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
            Sqrt[2]) + x] + 
       4*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       4*nu^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
          x] + (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       2*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       4*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       4*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       ((-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/4 - 
       (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/4 - 
       (ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/2 + 
       nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 16*
                ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
       ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8) + 
     (Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*ep^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*ep^3*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       ((-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
       (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
       (ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
       nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 16*
                ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
       (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2)))/
   (2*ep^2 - (1 + 2*nu)^2), 0}, 
 {0, 0, ((1 + 2*nu)*(Log[-1 + x] + Log[1 + x]))/4, 
  -((1 + ep)*(Log[-1 + x] + Log[1 + x])), 
  -1/4*((1 + 2*nu)*(Log[-1 + x] + Log[1 + x])), 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
 {0, 0, ((1 + 2*nu)*(-((1 + 2*ep)*Log[-1 + x]) - (1 + 2*ep)*Log[1 + x] + 
     ((-1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*ep*(-3 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
     ((1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*ep*(3 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))/(4*(1 + 2*ep)), 0, 
  (-3*Log[-1 + x] - 4*ep*Log[-1 + x] + 2*nu*Log[-1 + x] - 3*Log[1 + x] - 
    4*ep*Log[1 + x] + 2*nu*Log[1 + x] - 
    ((1 + 2*nu)*(-3 - 2*ep - 2*nu + 4*ep*nu)*
      (-Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
     ((1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
    ((-1 - 2*ep)*(1 + 2*nu)*(Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
          Sqrt[2] + x] + Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
          Sqrt[2] + x] + Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2]) + x] + Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
          Sqrt[2] + x]))/(1 + 2*ep))/4, 
  ((I/2)*(1 + 2*nu)*((-8*ep^3*nu + 2*nu*(1 + 2*nu)^2 - 2*ep^2*(1 + 4*nu) + 
       ep*(-1 + 4*nu + 20*nu^2 + 16*nu^3))*Log[-1 + x] + 
     (8*ep^3*nu - 2*nu*(1 + 2*nu)^2 + ep^2*(2 + 8*nu) - 
       ep*(-1 + 4*nu + 20*nu^2 + 16*nu^3))*Log[1 + x] + 
     ((I/2)*((1 + 2*nu)^2*(2 + 8*nu^3 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(10 - 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          4*nu^2*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(1 + 2*nu)*(5 + 32*nu^3 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu^2*(52 - 16*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          14*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^2*(-4*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu^2*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^3*(-1 - 8*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(4*ep^2*(4*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu^2*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        4*ep^3*(1 + 8*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        (1 + 2*nu)^2*(2 + 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(5 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        ep*(1 + 2*nu)*(5 + 32*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          14*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(13 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/
   ((1 + 2*ep)*(2*ep^2 - (1 + 2*nu)^2)), 0, 0, 
  ((-1/4*I)*(1 + 2*nu)*(2*(2*ep^2 + 8*ep^3*(1 + nu) - 
       2*(1 + nu)*(1 + 2*nu)^2 - ep*(7 + 28*nu + 36*nu^2 + 16*nu^3))*
      (Log[-1 + x] - Log[1 + x]) + 
     (-Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*ep*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       6*ep^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       24*ep^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       24*ep^4*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*ep*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       48*ep^3*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] + 32*ep^4*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] - 24*nu^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*ep*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] - 40*ep^2*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] + 16*ep^3*nu^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       32*nu^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       32*ep^2*nu^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] - 16*nu^4*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] + (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       3*ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       12*ep^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       24*ep*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       16*ep^3*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       52*ep*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep^2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       24*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       32*ep*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       16*nu^4*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       ((-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 + 
       (3*ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
       ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       3*ep^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       (nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
       6*ep*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*ep^3*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       13*ep*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*ep^2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       6*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*nu^4*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
       ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8) + 
     (-Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*ep*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       6*ep^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       24*ep^3*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] + 24*ep^4*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] - 
       8*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*ep*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] + 48*ep^3*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] + 32*ep^4*nu*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       24*nu^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] - 8*ep*nu^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] - 40*ep^2*nu^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       16*ep^3*nu^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] - 32*nu^3*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       32*ep^2*nu^3*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] - 16*nu^4*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       3*ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       12*ep^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       24*ep*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       16*ep^3*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       52*ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep^2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       24*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       32*ep*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       16*nu^4*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       ((-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 + 
       (3*ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
       ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       3*ep^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       (nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
       6*ep*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*ep^3*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       13*ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*ep^2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       6*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*nu^4*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
       (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2) + 
     (-Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       2*ep*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       6*ep^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
          x] + 24*ep^3*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
            Sqrt[2]) + x] + 24*ep^4*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       8*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       8*ep*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
          x] + 48*ep^3*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
            Sqrt[2]) + x] + 32*ep^4*nu*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       24*nu^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
          x] - 8*ep*nu^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
            Sqrt[2]) + x] - 40*ep^2*nu^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       16*ep^3*nu^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
            Sqrt[2]) + x] - 32*nu^3*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       32*ep^2*nu^3*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
            Sqrt[2]) + x] - 16*nu^4*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       3*ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       4*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       12*ep^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       24*ep*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       16*ep^3*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       8*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       52*ep*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       8*ep^2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       24*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       32*ep*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       16*nu^4*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       ((-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/4 + 
       (3*ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/4 - 
       ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       3*ep^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       (nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/2 + 
       6*ep*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       4*ep^3*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       13*ep*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       2*ep^2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       6*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       8*ep*nu^3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       4*nu^4*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
       ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8) + 
     (-Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*ep*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       6*ep^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       24*ep^3*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       24*ep^4*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*ep*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       48*ep^3*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] + 32*ep^4*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] - 24*nu^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*ep*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] - 40*ep^2*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] + 16*ep^3*nu^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       32*nu^3*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       32*ep^2*nu^3*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] - 16*nu^4*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] + (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       3*ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       12*ep^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       24*ep*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       16*ep^3*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       52*ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep^2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       24*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       32*ep*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       16*nu^4*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       ((-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 + 
       (3*ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
       ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       3*ep^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       (nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
       6*ep*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*ep^3*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       13*ep*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*ep^2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       6*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       8*ep*nu^3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*nu^4*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
             Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*
                nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
       (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2)))/
   ((1 + 2*ep)*(2*ep^2 - (1 + 2*nu)^2)), 
  ((I/2)*nu^2*(1 + 2*nu)^2*(-2*(-1 + ep - 2*nu)*(Log[-1 + x] - Log[1 + x]) + 
     (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*ep*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*ep^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*ep^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*ep*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*ep^2*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] + 4*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] + 2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       6*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       ((-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 - 
       (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
       (ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
       (3*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
       nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
       ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8) + 
     (Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*ep*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*ep^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*ep^3*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*ep*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] - 8*ep^2*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] + 4*nu^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       6*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       ((-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 - 
       (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
       (ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
       (3*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
       nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
       (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2) + 
     (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       4*ep*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       2*ep^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
          x] + 4*ep^3*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
            Sqrt[2]) + x] + 
       4*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       8*ep*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
          x] - 8*ep^2*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
            Sqrt[2]) + x] + 4*nu^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       2*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       6*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       4*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       ((-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/2 - 
       (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/4 - 
       (ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/2 + 
       (3*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/2 + 
       nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
       ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8) + 
     (Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       4*ep*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*ep^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*ep^3*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*ep*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       8*ep^2*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
          x] + 4*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] + 2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       6*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       ((-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 - 
       (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
       (ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
       (3*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
       nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
       (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2)))/
   ((1 + 2*ep)*(2*ep^2 - (1 + 2*nu)^2)), 0, 
  ((I/2)*(1 + nu)^2*(1 + 2*nu)*(-2*(4*ep^2 + 8*ep^3 - (1 + 2*nu)^2 - 
       ep*(3 + 14*nu + 16*nu^2))*(Log[-1 + x] - Log[1 + x]) + 
     (1 + 2*nu)*((Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
           x] + 4*ep*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 6*ep^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 4*ep^3*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         4*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         8*ep*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 8*ep^2*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 4*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] - 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         2*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         4*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/2 + 
         (nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
         nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/
          8) + (Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
           x] + 4*ep*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 6*ep^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 4*ep^3*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         4*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         8*ep*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 8*ep^2*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 4*nu^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] - 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         2*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         4*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2*
           Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/2 + 
         (nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
         nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
         (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2) + 
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         4*ep*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] + 6*ep^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 4*ep^3*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         4*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] + 8*ep*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] + 8*ep^2*nu*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         4*nu^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
            x] - ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] - 2*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         4*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
              Sqrt[2]) + x] - (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2*
           Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
          4 - (ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2*
           Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
          2 + (nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                  4*nu^2])/Sqrt[2]) + x])/2 + 
         nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
         ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/
          8) + (Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
           x] + 4*ep*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 6*ep^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] + 4*ep^3*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         4*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         8*ep*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + 
            x] + 8*ep^2*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 4*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                4*nu^2])/Sqrt[2] + x] - 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
         2*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] + 2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
              Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                32*nu^3 + 16*nu^4]])*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         4*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]])*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2] + x] - (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
         (ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                  16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                  16*nu^4]])^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 
                 4*nu^2])/Sqrt[2] + x])/2 + 
         (nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                  16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
           Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
         nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
          Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
        (1 + 2*ep + 4*nu + 4*nu^2 + 
         ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
         2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 
                16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 
                16*nu^4]]) - (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
                Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
                  32*nu^3 + 16*nu^4]])^2)/4 - 
         (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
         (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2))))/
   ((1 + 2*ep)*(2*ep^2 - (1 + 2*nu)^2)), 
  ((I/4)*(1 + 2*nu)^2*(2*ep*(-Log[-1 + x] + Log[1 + x]) + 
     (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*ep^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*ep^3*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu^2*Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       ((-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
       (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
       (ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
       nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 16*
                ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
       ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8) + 
     (Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*ep^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*ep^3*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu^2*Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       ((-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
       (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
       (ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
       nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 16*
                ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
       (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 - Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2) + 
     (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       2*ep^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
          x] + 4*ep^3*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
            Sqrt[2]) + x] + 
       4*nu*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       4*nu^2*Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + 
          x] + (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
       2*ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       4*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       4*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       ((-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/4 - 
       (ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/4 - 
       (ep^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/2 + 
       nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 16*
                ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       (2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2 + 
       ep*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8) + 
     (Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       2*ep^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*ep^3*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu^2*Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
       2*ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       4*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]])*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       ((-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
       (ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/4 - 
       (ep^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/2 + 
       nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 16*
                ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
               16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2*
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])/
      (1 + 2*ep + 4*nu + 4*nu^2 + 
       ep*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]]) + 
       2*nu*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) + 
       2*nu^2*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + 
            Sqrt[3 + 4*ep + 16*nu + 16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 
              32*nu^3 + 16*nu^4]]) - 
       (3*(-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
                16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^2)/4 - 
       (-2 - 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 16*ep*
                nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])^3/8 + 
       (2 + 2*Sqrt[2 + 2*ep + 4*nu + 4*nu^2 + Sqrt[3 + 4*ep + 16*nu + 
              16*ep*nu + 32*nu^2 + 16*ep*nu^2 + 32*nu^3 + 16*nu^4]])/2)))/
   (2*ep^2 - (1 + 2*nu)^2), 0}, 
 {0, 0, 
  ((-1/2*I)*(((-1/2*I)*(-3 - 4*ep^2 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*ep*(-7 - 4*nu^2 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] - 
     ((I/2)*(3 + 4*ep^2 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*ep*(7 + 4*nu^2 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
   Sqrt[3 + 4*ep + 4*nu + 4*nu^2], 0, 
  ((-1/2*I)*(((I/2)*(3 - 4*ep^2 + 4*nu + 2*ep*(1 + 2*nu)*
         (-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] + 
     ((I/2)*(-3 + 4*ep^2 - 4*nu + 2*ep*(1 + 2*nu)*(1 + 2*nu + 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
   Sqrt[3 + 4*ep + 4*nu + 4*nu^2], 
  (-2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-16*ep^3 + (1 + 2*nu)^2*(3 + 2*nu) + 
      ep^2*(-4 + 8*nu) + 8*ep*(1 + 3*nu + 2*nu^2))*Log[-1 + x] - 
    8*(1 - 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)*
     Log[x] - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
     (-16*ep^3 + (1 + 2*nu)^2*(3 + 2*nu) + ep^2*(-4 + 8*nu) + 
      8*ep*(1 + 3*nu + 2*nu^2))*Log[1 + x] + 
    (-8*ep^3*(1 + 4*nu) + 2*ep*(1 + 2*nu)*(3 + 8*nu^2 + 
        nu*(14 - 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
      (1 + 2*nu)^2*(-3 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(-8 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      4*ep^2*(-1 + 8*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(-4 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
      Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]) - 
    (-8*ep^3*(1 + 4*nu) + 2*ep*(1 + 2*nu)*(3 + 8*nu^2 + 
        2*nu*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
      4*ep^2*(1 - 8*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(4 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      (1 + 2*nu)^2*(3 - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(8 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
      Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
   (8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)), 0, 0, 
  -1/8*((1 + 2*nu)*(2*(-3 + 4*ep + 4*ep^2 - 8*nu - 4*nu^2)*Log[-1 + x] + 
      2*(-3 + 4*ep + 4*ep^2 - 8*nu - 4*nu^2)*Log[1 + x] + 
      ((8*ep^3*(3 + 4*nu) - 2*ep*(1 + 2*nu)*(7 + 26*nu + 16*nu^2 + 
           2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
         4*ep^2*(3 + 8*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           2*nu*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         (1 + 2*nu)^2*(12*nu^2 + 3*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
           2*nu*(8 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
        (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
       ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
      ((-8*ep^3*(3 + 4*nu) + 2*ep*(1 + 2*nu)*(7 + 26*nu + 16*nu^2 - 
           2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
         4*ep^2*(-3 - 8*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           2*nu*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         (1 + 2*nu)^2*(-12*nu^2 + 2*nu*(-8 + Sqrt[3 + 4*ep + 4*nu + 4*
                nu^2]) + 3*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
        (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
       ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))/(2*ep^2 - (1 + 2*nu)^2), 
  -1/4*(nu*(1 + 2*nu)*(2*(-2 + 4*ep^2 - 5*nu - 4*ep*nu - 2*nu^2)*
       Log[-1 + x] + 2*(-2 + 4*ep^2 - 5*nu - 4*ep*nu - 2*nu^2)*Log[1 + x] + 
      (nu*(-4*ep^2 - (1 + 2*nu)*(-3 + 2*nu + 
           3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         ep*(-2 + 8*nu + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
        (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
       Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
      (nu*(4*ep^2 - (1 + 2*nu)*(3 - 2*nu + 3*Sqrt[3 + 4*ep + 4*nu + 
              4*nu^2]) + ep*(2 - 8*nu + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
        (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
       Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))/(2*ep^2 - (1 + 2*nu)^2), 0, 
  -1/4*((1 + 3*nu + 2*nu^2)^2*(-2*Log[-1 + x] - 2*Log[1 + x] + 
      ((2*ep - 4*ep^2 + (1 + 2*nu)*(3 + 6*nu + Sqrt[3 + 4*ep + 4*nu + 
             4*nu^2]))*(Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
            Sqrt[2] + x] + Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
            Sqrt[2] + x]))/((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
      ((-2*ep + 4*ep^2 + (1 + 2*nu)*(-3 - 6*nu + Sqrt[3 + 4*ep + 4*nu + 
             4*nu^2]))*(Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
             Sqrt[2]) + x] + Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
            Sqrt[2] + x]))/((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))/
    (2*ep^2 - (1 + 2*nu)^2), 
  -1/8*((1 + 2*ep)*(1 + 2*nu)*(-2*(-1 + 2*ep - 2*nu)*Log[-1 + x] - 
      2*(-1 + 2*ep - 2*nu)*Log[1 + x] + 
      ((-4*ep^2 - (1 + 2*nu)*(-3 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         2*ep*(2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
        (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
       Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
      ((4*ep^2 + 2*ep*(-2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
         (1 + 2*nu)*(3 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
        (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
       Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))/(2*ep^2 - (1 + 2*nu)^2), 0}, 
 {((-1/8*I)*(1 + 2*ep)*(1 + 2*nu)*(Log[-1 + x] - Log[1 + x] + 
     I*Sqrt[-1 - 2*ep]*(Log[-Sqrt[1 + 2*ep] + x] - Log[Sqrt[1 + 2*ep] + x])))/
   (ep*(1 + nu)), ((I/8)*(1 + 2*ep)^2*(1 + 2*nu)*(-Log[-1 + x] + Log[1 + x] + 
     (I*(Log[-Sqrt[1 + 2*ep] + x] - Log[Sqrt[1 + 2*ep] + x]))/
      Sqrt[-1 - 2*ep]))/(ep*(1 + nu)), 
  ((I/4)*(((-2*I)*(ep - nu)*(Log[-Sqrt[1 + 2*ep] + x] - 
        Log[Sqrt[1 + 2*ep] + x]))/Sqrt[-1 - 2*ep] + 
     ((I/2)*(-3 - 8*nu - 8*nu^2 - 8*ep^2*(1 + nu) + 
        Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*ep*(-5 - 8*nu^3 + 
          3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          6*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(3 + 8*nu + 8*nu^2 + 8*ep^2*(1 + nu) + 
        Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*ep*(5 + 8*nu^3 + 
          3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          6*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/(1 + nu), 
  -1/2*((1 + 2*ep)*(Log[-Sqrt[1 + 2*ep] + x] - Log[Sqrt[1 + 2*ep] + x]))/
    (Sqrt[-1 - 2*ep]*(1 + nu)), 
  ((-1/4*I)*(((2*I)*(1 + ep + nu)*(Log[-Sqrt[1 + 2*ep] + x] - 
        Log[Sqrt[1 + 2*ep] + x]))/Sqrt[-1 - 2*ep] + 
     ((I/2)*(-8*ep^2*(1 + nu) - (3 + 4*nu)*
         (1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*ep*(-5 - 8*nu^3 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(8*ep^2*(1 + nu) - (3 + 4*nu)*
         (-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*ep*(5 + 8*nu^3 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/(1 + nu), 
  (2*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-(nu*(1 + 2*nu)^2) + 
      ep^3*(2 + 4*nu) + ep^2*(3 + 8*nu) + ep*(1 + nu - 4*nu^2 - 4*nu^3))*
     Log[-1 + x] + 2*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
     (-(nu*(1 + 2*nu)^2) + ep^3*(2 + 4*nu) + ep^2*(3 + 8*nu) + 
      ep*(1 + nu - 4*nu^2 - 4*nu^3))*Log[1 + x] + 2*nu*(1 + 2*ep + 2*nu)*
     Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)*
     (Log[-Sqrt[1 + 2*ep] + x] + Log[Sqrt[1 + 2*ep] + x]) - 
    ep*(8*ep^3*(1 + 5*nu + 4*nu^2) + ep*(1 + 2*nu)*(3 - 10*nu - 40*nu^2 - 
        32*nu^3 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        6*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - (1 + 2*nu)^2*
       (12*nu^3 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        nu*(-7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*nu^2*(8 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      2*ep^2*(5 + 16*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        4*nu^2*(6 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*nu*(10 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
      Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]) + 
    ep*(8*ep^3*(1 + 5*nu + 4*nu^2) - ep*(1 + 2*nu)*(-3 + 10*nu + 40*nu^2 + 
        32*nu^3 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        6*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
      2*ep^2*(-5 - 16*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(-10 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*nu^2*(-6 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
      (1 + 2*nu)^2*(12*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        2*nu^2*(-8 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        nu*(7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
      Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
   (8*ep*(1 + nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)), 
  (-((1 + 2*ep)*(1 + 4*ep + 2*nu)*Log[-1 + x]) + 4*ep*(-1 + 2*ep)*Log[x] - 
    (1 + 2*ep)*(1 + 4*ep + 2*nu)*Log[1 + x] + (1 + 2*ep + 2*nu)*
     (Log[-Sqrt[1 + 2*ep] + x] + Log[Sqrt[1 + 2*ep] + x]))/(4*ep), 
  (nu*((1 + 2*ep)*(1 + 2*nu)*Log[-1 + x] + (1 + 2*ep)*(1 + 2*nu)*Log[1 + x] + 
     (-1 + 2*ep - 2*nu)*(Log[-Sqrt[1 + 2*ep] + x] + 
       Log[Sqrt[1 + 2*ep] + x])))/(4*ep*(1 + nu)), 
  (2*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*((1 + nu)*(1 + 2*nu)^2 - 
      2*ep^3*(5 + 6*nu) - ep^2*(7 + 16*nu + 8*nu^2) + 
      ep*(1 + 9*nu + 20*nu^2 + 12*nu^3))*Log[-1 + x] + 
    2*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*((1 + nu)*(1 + 2*nu)^2 - 
      2*ep^3*(5 + 6*nu) - ep^2*(7 + 16*nu + 8*nu^2) + 
      ep*(1 + 9*nu + 20*nu^2 + 12*nu^3))*Log[1 + x] + 
    2*(-1 + 2*ep - 2*nu)*(1 + nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
     (-2*ep^2 + (1 + 2*nu)^2)*(Log[-Sqrt[1 + 2*ep] + x] + 
      Log[Sqrt[1 + 2*ep] + x]) + ep*(8*ep^3*(3 + 7*nu + 4*nu^2) + 
      2*ep^2*(15 + 16*nu^3 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        12*nu^2*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        6*nu*(8 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      ep*(1 + 2*nu)*(1 - 16*nu^3 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        8*nu^2*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*nu*(-5 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
      (1 + 2*nu)^2*(4*nu^3 + 3*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*nu^2*(8 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        nu*(17 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
      Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]) + 
    ep*(-8*ep^3*(3 + 7*nu + 4*nu^2) + (1 + 2*nu)^2*
       (6 + 4*nu^3 - 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(17 - 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        nu^2*(16 - 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      2*ep^2*(-15 - 16*nu^3 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        12*nu^2*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        6*nu*(-8 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      ep*(1 + 2*nu)*(-1 + 16*nu^3 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        8*nu^2*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*nu*(5 + 7*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
      Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
   (8*ep*(1 + nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)), 
  -1/4*(nu^2*(1 + 2*nu)*((1 + 2*nu)*(1 + 2*(1 + ep)*nu)*
       Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Log[-1 + x] + 
      (1 + 2*nu)*(1 + 2*(1 + ep)*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       Log[1 + x] + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(2*ep^2 - (1 + 2*nu)^2)*
       (Log[-Sqrt[1 + 2*ep] + x] + Log[Sqrt[1 + 2*ep] + x]) - 
      ep*(-4*ep^2*(1 + nu) + ep*(1 + 4*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        (1 + 2*nu)*(3 + 6*nu^2 + nu*(7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]) + 
      ep*(-4*ep^2*(1 + nu) + ep*(1 + 4*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        (1 + 2*nu)*(3 + 6*nu^2 - nu*(-7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])))/
    (ep*(1 + nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)), 0, 
  ((1 + nu)*(1 + 2*nu)*((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
      (1 + 4*ep^2 + 2*nu + ep*(4 + 6*nu))*Log[-1 + x] + 
     (1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(1 + 4*ep^2 + 2*nu + 
       ep*(4 + 6*nu))*Log[1 + x] + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
      (2*ep^2 - (1 + 2*nu)^2)*(Log[-Sqrt[1 + 2*ep] + x] + 
       Log[Sqrt[1 + 2*ep] + x]) - ep*(4*ep^2*(1 + nu) + 
       ep*(7 + 8*nu^2 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         4*nu*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       (1 + 2*nu)*(3 + 2*nu^2 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         nu*(5 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]) + 
     ep*(4*ep^2*(1 + nu) + (1 + 2*nu)*(3 + 2*nu^2 - 
         2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         nu*(5 - 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       ep*(7 + 8*nu^2 - 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         4*nu*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])))/
   (4*ep*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)), 
  ((1 + 2*ep)*(1 + 2*nu)^2*(-2*(1 + ep + nu)*Log[-1 + x] - 
     2*(1 + ep + nu)*Log[1 + x] + 
     ((4*ep^2*(1 + nu) + (1 + 2*nu)*(-2*nu^2 + Sqrt[3 + 4*ep + 4*nu + 
            4*nu^2] + nu*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        ep*(3 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
     ((-4*ep^2*(1 + nu) + (1 + 2*nu)*(nu + 2*nu^2 + 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        ep*(-3 - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))/
   (8*(1 + nu)*(2*ep^2 - (1 + 2*nu)^2)), 0}, 
 {((I/8)*(1 + 2*ep)^2*(1 + 2*nu)*(-Log[-1 + x] + Log[1 + x] + 
     (I*(Log[-Sqrt[1 + 2*ep] + x] - Log[Sqrt[1 + 2*ep] + x]))/
      Sqrt[-1 - 2*ep]))/(ep*nu), ((-1/8*I)*(1 + 2*ep)*(1 + 2*nu)*
    (Log[-1 + x] - Log[1 + x] + I*Sqrt[-1 - 2*ep]*(Log[-Sqrt[1 + 2*ep] + x] - 
       Log[Sqrt[1 + 2*ep] + x])))/(ep*nu), 
  ((-1/4*I)*(((2*I)*(ep - nu)*(Log[-Sqrt[1 + 2*ep] + x] - 
        Log[Sqrt[1 + 2*ep] + x]))/Sqrt[-1 - 2*ep] + 
     ((I/2)*(-8*ep^2*nu + (1 + 4*nu)*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*ep*(-3 - 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(-8 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(8*ep^2*nu + (1 + 4*nu)*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*ep*(3 + 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(8 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/nu, 
  -1/2*((1 + 2*ep)*(Log[-Sqrt[1 + 2*ep] + x] - Log[Sqrt[1 + 2*ep] + x]))/
    (Sqrt[-1 - 2*ep]*nu), 
  ((I/4)*(((-2*I)*(1 + ep + nu)*(Log[-Sqrt[1 + 2*ep] + x] - 
        Log[Sqrt[1 + 2*ep] + x]))/Sqrt[-1 - 2*ep] + 
     ((I/2)*(3 + 8*nu - 8*ep^2*nu + 8*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*ep*(1 - 8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(-3 - 8*nu + 8*ep^2*nu - 8*nu^2 + 
        Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 2*ep*(-1 + 8*nu^3 + 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/nu, 
  (-2*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(nu*(1 + 2*nu)^2 - 
      2*ep^3*(1 + 6*nu) + ep^2*(-1 + 8*nu^2) + ep*nu*(5 + 16*nu + 12*nu^2))*
     Log[-1 + x] - 2*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
     (nu*(1 + 2*nu)^2 - 2*ep^3*(1 + 6*nu) + ep^2*(-1 + 8*nu^2) + 
      ep*nu*(5 + 16*nu + 12*nu^2))*Log[1 + x] + 2*nu*(1 + 2*ep + 2*nu)*
     Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)*
     (Log[-Sqrt[1 + 2*ep] + x] + Log[Sqrt[1 + 2*ep] + x]) - 
    ep*(-8*ep^3*nu*(1 + 4*nu) + 2*ep^2*(1 + 16*nu^3 + 
        Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        6*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        12*nu^2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
      ep*(3 + 16*nu + 32*nu^4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu^2*(44 - 12*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        16*nu^3*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
      (1 + 2*nu)^2*(-1 + 4*nu^3 + 3*nu*(-1 + Sqrt[3 + 4*ep + 4*nu + 
            4*nu^2]) + nu^2*(-4 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
      Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]) + 
    ep*(-8*ep^3*nu*(1 + 4*nu) - 2*ep^2*(-1 - 16*nu^3 + 
        Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        6*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        12*nu^2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
      ep*(1 + 2*nu)*(3 + 16*nu^3 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        8*nu^2*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*nu*(5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
      (1 + 2*nu)^2*(-1 + 4*nu^3 - 3*nu*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        2*nu^2*(2 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
      Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
   (8*ep*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)), 
  -1/4*((1 + nu)*((1 + 2*ep)*(1 + 2*nu)*Log[-1 + x] + 
      (1 + 2*ep)*(1 + 2*nu)*Log[1 + x] - (1 + 2*ep + 2*nu)*
       (Log[-Sqrt[1 + 2*ep] + x] + Log[Sqrt[1 + 2*ep] + x])))/(ep*nu), 
  (-((1 + 2*ep)*(-1 + 4*ep - 2*nu)*Log[-1 + x]) + 4*ep*(-1 + 2*ep)*Log[x] - 
    (1 + 2*ep)*(-1 + 4*ep - 2*nu)*Log[1 + x] + (-1 + 2*ep - 2*nu)*
     (Log[-Sqrt[1 + 2*ep] + x] + Log[Sqrt[1 + 2*ep] + x]))/(4*ep), 
  (2*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^3*(1 + 2*nu) + 
      (1 + nu)*(1 + 2*nu)^2 - ep^2*(5 + 8*nu) + ep*nu*(3 + 8*nu + 4*nu^2))*
     Log[-1 + x] + 2*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
     (-2*ep^3*(1 + 2*nu) + (1 + nu)*(1 + 2*nu)^2 - ep^2*(5 + 8*nu) + 
      ep*nu*(3 + 8*nu + 4*nu^2))*Log[1 + x] + 2*(-1 + 2*ep - 2*nu)*(1 + nu)*
     Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)*
     (Log[-Sqrt[1 + 2*ep] + x] + Log[Sqrt[1 + 2*ep] + x]) - 
    ep*(8*ep^3*nu*(3 + 4*nu) + (1 + 2*nu)^2*(3 + 12*nu^3 + 
        2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu^2*(10 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        nu*(11 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
      2*ep^2*(7 + 16*nu^3 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        4*nu^2*(6 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        nu*(20 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
      ep*(1 + 2*nu)*(5 + 56*nu^2 + 32*nu^3 + 
        3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(26 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
      Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]) + 
    ep*(8*ep^3*nu*(3 + 4*nu) - ep*(1 + 2*nu)*(5 + 56*nu^2 + 32*nu^3 - 
        3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(26 - 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      (1 + 2*nu)^2*(3 + 12*nu^3 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(11 - 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        2*nu^2*(-10 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      2*ep^2*(-7 - 16*nu^3 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        4*nu^2*(-6 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        nu*(-20 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
      Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
   (8*ep*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)), 
  (nu*(1 + 2*nu)*(-((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       (1 - 4*ep^2 + 2*nu + ep*(2 + 6*nu))*Log[-1 + x]) - 
     (1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(1 - 4*ep^2 + 2*nu + 
       ep*(2 + 6*nu))*Log[1 + x] + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
      (-2*ep^2 + (1 + 2*nu)^2)*(Log[-Sqrt[1 + 2*ep] + x] + 
       Log[Sqrt[1 + 2*ep] + x]) + 
     ep*(4*ep^2*nu - ep*(-1 + 8*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         4*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       (1 + 2*nu)*(2*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         nu*(-1 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]) - 
     ep*(4*ep^2*nu - (1 + 2*nu)*(nu - 2*nu^2 + Sqrt[3 + 4*ep + 4*nu + 
           4*nu^2] + 3*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       ep*(1 - 8*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         4*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
      (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])))/
   (4*ep*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)), 0, 
  ((1 + 3*nu + 2*nu^2)^2*((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
      (1 + 2*nu + 2*ep*(1 + nu))*Log[-1 + x] + 
     (1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(1 + 2*nu + 2*ep*(1 + nu))*
      Log[1 + x] + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(2*ep^2 - (1 + 2*nu)^2)*
      (Log[-Sqrt[1 + 2*ep] + x] + Log[Sqrt[1 + 2*ep] + x]) - 
     ep*(-4*ep^2*nu + ep*(3 + 4*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       (1 + 2*nu)*(2 + 6*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         nu*(5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]) - 
     ep*(4*ep^2*nu + ep*(-3 - 4*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       (1 + 2*nu)*(-2 - 6*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         nu*(-5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])))/
   (4*ep*nu*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
    (-2*ep^2 + (1 + 2*nu)^2)), 
  -1/8*((1 + 2*ep)*(1 + 2*nu)^2*(2*(ep - nu)*Log[-1 + x] + 
      2*(ep - nu)*Log[1 + x] + 
      ((4*ep^2*nu - (1 + 2*nu)*(1 + 2*nu^2 - 
           nu*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
         ep*(1 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           2*nu*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
        (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
       ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
      ((-4*ep^2*nu + ep*(1 + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
           2*nu*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         (1 + 2*nu)*(1 + 2*nu^2 + nu*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
        (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
       ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))/
    (nu*(2*ep^2 - (1 + 2*nu)^2)), 0}, 
 {0, 0, 
  ((-1/2*I)*(((-1/2*I)*(1 + 4*ep^2 + 4*nu - 2*ep*(1 + 2*nu)*
         (-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] + 
     ((I/2)*(1 + 4*ep^2 + 4*nu + 2*ep*(1 + 2*nu)*(1 + 2*nu + 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
   Sqrt[3 + 4*ep + 4*nu + 4*nu^2], 0, 
  ((I/2)*(((I/2)*(-3 - 4*ep^2 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        ep*(-8*nu^2 + 4*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
          2*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] + 
     ((I/2)*(3 + 4*ep^2 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        ep*(6 + 8*nu^2 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
   Sqrt[3 + 4*ep + 4*nu + 4*nu^2], 
  -1/8*((1 + 2*nu)*(-2*(1 + 4*ep + 4*ep^2 - 4*nu^2)*Log[-1 + x] - 
      2*(1 + 4*ep + 4*ep^2 - 4*nu^2)*Log[1 + x] + 
      ((8*ep^3*(1 + 4*nu) + 2*ep*(1 + 2*nu)*(3 - 6*nu - 16*nu^2 + 
           2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - (1 + 2*nu)^2*
          (-1 + 12*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           2*nu*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         4*ep^2*(3 + 8*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           2*nu*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
        (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
       ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
      ((-8*ep^3*(1 + 4*nu) + 2*ep*(1 + 2*nu)*(-3 + 6*nu + 16*nu^2 + 
           2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + (1 + 2*nu)^2*
          (-1 + 12*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
           2*nu*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
         4*ep^2*(-3 - 8*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
           2*nu*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
        (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
       ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))/(2*ep^2 - (1 + 2*nu)^2), 
  0, 0, (2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(16*ep^3 - 8*ep*nu*(1 + 2*nu) + 
      (-1 + 2*nu)*(1 + 2*nu)^2 + 4*ep^2*(3 + 2*nu))*Log[-1 + x] - 
    8*(1 - 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)*
     Log[x] + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
     (16*ep^3 - 8*ep*nu*(1 + 2*nu) + (-1 + 2*nu)*(1 + 2*nu)^2 + 
      4*ep^2*(3 + 2*nu))*Log[1 + x] + 
    (-8*ep^3*(3 + 4*nu) + 2*ep*(1 + 2*nu)*(-3 + 8*nu^2 - 
        4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(2 - 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      (1 + 2*nu)^2*(9 + 4*nu^2 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(8 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
      4*ep^2*(11 + 8*nu^2 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(20 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
      Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]) - 
    (-8*ep^3*(3 + 4*nu) + (1 + 2*nu)^2*(9 + 4*nu^2 - 
        5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(16 - 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      2*ep*(1 + 2*nu)*(-3 + 8*nu^2 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(2 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      4*ep^2*(-11 - 8*nu^2 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu*(-20 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
      Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
   (8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)), 
  (nu^2*(1 + 2*nu)^2*(-2*Log[-1 + x] - 2*Log[1 + x] + 
     ((2*ep - 4*ep^2 + (1 + 2*nu)*(3 + 6*nu + Sqrt[3 + 4*ep + 4*nu + 
            4*nu^2]))*(Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x] + Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x]))/((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
     ((-2*ep + 4*ep^2 + (1 + 2*nu)*(-3 - 6*nu + Sqrt[3 + 4*ep + 4*nu + 
            4*nu^2]))*(Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
            Sqrt[2]) + x] + Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/
           Sqrt[2] + x]))/((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))/
   (4*(2*ep^2 - (1 + 2*nu)^2)), 0, 
  ((1 + 3*nu + 2*nu^2)*(2*(1 + 4*ep^2 + nu - 2*nu^2 + 4*ep*(1 + nu))*
      Log[-1 + x] + 2*(1 + 4*ep^2 + nu - 2*nu^2 + 4*ep*(1 + nu))*Log[1 + x] - 
     ((1 + nu)*(4*ep^2 + 2*ep*(5 + 4*nu + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        (1 + 2*nu)*(5 + 2*nu + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
     ((1 + nu)*(4*ep^2 + ep*(10 + 8*nu - 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        (1 + 2*nu)*(-5 - 2*nu + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))/(4*(2*ep^2 - (1 + 2*nu)^2)), 
  -1/8*((1 + 2*ep)*(1 + 2*nu)*(-2*(1 + 2*ep + 2*nu)*Log[-1 + x] - 
      2*(1 + 2*ep + 2*nu)*Log[1 + x] + 
      ((4*ep^2 + (1 + 2*nu)*(1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         2*ep*(2 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
        (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
         Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
       Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
      ((-4*ep^2 + 2*ep*(-2 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         (1 + 2*nu)*(-1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
        (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
         Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
       Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))/(2*ep^2 - (1 + 2*nu)^2), 0}, 
 {0, 0, 0, 0, 0, 4*Log[x], 0, 0, 0, (-1 - 2*ep + 4*nu)*Log[x], 0, 0, 0, 0}, 
 {0, 0, 0, 0, 0, 0, 2*Log[x], -2*Log[x], 0, 0, -((3 + 2*ep)*Log[x]), 0, 0, 
  0}, {0, 0, 0, 0, 0, 0, 0, 0, -4*Log[x], 0, 0, -((5 + 2*ep + 4*nu)*Log[x]), 
  0, 0}, 
 {0, 0, 
  ((2*I)*(((-1/2*I)*(-2 - 4*ep^2 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        4*ep*(-2 - 2*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] - 
     ((I/2)*(2 + 4*ep^2 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        4*ep*(2 + 2*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          nu*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
   Sqrt[3 + 4*ep + 4*nu + 4*nu^2], 0, 
  ((2*I)*(((I/2)*(-4*ep^2 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        4*ep*(1 + nu + 2*nu^2 - nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      Sqrt[-2 - 2*ep - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])] + 
     ((I/2)*(4*ep^2 - 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        4*ep*(1 + nu + 2*nu^2 + nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      Sqrt[-2 - 2*ep - 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]))/
   Sqrt[3 + 4*ep + 4*nu + 4*nu^2], 
  (-4*ep^2*(1 + 2*ep - 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Log[-1 + x] - 
    4*(1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)*
     Log[x] - 4*ep^2*(1 + 2*ep - 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
     Log[1 + x] - (-8*ep^3*(1 + 4*nu) - 2*ep*(1 + 2*nu)*
       (-12*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(-5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      (1 + 2*nu)^2*(1 + 4*nu^2 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        2*nu*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      8*ep^2*(-1 + nu*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
      Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]) + 
    (-8*ep^3*(1 + 4*nu) - 8*ep^2*
       (1 + nu*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      (1 + 2*nu)^2*(1 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      2*ep*(1 + 2*nu)*(12*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        2*nu*(5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
      Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
   (2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)), 0, 0, 
  -1/2*(-4*ep^2*(3 + 2*ep + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
      Log[-1 + x] - 4*(1 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
      (-2*ep^2 + (1 + 2*nu)^2)*Log[x] - 4*ep^2*(3 + 2*ep + 2*nu)*
      Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Log[1 + x] + 
     (8*ep^3*(3 + 4*nu) - (1 + 2*nu)^2*(3 - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 2*ep*(1 + 2*nu)*
        (-2 - 12*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       8*ep^2*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         nu*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]) + 
     (-8*ep^3*(3 + 4*nu) - (1 + 2*nu)^2*(-3 + 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       8*ep^2*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         nu*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       2*ep*(1 + 2*nu)*(2 + 12*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(7 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
    (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)), 
  (nu*(1 + 2*nu)*((-1 + 2*ep^2 - 2*nu - 4*ep*nu)*Log[-1 + x] + 
     (-1 + 2*ep^2 - 2*nu - 4*ep*nu)*Log[1 + x] + 
     (nu*(-4*ep^2 - (1 + 2*nu)*(-3 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*ep*(2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
     (nu*(-4*ep^2 - 2*ep*(-2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        (1 + 2*nu)*(3 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))/(2*ep^2 - (1 + 2*nu)^2), 0, 
  ((1 + 3*nu + 2*nu^2)*((1 + 2*ep^2 + 2*nu + 4*ep*(1 + nu))*Log[-1 + x] + 
     (1 + 2*ep^2 + 2*nu + 4*ep*(1 + nu))*Log[1 + x] - 
     ((1 + nu)*(4*ep^2 + (1 + 2*nu)*(1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 
            4*nu^2]) + 2*ep*(2 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
     ((1 + nu)*(-4*ep^2 + 2*ep*(-2 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        (1 + 2*nu)*(-1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))/(2*ep^2 - (1 + 2*nu)^2), 
  (-2*(1 + 2*ep)*(1 + 2*nu)^2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Log[-1 + x] - 
    2*(3 + 2*ep)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)*
     Log[x] - 2*(1 + 2*ep)*(1 + 2*nu)^2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
     Log[1 + x] + (1 + 2*ep)*(1 + 2*nu)*(2*ep + 4*ep^2 + 
      (1 + 2*nu)*(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
     (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
      Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]) + 
    (1 + 2*ep)*(1 + 2*nu)*(-2*ep - 4*ep^2 + (1 + 2*nu)*
       (1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]))*
     (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
      Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
   (2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)), 0}, 
 {((-1/8*I)*(1 + 2*nu)*((-1 + 4*nu + 4*nu^2 - 4*ep^2*(1 + nu) + 
       2*ep*(-2 + nu + 2*nu^2))*Log[-1 + x] + 
     (1 - 4*nu - 4*nu^2 + 4*ep^2*(1 + nu) - 2*ep*(-2 + nu + 2*nu^2))*
      Log[1 + x] - I*(-1 - 2*ep)^(3/2)*(-1 + 4*nu + 4*nu^2)*
      (Log[-Sqrt[1 + 2*ep] + x] - Log[Sqrt[1 + 2*ep] + x])))/
   (ep*nu*(1 + nu)), 
  ((I/8)*(1 + 2*nu)*(-((-1 + 4*nu + 4*ep^2*nu + 4*nu^2 + 
        ep*(-2 + 6*nu + 4*nu^2))*Log[-1 + x]) + 
     (-1 + 4*nu + 4*ep^2*nu + 4*nu^2 + ep*(-2 + 6*nu + 4*nu^2))*Log[1 + x] + 
     I*(-1 - 2*ep)^(3/2)*(-1 + 4*nu + 4*nu^2)*(Log[-Sqrt[1 + 2*ep] + x] - 
       Log[Sqrt[1 + 2*ep] + x])))/(ep*nu*(1 + nu)), 
  ((I/4)*(((-2*I)*(ep - nu)*(-1 + 4*nu + 4*nu^2)*(Log[-Sqrt[1 + 2*ep] + x] - 
        Log[Sqrt[1 + 2*ep] + x]))/Sqrt[-1 - 2*ep] + 
     ((I/2)*(-1 - 16*nu^3 - 32*ep^2*nu*(1 + nu) + 
        Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        4*nu^2*(-7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*nu*(-8 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*ep*(-3 - 32*nu^4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          16*nu^3*(-5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-21 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(-20 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(1 + 16*nu^3 + 32*ep^2*nu*(1 + nu) + 
        Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        4*nu^2*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*nu*(8 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*ep*(3 + 32*nu^4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          16*nu^3*(5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(21 + 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(20 + 9*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/(nu*(1 + nu)), 
  -1/2*((1 + 2*ep)*(-1 + 4*nu + 4*nu^2)*(Log[-Sqrt[1 + 2*ep] + x] - 
      Log[Sqrt[1 + 2*ep] + x]))/(Sqrt[-1 - 2*ep]*nu*(1 + nu)), 
  ((-1/4*I)*(((2*I)*(1 + ep + nu)*(-1 + 4*nu + 4*nu^2)*
       (Log[-Sqrt[1 + 2*ep] + x] - Log[Sqrt[1 + 2*ep] + x]))/
      Sqrt[-1 - 2*ep] + ((I/2)*(3 + 16*nu^3 - 32*ep^2*nu*(1 + nu) + 
        Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        nu^2*(20 - 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        nu*(8 - 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*ep*(1 - 32*nu^4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-8 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          16*nu^3*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(-9 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] - 
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])]) + 
     ((I/2)*(-3 - 16*nu^3 + 32*ep^2*nu*(1 + nu) + 
        Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        4*nu^2*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        2*nu*(4 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*ep*(-1 + 32*nu^4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          16*nu^3*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(8 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          4*nu^2*(9 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] - 
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      (Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*Sqrt[-2 - 2*ep - 4*nu^2 - 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])])))/(nu*(1 + nu)), 
  -1/8*(2*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
      (-8*ep*nu*(1 + 3*nu + 2*nu^2) + nu*(1 + 2*nu)^2*(-1 + 4*nu + 4*nu^2) + 
       2*ep^3*(1 + 6*nu + 4*nu^2) - ep^2*(-1 + 6*nu + 36*nu^2 + 24*nu^3))*
      Log[-1 + x] + 2*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
      (-8*ep*nu*(1 + 3*nu + 2*nu^2) + nu*(1 + 2*nu)^2*(-1 + 4*nu + 4*nu^2) + 
       2*ep^3*(1 + 6*nu + 4*nu^2) - ep^2*(-1 + 6*nu + 36*nu^2 + 24*nu^3))*
      Log[1 + x] - 2*nu*(1 + 2*ep + 2*nu)*(-1 + 4*nu + 4*nu^2)*
      Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)*
      (Log[-Sqrt[1 + 2*ep] + x] + Log[Sqrt[1 + 2*ep] + x]) - 
     ep*(-32*ep^3*nu*(1 + 5*nu + 4*nu^2) + (1 + 2*nu)^2*
        (1 + 16*nu^4 - 8*nu^3*(-5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
         16*nu^2*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
         6*nu*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       ep*(1 + 2*nu)*(3 + 96*nu^4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         nu*(10 - 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
         28*nu^2*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
         8*nu^3*(-21 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       2*ep^2*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         6*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         16*nu^3*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         4*nu^2*(-13 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]) + 
     ep*(-32*ep^3*nu*(1 + 5*nu + 4*nu^2) + (1 + 2*nu)^2*
        (1 + 16*nu^4 + 6*nu*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         16*nu^2*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         8*nu^3*(5 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
       ep*(1 + 2*nu)*(3 + 96*nu^4 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         28*nu^2*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         8*nu^3*(21 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         2*nu*(5 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
       2*ep^2*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         6*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         16*nu^3*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         4*nu^2*(13 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
    (ep*nu*(1 + nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)), 
  (-((-1 + 2*nu + 8*ep^2*nu + 12*nu^2 + 8*nu^3 + ep*(-2 + 8*nu + 8*nu^2))*
      Log[-1 + x]) + 8*ep*(nu + 2*ep*nu)*Log[x] - 
    (-1 + 2*nu + 8*ep^2*nu + 12*nu^2 + 8*nu^3 + ep*(-2 + 8*nu + 8*nu^2))*
     Log[1 + x] + (1 + 2*ep + 2*nu)*(-1 + 4*nu + 4*nu^2)*
     (Log[-Sqrt[1 + 2*ep] + x] + Log[Sqrt[1 + 2*ep] + x]))/(4*ep*nu), 
  (((-1 + 2*nu + 12*nu^2 + 8*nu^3 + 8*ep^2*(1 + nu) + ep*(2 - 8*nu - 8*nu^2))*
      Log[-1 + x])/ep - 8*(1 + 2*ep)*(1 + nu)*Log[x] + 
    ((-1 + 2*nu + 12*nu^2 + 8*nu^3 + 8*ep^2*(1 + nu) + 
       ep*(2 - 8*nu - 8*nu^2))*Log[1 + x])/ep + 
    ((-1 + 2*ep - 2*nu)*(-1 + 4*nu + 4*nu^2)*(Log[-Sqrt[1 + 2*ep] + x] + 
       Log[Sqrt[1 + 2*ep] + x]))/ep)/(4*(1 + nu)), 
  (-2*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
     (8*ep*nu*(1 + 3*nu + 2*nu^2) + ep^3*(-2 + 4*nu + 8*nu^2) - 
      (1 + 2*nu)^2*(-1 + 3*nu + 8*nu^2 + 4*nu^3) + 
      ep^2*(-5 + 6*nu + 36*nu^2 + 24*nu^3))*Log[-1 + x] - 
    2*(1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
     (8*ep*nu*(1 + 3*nu + 2*nu^2) + ep^3*(-2 + 4*nu + 8*nu^2) - 
      (1 + 2*nu)^2*(-1 + 3*nu + 8*nu^2 + 4*nu^3) + 
      ep^2*(-5 + 6*nu + 36*nu^2 + 24*nu^3))*Log[1 + x] + 
    2*(-1 + 2*ep - 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
     (-1 + 3*nu + 8*nu^2 + 4*nu^3)*(-2*ep^2 + (1 + 2*nu)^2)*
     (Log[-Sqrt[1 + 2*ep] + x] + Log[Sqrt[1 + 2*ep] + x]) + 
    ep*(32*ep^3*nu*(3 + 7*nu + 4*nu^2) + (1 + 2*nu)^2*
       (3 + 16*nu^4 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        8*nu^3*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        8*nu^2*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        2*nu*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
      ep*(1 + 2*nu)*(5 + 38*nu + 96*nu^4 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        8*nu^3*(-27 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
        4*nu^2*(-39 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
      2*ep^2*(-7 - 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        16*nu^3*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        nu*(4 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*nu^2*(11 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
      Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]) - 
    ep*(32*ep^3*nu*(3 + 7*nu + 4*nu^2) + (1 + 2*nu)^2*
       (3 + 16*nu^4 - 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
        2*nu*(-1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        8*nu^2*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        8*nu^3*(3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
      ep*(1 + 2*nu)*(5 + 38*nu + 96*nu^4 - 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        8*nu^3*(27 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*nu^2*(39 + 5*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
      2*ep^2*(7 - 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
        16*nu^3*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        4*nu^2*(-11 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
        nu*(-4 + 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
     (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
      Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
   (8*ep*nu*(1 + nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
    (-2*ep^2 + (1 + 2*nu)^2)), 
  -1/4*(nu*(1 + 2*nu)*((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       (-1 + 2*nu + 12*nu^2 + 8*nu^3 + 4*ep^2*(1 + nu) - 
        2*ep*(1 + 6*nu + 4*nu^2))*Log[-1 + x] + 
      (1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-1 + 2*nu + 12*nu^2 + 
        8*nu^3 + 4*ep^2*(1 + nu) - 2*ep*(1 + 6*nu + 4*nu^2))*Log[1 + x] + 
      (1 - 4*nu - 4*nu^2)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
       (-2*ep^2 + (1 + 2*nu)^2)*(Log[-Sqrt[1 + 2*ep] + x] + 
        Log[Sqrt[1 + 2*ep] + x]) + ep*(16*ep^2*nu*(1 + nu) - 
        ep*(-1 + 16*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          10*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(-8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(-4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(-5 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]) - 
      ep*(16*ep^2*nu*(1 + nu) + ep*(1 - 16*nu^3 + 
          Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 10*nu*Sqrt[3 + 4*ep + 4*nu + 
             4*nu^2] + 4*nu^2*(-5 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        (1 + 2*nu)*(8*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          4*nu^2*(4 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
          2*nu*(5 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])))/
    (ep*(1 + nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)), 0, 
  ((1 + nu)*(1 + 2*nu)*((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
      (-1 + 2*nu + 4*ep^2*nu + 12*nu^2 + 8*nu^3 + ep*(-2 + 4*nu + 8*nu^2))*
      Log[-1 + x] + (1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
      (-1 + 2*nu + 4*ep^2*nu + 12*nu^2 + 8*nu^3 + ep*(-2 + 4*nu + 8*nu^2))*
      Log[1 + x] + (1 - 4*nu - 4*nu^2)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*
      (-2*ep^2 + (1 + 2*nu)^2)*(Log[-Sqrt[1 + 2*ep] + x] + 
       Log[Sqrt[1 + 2*ep] + x]) + ep*(2 + 6*nu + 16*nu^4 - 
       16*ep^2*nu*(1 + nu) + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
       nu^2*(12 - 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
       8*nu^3*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
       ep*(3 - 16*nu^3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] - 
         4*nu^2*(7 + 2*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
         2*nu*(4 + 3*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
       Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]) + 
     ep*(16*ep^2*nu*(1 + nu) + ep*(-3 + 16*nu^3 + 
         Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         nu^2*(28 - 8*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         nu*(8 - 6*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
       (1 + 2*nu)*(2 + 8*nu^3 - Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
         2*nu*(1 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
         4*nu^2*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
      (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
       Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x])))/
   (4*ep*nu*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]*(-2*ep^2 + (1 + 2*nu)^2)), 
  ((1 + 2*ep)*(1 + 2*nu)^2*(2*(ep - 4*nu*(1 + nu))*Log[-1 + x] + 
     2*(ep - 4*nu*(1 + nu))*Log[1 + x] + 
     ((16*ep^2*nu*(1 + nu) - (1 + 2*nu)*(1 + 8*nu^3 + 
          nu*(6 - 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) - 
          4*nu^2*(-3 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) - 
        ep*(1 - 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2] + 
          2*nu*(-2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[(1 + 2*nu - Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x] + 
        Log[(-1 - 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2]) + 
     ((-16*ep^2*nu*(1 + nu) - ep*(-1 + 4*nu^2 + Sqrt[3 + 4*ep + 4*nu + 
            4*nu^2] + 2*nu*(2 + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])) + 
        (1 + 2*nu)*(1 + 8*nu^3 + 4*nu^2*(3 + Sqrt[3 + 4*ep + 4*nu + 
              4*nu^2]) + nu*(6 + 4*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))*
       (Log[-((1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2]) + x] + 
        Log[(1 + 2*nu + Sqrt[3 + 4*ep + 4*nu + 4*nu^2])/Sqrt[2] + x]))/
      ((1 + 2*nu)*Sqrt[3 + 4*ep + 4*nu + 4*nu^2])))/
   (8*nu*(1 + nu)*(2*ep^2 - (1 + 2*nu)^2)), -((3 + 2*ep)*Log[x])}}
