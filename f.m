function [ma,vOut,m]=f(vIn)   %vIn vector intrare, vOut vector iesire
    ma=mean(real(vIn))  
    vOut=vIn.^2 
    m=vIn*vIn'
end
    
    