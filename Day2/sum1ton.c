#include <stdio.h>

extern int load(int x, int y);

int main()
{
	int sum=0,count=10;
	sum=load(0x0,count);
	printf("The sum of %d numbers is %d\n",count,sum);
	return 0;
}
