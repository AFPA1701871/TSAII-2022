#include <stdio.h>
#include <stdlib.h>

int main()
{
    int nombre = 0; // on initialise la variable a 0

    printf("Ecrire un nombre: ");
    scanf ("%d",&nombre); // on demande d'entrer un nombre
    printf ("Le calcul du nombre au carré est de : %d", pow(nombre,2));
    return 0;
}
