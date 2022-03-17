#include <stdio.h>
#include <stdlib.h>

int main()
{
    int age ;
    printf("Entrer votre age");
    scanf("%d",&age);
    if (age>=18)
    {
        printf("vous etes adulte\n");

    }
    else
    {
        printf("vous etes mineur\n");
    }

    switch(age)
    {
    case 6 :
    case 7:
        printf("poussin");
        break;
    case 8 :
        printf("pupille");
        break;
    case 9:
        printf("pupille");
        break;
    default:
        printf("autre");
        break;

    }
    printf("\n");

    int i;
    i = (age>=18)?1:0;
    printf("%d",i);


    return 0;
}
