program main
implicit none
real:: click1,click2
integer z

call cpu_time(click1)
do z=1,100
    call test()
end do
call cpu_time(click2)

write(*,*) click2-click1

    end program

subroutine test()
    implicit none
    real*8 A,B
    integer i,j
    dimension A(3,3),B(3)
    data A/-1.0,3.0,2.0,2.0,-1.0,-3.0,-2.0,4.0,-2.0/
    data B/-1.0,7.0,0.0/
    
    call gauss(3,A,B)

    write(*,*)(B)
end subroutine
    
   subroutine gauss(n,a,b)
    implicit none
    integer k,i,j,n
    real*8 p,i0,t,s,a,b
    dimension a(n,n),b(n)
    do k=1,n-1
        p=0d0
        do i=k,n
            if(abs(a(i,k))<=abs(p))cycle
            p=a(i,k)
            i0=i
        end do
        
        do j=k,n
            t=a(k,j)
            a(k,j)=a(i0,j)
            a(i0,j)=t
        end do
        
        t=b(k)
        b(k)=b(i0)
        b(i0)=t
        b(k)=b(k)/a(k,k)
        do j=k+1,n
            a(k,j)=a(k,j)/a(k,k)
            do i=k+1,n
                a(i,j)=a(i,j)-a(i,k)*a(k,j)
            end do
            b(j)=b(j)-a(j,k)*b(k)
        end do
    end do
    b(n)=b(n)/a(n,n)
    
    do k=1,n-1
        i=n-k
        s=0
        do j=i+1,n
            s=s+a(i,j)*b(j)
        end do
        b(i)=b(i)-s
    end do
    end Subroutine gauss