program main
Implicit none
real*8::X,u,v,rad,N,a,d,lambda
integer::i
integer,parameter::max=10
real*8,parameter::pi=3.1415926535897d0
real::angle1,angle2

open(26, file='II0.dat')

angle1=20./180.*pi
angle2=60./180.*pi

N=500
a=0.000001
d=0.000002
lambda=0.00000059


do i=1,max
    rad=angle1+(angle2-angle1)*i/max
    u=pi*a*sin(rad)/lambda
    v=pi*d*sin(rad)/lambda
    X=(sin(u)**2/u**2)*(sin(N*v)**2/v**2)
    
    write(26,*) rad,X
end do
    
end program main