def fibb(int n)
{
    if(n==1 || n==2)
        return 1;
    else
    {
        return (fibb(n-1) + fibb(n-2));
    }
}