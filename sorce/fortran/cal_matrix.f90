

    program matrixcal
    implicit none
    real:: A(200,200)=0, B(200,200), C(200,200)             
    integer i,j,k       
    integer::N = 200
    real*8,parameter::pi=3.14159
    
   ! *******************************
    do i=1,200,1
        do j=1,200,1
            do k=1,200,1
              B(i,k)=sin((real(i)-0.5)/N*pi)*cos((real(k)/N)*pi)      
              C(k,j)=exp(-(real(k)-0.5)/N*pi) * (real(j*(j-1))/N**2)**0.5
              A(i,j)=A(i,j)+B(i,k)*C(k,j)
          end do
        end do  
     end do
    
     write(*,*) A

    end program

