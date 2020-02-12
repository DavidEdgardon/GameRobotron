#include <screen.h>
#include <keypad.h>

#define TO_STR(ch) ((((ch) >= 0) && ((ch) <= 9)) ? (48 + (ch)) : ('a' + ((ch)-10)))

int x, y;
int dx, dy;
int last;
int robots = 8;
int mov = 0, mov1 = 0, mov2 = 0, mov3 = 0,
    mov4 = 0, mov5 = 0, mov6 = 0, mov7 = 0;
int estado1 = 0, estado2 = 0, estado3 = 0, estado4 = 0;
int posbx = 0;
int posby = 0;
int contadorBala = 0;
bool bala = false;
bool bala1 = false;
bool bala2 = false;
bool bala3 = false;
//POSICIONES INICIALES ROBOTS
int rx = 8, ry = 15;
int rx1 = 12, ry1 = 56;
int rx2 = 22, ry2 = 35;
int rx3 = 10, ry3 = 46;
int rx4 = 16, ry4 = 20;
int rx5 = 6, ry5 = 72;
int rx6 = 24, ry6 = 60;
int rx7 = 21, ry7 = 19;

void pintarmapa(){
    set_color(WHITE, BLACK);
    set_cursor(1, 35);
    puts("ROBOTRON!");

    set_color(WHITE, BLACK);
    set_cursor(29, 37);
    puts("WAVE 1");
    uint8_t f, b;
    get_color(&f, &b);

    //BORDES VERTICALES IZQ/DER
    for (int i = 2; i < 29; i++)
    {
        set_color(MAGENTA, BLACK);
        set_cursor(i, 0);
        puts("\x9");
        set_color(MAGENTA, BLACK);
        set_cursor(i, 79);
        puts("\x9");
    }
    //BORDES HORINZONTALES
    for (int i = 1; i < 79; i++)
    {
        set_color(MAGENTA, BLACK);
        set_cursor(2, i);
        puts("\x16");
        set_color(MAGENTA, BLACK);
        set_cursor(28, i);
        puts("\x16");
    }
}

void pintarobots(){
    uint8_t f, b;
    get_color(&f, &b);

    //ROBOTS
    set_color(GREEN, BLACK);
    set_cursor(rx, ry);
    puts("\x3\4");
    set_cursor(rx1, ry1);
    puts("\x3\x4");
    set_cursor(rx2, ry2);
    puts("\x3\x4");
    set_cursor(rx3, ry3);
    puts("\x3\x4");
    set_cursor(rx4, ry4);
    puts("\x3\x4");
    set_cursor(rx5, ry5);
    puts("\x3\x4");
    set_cursor(rx6, ry6);
    puts("\x3\x4");
    set_cursor(rx7, ry7);
    puts("\x3\x4");
    set_color(f, b);
}

void ganar(int x){
    if (x == 0)
    {
        clear_screen();
        set_color(GREEN, BLACK);
        set_cursor(14, 35);
        puts("HAZ GANADO! :D");
    }
}

bool perder(){
    if ((x == rx && y == ry) || (x == rx && y == ry + 1) || (x == rx && y == ry - 1))
    {
        clear_screen();
        set_color(RED, BLACK);
        set_cursor(14, 27);
        puts("HAZ DEFRAUDADO A LA HUMANIDAD! :(");
        return true;
    }
    if ((x == rx1 && y == ry1) || (x == rx1 && y == ry1 + 1) || (x == rx1 && y == ry1 - 1))
    {
        clear_screen();
        set_color(RED, BLACK);
        set_cursor(14, 27);
        puts("HAZ DEFRAUDADO A LA HUMANIDAD! :(");
        return true;
    }
    if ((x == rx2 && y == ry2) || (x == rx2 && y == ry2 + 1) || (x == rx2 && y == ry2 - 1))
    {
        clear_screen();
        set_color(RED, BLACK);
        set_cursor(14, 27);
        puts("HAZ DEFRAUDADO A LA HUMANIDAD! :(");
        return true;
    }
    if ((x == rx3 && y == ry3) || (x == rx3 && y == ry3 + 1) || (x == rx3 && y == ry3 - 1))
    {
        clear_screen();
        set_color(RED, BLACK);
        set_cursor(14, 27);
        puts("HAZ DEFRAUDADO A LA HUMANIDAD! :(");
        return true;
    }
    if ((x == rx4 && y == ry4) || (x == rx4 && y == ry4 + 1) || (x == rx4 && y == ry4 - 1))
    {
        clear_screen();
        set_color(RED, BLACK);
        set_cursor(14, 27);
        puts("HAZ DEFRAUDADO A LA HUMANIDAD! :(");
        return true;
    }
    if ((x == rx5 && y == ry5) || (x == rx5 && y == ry5 + 1) || (x == rx5 && y == ry5 - 1))
    {
        clear_screen();
        set_color(RED, BLACK);
        set_cursor(14, 27);
        puts("HAZ DEFRAUDADO A LA HUMANIDAD! :(");
        return true;
    }
    if ((x == rx6 && y == ry6) || (x == rx6 && y == ry6 + 1) || (x == rx6 && y == ry6 - 1))
    {
        clear_screen();
        set_color(RED, BLACK);
        set_cursor(14, 27);
        puts("HAZ DEFRAUDADO A LA HUMANIDAD! :(");
        return true;
    }
    if ((x == rx7 && y == ry7) || (x == rx7 && y == ry7 + 1) || (x == rx7 && y == ry7 - 1))
    {
        clear_screen();
        set_color(RED, BLACK);
        set_cursor(14, 27);
        puts("HAZ DEFRAUDADO A LA HUMANIDAD! :(");
        return true;
    }
    return false;
}

int main(){
    clear_screen();
    pintarmapa();
    pintarobots();

    //POSICIONES INICIALES
    y = 39;
    x = 14;
    last = 0;

    //PERSONAJE
    set_color(WHITE, BLACK);
    char pers[6] = "\x7\x8";
    set_cursor(x, y);
    puts(pers);
    keypad_init();

    while (1){
        uint8_t k = keypad_getkey();
        set_color(WHITE, BLACK);

        /*MOVIEMIENTOS DEL PERSONAJE */
        if (k == 1){
            //MOVER IZQUIERA
            if (y != 2)
            {
                last = 1;
                set_cursor(x, y);
                puts("\x1\x1");
                y = y - 1;
                set_cursor(x, y);
                puts(pers);
                dx = x;
                dy = y;
            }
        }
        if (k == 2){
            //MOVER DERECHA.
            if (y != 77)
            {
                last = 2;
                set_cursor(x, y);
                puts("\x1\x1");
                y = y + 1;
                set_cursor(x, y);
                puts(pers);
                dx = x;
                dy = y;
            }
        }
        if (k == 3){
            //MOVER ABAJO
            if (x != 27)
            {
                last = 3;
                set_cursor(x, y);
                puts("\x1\x1");
                x = x + 1;
                set_cursor(x, y);
                puts(pers);
                dx = x;
                dy = y;
            }
        }
        if (k == 4){
            //MOVER ARRIBA
            if (x != 3)
            {
                last = 4;
                set_cursor(x, y);
                puts("\x1\x1");
                x = x - 1;
                set_cursor(x, y);
                puts(pers);
                dx = x;
                dy = y;
            }
        }

        /* DISPAROS */
        /*ABAJO*/
        if (last == 3 && k == 8 && estado2 == 0 && estado3 == 0 && estado4 == 0){
            estado1 = 1;
            posbx = dx + 1;
            posby = dy;
        }
        if (estado1 == 1){
            estado2 = 0;
            estado3 = 0;
            estado4 = 0;
        }
        if (estado1 == 1 && posbx < 28){
            for (int i = 0; i < 1; i++){
                delay_ms(10);
                set_cursor(x, y);
                puts(pers);
                set_cursor(posbx, posby);
                puts("\x1\x1");
                posbx = posbx + 1;
                set_cursor(posbx, posby);
                puts("\x16\x16");
                //COLICION ROBOT/DISPARO
                if ((posbx == rx && posby == ry) || (posbx == rx && posby == ry + 1) || (posbx == rx && posby == ry - 1)){
                    set_cursor(rx, ry);
                    puts("\x1\x1");
                    rx = 0, ry = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado1 = 0;
                    break;
                }
                if ((posbx == rx1 && posby == ry1) || (posbx == rx1 && posby == ry1 + 1) || (posbx == rx1 && posby == ry1 - 1)){
                    set_cursor(rx1, ry1);
                    puts("\x1\x1");
                    rx1 = 0, ry1 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado1 = 0;
                    break;
                }
                if ((posbx == rx2 && posby == ry2) || (posbx == rx2 && posby == ry2 + 1) || (posbx == rx2 && posby == ry2 - 1)){
                    set_cursor(rx2, ry2);
                    puts("\x1\x1");
                    rx2 = 0, ry2 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado1 = 0;
                    break;
                }
                if ((posbx == rx3 && posby == ry3) || (posbx == rx3 && posby == ry3 + 1) || (posbx == rx3 && posby == ry3 - 1)){
                    set_cursor(rx3, ry3);
                    puts("\x1\x1");
                    rx3 = 0, ry3 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado1 = 0;
                    break;
                }
                if ((posbx == rx4 && posby == ry4) || (posbx == rx4 && posby == ry4 + 1) || (posbx == rx4 && posby == ry4 - 1)){
                    set_cursor(rx4, ry4);
                    puts("\x1\x1");
                    rx4 = 0, ry4 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado1 = 0;
                    break;
                }
                if ((posbx == rx5 && posby == ry5) || (posbx == rx5 && posby == ry5 + 1) || (posbx == rx5 && posby == ry5 - 1)){
                    set_cursor(rx5, ry5);
                    puts("\x1\x1");
                    rx5 = 0, ry5 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado1 = 0;

                    break;
                }
                if ((posbx == rx6 && posby == ry6) || (posbx == rx6 && posby == ry6 + 1) || (posbx == rx6 && posby == ry6 - 1)){
                    set_cursor(rx6, ry6);
                    puts("\x1\x1");
                    rx6 = 0, ry6 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado1 = 0;
                    break;
                }
                if ((posbx == rx7 && posby == ry7) || (posbx == rx7 && posby == ry7 + 1) || (posbx == rx7 && posby == ry7 - 1)){
                    set_cursor(rx7, ry7);
                    puts("\x1\x1");
                    rx7 = 0, ry7 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado1 = 0;
                    break;
                }
            }
            if (posbx == 27){
                estado1 = 0;
                set_cursor(posbx, posby);
                puts("\x1\x1");
            }
        }

        /*ARRIBA*/

        if (last == 4 && k == 8 && estado1 == 0 && estado3 == 0 && estado4 == 0){
            estado2 = 1;
            posbx = dx - 1;
            posby = dy;
        }
        if (estado2 == 1){
            estado1 = 0;
            estado3 = 0;
            estado4 = 0;
        }
        if (estado2 == 1 && dx > 3){
            for (int i = 0; i < 1; i++){
                delay_ms(10);
                set_cursor(x, y);
                puts(pers);
                set_cursor(posbx, posby);
                puts("\x1\x1");
                posbx = posbx - 1;
                set_cursor(posbx, posby);
                puts("\x16\x16");
                //COLICION ROBOT/DISPARO
                if ((posbx == rx && posby == ry) || (posbx == rx && posby == ry + 1) || (posbx == rx && posby == ry - 1)){
                    set_cursor(rx, ry);
                    puts("\x1\x1");
                    rx = 0, ry = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado2 = 0;
                    break;
                }
                if ((posbx == rx1 && posby == ry1) || (posbx == rx1 && posby == ry1 + 1) || (posbx == rx1 && posby == ry1 - 1)){
                    set_cursor(rx1, ry1);
                    puts("\x1\x1");
                    rx1 = 0, ry1 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado2 = 0;
                    break;
                }
                if ((posbx == rx2 && posby == ry2) || (posbx == rx2 && posby == ry2 + 1) || (posbx == rx2 && posby == ry2 - 1)){
                    set_cursor(rx2, ry2);
                    puts("\x1\x1");
                    rx2 = 0, ry2 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado2 = 0;
                    break;
                }
                if ((posbx == rx3 && posby == ry3) || (posbx == rx3 && posby == ry3 + 1) || (posbx == rx3 && posby == ry3 - 1)){
                    set_cursor(rx3, ry3);
                    puts("\x1\x1");
                    rx3 = 0, ry3 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado2 = 0;
                    break;
                }
                if ((posbx == rx4 && posby == ry4) || (posbx == rx4 && posby == ry4 + 1) || (posbx == rx4 && posby == ry4 - 1)){
                    set_cursor(rx4, ry4);
                    puts("\x1\x1");
                    rx4 = 0, ry4 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado2 = 0;
                    break;
                }
                if ((posbx == rx5 && posby == ry5) || (posbx == rx5 && posby == ry5 + 1) || (posbx == rx5 && posby == ry5 - 1)){
                    set_cursor(rx5, ry5);
                    puts("\x1\x1");
                    rx5 = 0, ry5 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado2 = 0;
                    break;
                }
                if ((posbx == rx6 && posby == ry6) || (posbx == rx6 && posby == ry6 + 1) || (posbx == rx6 && posby == ry6 - 1)){
                    set_cursor(rx6, ry6);
                    puts("\x1\x1");
                    rx6 = 0, ry6 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado2 = 0;
                    break;
                }
                if ((posbx == rx7 && posby == ry7) || (posbx == rx7 && posby == ry7 + 1) || (posbx == rx7 && posby == ry7 - 1)){
                    set_cursor(rx7, ry7);
                    puts("\x1\x1");
                    rx7 = 0, ry7 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado2 = 0;
                    break;
                }

                if (posbx == 3){
                    estado2 = 0;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                }
            }
        }

        /*DERECHA*/
        if (last == 2 && k == 8 && estado1 == 0 && estado2 == 0 && estado4 == 0){
            estado3 = 1;
            posby = dy + 1;
            posbx = dx;
        }
        if (estado3 == 1){
            estado1 = 0;
            estado2 = 0;
            estado4 = 0;
        }
        if (estado3 == 1 && dx < 79){
            for (int i = 0; i < 1; i++){
                delay_ms(10);
                set_cursor(x, y);
                puts(pers);
                set_cursor(posbx, posby);
                puts("\x1\x1");
                posby = posby + 1;
                set_cursor(posbx, posby);
                puts("\x16\x16");

                if ((posbx == rx && posby == ry) || (posbx == rx && posby == ry+1) || (posbx == rx && posby == ry-1)){
                    set_cursor(rx, ry);
                    puts("\x1\x1");
                    rx = 0, ry = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado3=0;
                    break;
                }
                if ((posbx == rx1 && posby == ry1) || (posbx == rx1 && posby == ry1+1) || (posbx == rx1 && posby == ry1-1)){
                    set_cursor(rx1, ry1);
                    puts("\x1\x1");
                    rx1 = 0, ry1 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado3=0;
                    break;
                }
                if ((posbx == rx2 && posby == ry2) || (posbx == rx2 && posby == ry2+1) || (posbx == rx2 && posby == ry2-1)){
                    set_cursor(rx2, ry2);
                    puts("\x1\x1");
                    rx2 = 0, ry2 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado3=0;
                    break;
                }
                if ((posbx == rx3 && posby == ry3) || (posbx == rx3 && posby == ry3+1) || (posbx == rx3 && posby == ry3-1)){
                    set_cursor(rx3, ry3);
                    puts("\x1\x1");
                    rx3 = 0, ry3 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado3=0;
                    break;
                }
                if ((posbx == rx4 && posby == ry4) || (posbx == rx4 && posby == ry4+1) || (posbx == rx4 && posby == ry4-1)){
                    set_cursor(rx4, ry4);
                    puts("\x1\x1");
                    rx4 = 0, ry4 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado3=0;
                    break;
                }
                if ((posbx == rx5 && posby == ry5) || (posbx == rx5 && posby == ry5+1) || (posbx == rx5 && posby == ry5-1)){
                    set_cursor(rx5, ry5);
                    puts("\x1\x1");
                    rx5 = 0, ry5 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado3=0;
                    break;
                }
                if ((posbx == rx6 && posby == ry6) || (posbx == rx6 && posby == ry6+1) || (posbx == rx6 && posby == ry6-1)){
                    set_cursor(rx6, ry6);
                    puts("\x1\x1");
                    rx6 = 0, ry6 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado3=0;
                    break;
                }
                if ((posbx == rx7 && posby == ry7) || (posbx == rx7 && posby == ry7+1) || (posbx == rx7 && posby == ry7-1)){
                    set_cursor(rx7, ry7);
                    puts("\x1\x1");
                    rx7 = 0, ry7 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado3=0;
                    break;
                }
                if (posby == 77){
                    estado3 = 0;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                }
            }
        }

        /*IZQUIERDA*/
        if (last == 1 && k == 8 && estado1 == 0 && estado2 == 0 && estado3 == 0){
            estado4 = 1;
            posby = dy - 1;
            posbx = dx;
        }
        if (estado4 == 1){
            estado1 = 0;
            estado2 = 0;
            estado3 = 0;
        }
        if (estado4 == 1 && dx > 2){
            for (int i = 0; i < 1; i++)
            {
                delay_ms(10);
                set_cursor(x, y);
                puts(pers);
                set_cursor(posbx, posby);
                puts("\x1\x1");
                posby = posby - 1;
                set_cursor(posbx, posby);
                puts("\x16\x16");

                if ((posbx == rx && posby == ry) || (posbx == rx && posby == ry+1) || (posbx == rx && posby == ry-1)){
                    set_cursor(rx, ry);
                    puts("\x1\x1");
                    rx = 0, ry = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado4 = 0;
                    break;
                }
                if ((posbx == rx1 && posby == ry1) || (posbx == rx1 && posby == ry1+1) || (posbx == rx1-1 && posby == ry1-1)){
                    set_cursor(rx1, ry1);
                    puts("\x1\x1");
                    rx1 = 0, ry1 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado4 = 0;
                    break;
                }
                if ((posbx == rx2 && posby == ry2) || (posbx == rx2 && posby == ry2-1) || (posbx == rx2 && posby == ry2-1)){
                    set_cursor(rx2, ry2);
                    puts("\x1\x1");
                    rx2 = 0, ry2 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado4 = 0;
                    break;
                }
                if ((posbx == rx3 && posby == ry3) || (posbx == rx3 && posby == ry3-1) || (posbx == rx3 && posby == ry3-1)){
                    set_cursor(rx3, ry3);
                    puts("\x1\x1");
                    rx3 = 0, ry3 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado4 = 0;
                    break;
                }
                if ((posbx == rx4 && posby == ry4) || (posbx == rx4 && posby == ry4+1) || (posbx == rx4 && posby == ry4-1)){
                    set_cursor(rx4, ry4);
                    puts("\x1\x1");
                    rx4 = 0, ry4 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado4 = 0;
                    break;
                }
                if ((posbx == rx5 && posby == ry5) || (posbx == rx5 && posby == ry5+1) || (posbx == rx5 && posby == ry5-1)){
                    set_cursor(rx5, ry5);
                    puts("\x1\x1");
                    rx5 = 0, ry5 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado4 = 0;
                    break;
                }
                if ((posbx == rx6 && posby == ry6) || (posbx == rx6 && posby == ry6+1) || (posbx == rx6 && posby == ry6-1)){
                    set_cursor(rx6, ry6);
                    puts("\x1\x1");
                    rx6 = 0, ry6 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado4 = 0;
                    break;
                }
                if ((posbx == rx7 && posby == ry7) || (posbx == rx7 && posby == ry7+1) || (posbx == rx7 && posby == ry7-1)){
                    set_cursor(rx7, ry7);
                    puts("\x1\x1");
                    rx7 = 0, ry7 = 0;
                    robots = robots - 1;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                    estado4 = 0;
                    break;
                }
                if (posby == 2){
                    estado4 = 0;
                    set_cursor(posbx, posby);
                    puts("\x1\x1");
                }
            }
        }

        //MOVER ROBOTS
        for (int i = 0; i < 1; i++){
            if (rx != 0 && ry != 0)
            {
                if (ry > 2 && mov == 0)
                {
                    if (ry == 3)
                    {
                        mov = 1;
                    }
                    set_color(GREEN, BLACK);
                    set_cursor(rx, ry);
                    puts("\x1\x1");
                    ry = ry - 1;
                    set_cursor(rx, ry);
                    puts("\x3\x4");
                }
                else if (ry < 77 && mov == 1)
                {
                    if (ry == 76)
                    {
                        mov = 0;
                    }
                    set_color(GREEN, BLACK);
                    set_cursor(rx, ry);
                    puts("\x1\x1");
                    ry = ry + 1;
                    set_cursor(rx, ry);
                    puts("\x3\x4");
                }
            }
            if (rx3 != 0 && ry3 != 0)
            {
                if (ry3 > 2 && mov1 == 0)
                {
                    if (ry3 == 3)
                    {
                        mov1 = 1;
                    }
                    set_color(GREEN, BLACK);
                    set_cursor(rx3, ry3);
                    puts("\x1\x1");
                    ry3 = ry3 - 1;
                    set_cursor(rx3, ry3);
                    puts("\x3\x4");
                }
                else if (ry3 < 77 && mov1 == 1)
                {
                    if (ry3 == 76)
                    {
                        mov1 = 0;
                    }
                    set_color(GREEN, BLACK);
                    set_cursor(rx3, ry3);
                    puts("\x1\x1");
                    ry3 = ry3 + 1;
                    set_cursor(rx3, ry3);
                    puts("\x3\x4");
                }
            }
            if (rx7 != 0 && ry7 != 0)
            {
                if (ry7 > 2 && mov2 == 0)
                {
                    if (ry7 == 3)
                    {
                        mov2 = 1;
                    }
                    set_color(GREEN, BLACK);
                    set_cursor(rx7, ry7);
                    puts("\x1\x1");
                    ry7 = ry7 - 1;
                    set_cursor(rx7, ry7);
                    puts("\x3\x4");
                }
                else if (ry7 < 77 && mov2 == 1)
                {
                    if (ry7 == 76)
                    {
                        mov2 = 0;
                    }
                    set_color(GREEN, BLACK);
                    set_cursor(rx7, ry7);
                    puts("\x1\x1");
                    ry7 = ry7 + 1;
                    set_cursor(rx7, ry7);
                    puts("\x3\x4");
                }
            }
            if (rx1 != 0 && ry1 != 0)
            {
                if (ry1 > 2 && mov3 == 0)
                {
                    if (ry1 == 3)
                    {
                        mov3 = 1;
                    }
                    set_color(GREEN, BLACK);
                    set_cursor(rx1, ry1);
                    puts("\x1\x1");
                    ry1 = ry1 - 1;
                    set_cursor(rx1, ry1);
                    puts("\x3\x4");
                }
                else if (ry1 < 77 && mov3 == 1)
                {
                    if (ry1 == 76)
                    {
                        mov3 = 0;
                    }
                    set_color(GREEN, BLACK);
                    set_cursor(rx1, ry1);
                    puts("\x1\x1");
                    ry1 = ry1 + 1;
                    set_cursor(rx1, ry1);
                    puts("\x3\x4");
                }
            }
            if (rx6 != 0 && ry6 != 0)
            {
                if (rx6 > 3 && mov4 == 0)
                {
                    if (rx6 == 4)
                    {
                        mov4 = 1;
                    }
                    set_color(GREEN, BLACK);
                    set_cursor(rx6, ry6);
                    puts("\x1\x1");
                    rx6 = rx6 - 1;
                    set_cursor(rx6, ry6);
                    puts("\x3\x4");
                }
                else if (rx6 < 27 && mov4 == 1)
                {
                    if (rx6 == 26)
                    {
                        mov4 = 0;
                    }
                    set_color(GREEN, BLACK);
                    set_cursor(rx6, ry6);
                    puts("\x1\x1");
                    rx6 = rx6 + 1;
                    set_cursor(rx6, ry6);
                    puts("\x3\x4");
                }
            }
            if (rx2 != 0 && ry2 != 0)
            {
                if (rx2 > 3 && mov5 == 0)
                {
                    if (rx2 == 4)
                    {
                        mov5 = 1;
                    }
                    set_color(GREEN, BLACK);
                    set_cursor(rx2, ry2);
                    puts("\x1\x1");
                    rx2 = rx2 - 1;
                    set_cursor(rx2, ry2);
                    puts("\x3\x4");
                }
                else if (rx2 < 27 && mov5 == 1)
                {
                    if (rx2 == 26)
                    {
                        mov5 = 0;
                    }
                    set_color(GREEN, BLACK);
                    set_cursor(rx2, ry2);
                    puts("\x1\x1");
                    rx2 = rx2 + 1;
                    set_cursor(rx2, ry2);
                    puts("\x3\x4");
                }
            }
            if (rx5 != 0 && ry5 != 0)
            {
                if (rx5 > 3 && mov6 == 0)
                {
                    if (rx5 == 4)
                    {
                        mov6 = 1;
                    }
                    set_color(GREEN, BLACK);
                    set_cursor(rx5, ry5);
                    puts("\x1\x1");
                    rx5 = rx5 - 1;
                    set_cursor(rx5, ry5);
                    puts("\x3\x4");
                }
                else if (rx5 < 27 && mov6 == 1)
                {
                    if (rx5 == 26)
                    {
                        mov6 = 0;
                    }
                    set_color(GREEN, BLACK);
                    set_cursor(rx5, ry5);
                    puts("\x1\x1");
                    rx5 = rx5 + 1;
                    set_cursor(rx5, ry5);
                    puts("\x3\x4");
                }
            }
            if (rx4 != 0 && ry4 != 0)
            {
                if (rx4 > 3 && mov7 == 0)
                {
                    if (rx4 == 4)
                    {
                        mov7 = 1;
                    }
                    set_color(GREEN, BLACK);
                    set_cursor(rx4, ry4);
                    puts("\x1\x1");
                    rx4 = rx4 - 1;
                    set_cursor(rx4, ry4);
                    puts("\x3\x4");
                }
                else if (rx4 < 27 && mov7 == 1)
                {
                    if (rx4 == 26)
                    {
                        mov7 = 0;
                    }
                    set_color(GREEN, BLACK);
                    set_cursor(rx4, ry4);
                    puts("\x1\x1");
                    rx4 = rx4 + 1;
                    set_cursor(rx4, ry4);
                    puts("\x3\x4");
                }
            }
        }

        ganar(robots);
        if (perder() == true){
            goto salir;
        }
        delay_ms(80);
    }

salir:
    return 0;
}
