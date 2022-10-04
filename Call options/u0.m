function u=u0(x)
    [trash,s]=fh(0,x,0,0);
    v = vT(s);
    u = hf(v,s,0,0);
end