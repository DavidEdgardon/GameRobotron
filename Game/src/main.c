#include <screen.h>
#include <keypad.h>


#define TO_STR(ch) ( ( ((ch) >= 0 ) && ((ch) <= 9) )? (48 + (ch)) : ('a' + ((ch) - 10)) )

    int x, y;
    int dx, dy;
    int last;
    int robots=8;
    //POSICIONES INICIALES ROBOTS
        int rx = 8, ry= 15;
        int rx1 = 12, ry1= 56;
        int rx2 = 22, ry2= 35;
        int rx3 = 10, ry3= 46;
        int rx4 = 16, ry4= 20;
        int rx5 = 6, ry5= 62;
        int rx6 = 24, ry6= 60;
        int rx7 = 21, ry7= 19;

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
        for(int i=2;i<29; i++){
        set_color(MAGENTA, BLACK);
            set_cursor(i, 0);
            puts("\x9");
        set_color(MAGENTA, BLACK);
            set_cursor(i, 79);
            puts("\x9");
        }
        //BORDES HORINZONTALES
        for(int i=1;i<79;i++){
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
        set_color(f,b);
    }

    void ganar(int x){
        if(x==0){
            clear_screen();
            set_color(GREEN, BLACK);
            set_cursor(14,35);
            puts("HAZ GANADO! :D");
        }
    }

    void perder(){
        if((x == rx && y == ry) || (x == rx && y == ry+1) || (x == rx && y == ry-1)){
            clear_screen();
            set_color(RED, BLACK);
            set_cursor(14,27);
            puts("HAZ DEFRAUDADO A LA HUMANIDAD! :(");
        }
         if((x == rx1 && y == ry1) || (x == rx1 && y == ry1+1) || (x == rx1 && y == ry1-1)){
            clear_screen();
            set_color(RED, BLACK);
            set_cursor(14,27);
            puts("HAZ DEFRAUDADO A LA HUMANIDAD! :(");
        }
         if((x == rx2 && y == ry2)|| (x == rx2 && y == ry2+1) || (x == rx2 && y == ry2-1)){
            clear_screen();
            set_color(RED, BLACK);
            set_cursor(14,27);
            puts("HAZ DEFRAUDADO A LA HUMANIDAD! :(");
        }
         if((x == rx3 && y == ry3) || (x == rx3 && y == ry3+1) || (x == rx3 && y == ry3-1)){
            clear_screen();
            set_color(RED, BLACK);
            set_cursor(14,27);
            puts("HAZ DEFRAUDADO A LA HUMANIDAD! :(");
        }
         if((x == rx4 && y == ry4) || (x == rx4 && y == ry4+1) || (x == rx4 && y == ry4-1)){
            clear_screen();
            set_color(RED, BLACK);
            set_cursor(14,27);
            puts("HAZ DEFRAUDADO A LA HUMANIDAD! :(");
        }
         if((x == rx5 && y == ry5) || (x == rx5 && y == ry5+1) || (x == rx5 && y == ry5-1)){
            clear_screen();
            set_color(RED, BLACK);
            set_cursor(14,27);
            puts("HAZ DEFRAUDADO A LA HUMANIDAD! :(");
        }
        if((x == rx6 && y == ry6) || (x == rx6 && y == ry5+1) || (x == rx6 && y == ry5-1)){
            clear_screen();
            set_color(RED, BLACK);
            set_cursor(14,27);
            puts("HAZ DEFRAUDADO A LA HUMANIDAD! :(");
        }
        if((x == rx7 && y == ry7) || (x == rx7 && y == ry7+1) || (x == rx7 && y == ry7-1)){
            clear_screen();
            set_color(RED, BLACK);
            set_cursor(14,27);
            puts("HAZ DEFRAUDADO A LA HUMANIDAD! :(");
        }
    }

    void moveRobotsArriba(){
        if(rx!=3){
            if(rx!= 0 && ry!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx,ry);
                puts("\x1\x1");
                rx = rx - 1;
                set_cursor(rx,ry);
                puts("\x3\x4");	
            }
        }
        if(rx1!=3){
            if(rx1!= 0 && ry1!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx1,ry1);
                puts("\x1\x1");
                rx1 = rx1 - 1;
                set_cursor(rx1,ry1);
                puts("\x3\x4");	
            }
        }
        if(rx2!=3){
            if(rx2!= 0 && ry2!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx2,ry2);
                puts("\x1\x1");
                rx2 = rx2 - 1;
                set_cursor(rx2,ry2);
                puts("\x3\x4");	
            }
        }
        if(rx3!=3){
            if(rx3!= 0 && ry3!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx3,ry3);
                puts("\x1\x1");
                rx3 = rx3 - 1;
                set_cursor(rx3,ry3);
                puts("\x3\x4");	
            }
        }
        /*if(rx4!=3){
            if(rx4!= 0 && ry4!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx4,ry4);
                puts("\x1\x1");
                rx4 = rx4 - 1;
                set_cursor(rx4,ry4);
                puts("\x3\x4");	
            }
        }
        if(rx5!=3){
            if(rx5!= 0 && ry5!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx5,ry5);
                puts("\x1\x1");
                rx5 = rx5 - 1;
                set_cursor(rx5,ry5);
                puts("\x3\x4");	
            }
        }
        if(rx6!=3){
            if(rx6!= 0 && ry6!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx6,ry6);
                puts("\x1\x1");
                rx6 = rx6 - 1;
                set_cursor(rx6,ry6);
                puts("\x3\x4");	
            }
        }
        if(rx7!=3){
            if(rx7!= 0 && ry7!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx7,ry7);
                puts("\x1\x1");
                rx7 = rx7 - 1;
                set_cursor(rx7,ry7);
                puts("\x3\x4");	
            }
        }*/
    }

    void moveRobotsAbajo(){
        if(rx!=27){
            if(rx != 0 && ry!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx,ry);
                puts("\x1\x1");
                rx = rx + 1;
                set_cursor(rx,ry);
                puts("\x3\x4");	
            }
        }
        if(rx1!=27){
            if(rx1!= 0 && ry1!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx1,ry1);
                puts("\x1\x1");
                rx1 = rx1 + 1;
                set_cursor(rx1,ry1);
                puts("\x3\x4");	
            }
        }
        if(rx2!=27){
            if(rx2!= 0 && ry2!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx2,ry2);
                puts("\x1\x1");
                rx2 = rx2 + 1;
                set_cursor(rx2,ry2);
                puts("\x3\x4");	
            }
        }
        if(rx3!=27){
            if(rx3!= 0 && ry3!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx3,ry3);
                puts("\x1\x1");
                rx3 = rx3 + 1;
                set_cursor(rx3,ry3);
                puts("\x3\x4");	
            }
        }
        /*if(rx4!=27){
            if(rx4!= 0 && ry4!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx4,ry4);
                puts("\x1\x1");
                rx4 = rx4 + 1;
                set_cursor(rx4,ry4);
                puts("\x3\x4");	
            }
        }
        if(rx5!=27){
            if(rx5!= 0 && ry5!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx5,ry5);
                puts("\x1\x1");
                rx5 = rx5 + 1;
                set_cursor(rx5,ry5);
                puts("\x3\x4");	
            }
        }
        if(rx6!=27){
            if(rx6!= 0 && ry6!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx6,ry6);
                puts("\x1\x1");
                rx6 = rx6 + 1;
                set_cursor(rx6,ry6);
                puts("\x3\x4");	
            }
        }
        if(rx7!=27){
            if(rx7!= 0 && ry7!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx7,ry7);
                puts("\x1\x1");
                rx7 = rx7 + 1;
                set_cursor(rx7,ry7);
                puts("\x3\x4");	
            }
        }*/
    }

    void moveRobotsIzquierda(){
       /* if(ry!=2){
            if(rx!= 0 && ry!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx,ry);
                puts("\x1\x1");
                ry = ry - 1;
                set_cursor(rx,ry);
                puts("\x3\x4");	
            }
        }
        if(ry1!=2){
            if(rx1!= 0 && ry1!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx1,ry1);
                puts("\x1\x1");
                ry1 = ry1 - 1;
                set_cursor(rx1,ry1);
                puts("\x3\x4");	
            }
        }
        if(ry2!=2){
            if(rx2!= 0 && ry2!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx2,ry2);
                puts("\x1\x1");
                ry2 = ry2 - 1;
                set_cursor(rx2,ry2);
                puts("\x3\x4");	
            }
        }
        if(ry3!=2){
            if(rx3!= 0 && ry3!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx3,ry3);
                puts("\x1\x1");
                ry3 = ry3 - 1;
                set_cursor(rx3,ry3);
                puts("\x3\x4");	
            }
        }*/
        if(ry4!=2){
            if(rx4!= 0 && ry4!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx4,ry4);
                puts("\x1\x1");
                ry4 = ry4 - 1;
                set_cursor(rx4,ry4);
                puts("\x3\x4");	
            }
        }
        if(ry5!=2){
            if(rx5!= 0 && ry5!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx5,ry5);
                puts("\x1\x1");
                ry5 = ry5 - 1;
                set_cursor(rx5,ry5);
                puts("\x3\x4");	
            }
        }
        if(ry6!=2){
            if(rx6!= 0 && ry6!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx6,ry6);
                puts("\x1\x1");
                ry6 = ry6 - 1;
                set_cursor(rx6,ry6);
                puts("\x3\x4");	
            }
        }
        if(ry7!=2){
            if(rx7!= 0 && ry7!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx7,ry7);
                puts("\x1\x1");
                ry7 = ry7 - 1;
                set_cursor(rx7,ry7);
                puts("\x3\x4");	
            }
        }
    }

    void moveRobotsDerecha(){
     /*   if(ry!=77){
            if(rx != 0 && ry!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx,ry);
                puts("\x1\x1");
                ry = ry + 1;
                set_cursor(rx,ry);
                puts("\x3\x4");	
            }
        }
        if(ry1!=77){
            if(rx1 != 0 && ry1!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx1,ry1);
                puts("\x1\x1");
                ry1 = ry1 + 1;
                set_cursor(rx1,ry1);
                puts("\x3\x4");	
            }
        }
        if(ry2!=77){
            if(rx2 != 0 && ry2!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx2,ry2);
                puts("\x1\x1");
                ry2 = ry2 + 1;
                set_cursor(rx2,ry2);
                puts("\x3\x4");	
            }
        }
        if(ry3!=77){
            if(rx3 != 0 && ry3!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx3,ry3);
                puts("\x1\x1");
                ry3 = ry3 + 1;
                set_cursor(rx3,ry3);
                puts("\x3\x4");	
            }
        }*/
        if(ry4!=77){
            if(rx4 != 0 && ry4!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx4,ry4);
                puts("\x1\x1");
                ry4 = ry4 + 1;
                set_cursor(rx4,ry4);
                puts("\x3\x4");	
            }
        }
       if(ry5!=77){
            if(rx5 != 0 && ry5!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx5,ry5);
                puts("\x1\x1");
                ry5 = ry5 + 1;
                set_cursor(rx5,ry5);
                puts("\x3\x4");	
            }
        }
        if(ry6!=77){
            if(rx6 != 0 && ry6!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx6,ry6);
                puts("\x1\x1");
                ry6 = ry6 + 1;
                set_cursor(rx6,ry6);
                puts("\x3\x4");	
            }
        }
        if(ry7!=77){
            if(rx7 != 0 && ry7!=0){
                set_color(GREEN, BLACK);
                set_cursor(rx7,ry7);
                puts("\x1\x1");
                ry7 = ry7 + 1;
                set_cursor(rx7,ry7);
                puts("\x3\x4");	
            }
        }
    }

    

int main() {
    clear_screen();
    pintarmapa();
    pintarobots();

    
    //POSICIONES INICIALES
    y = 39; x = 14;
    last = 0;
    //PERSONAJE
    set_color(WHITE, BLACK);
	char pers[6] = "\x7\x8";
    set_cursor(x,y);
    puts(pers);	
    keypad_init();

    while(1){  
        uint8_t k = keypad_getkey();	
        set_color(WHITE, BLACK);

        /*MOVIEMIENTOS DEL PERSONAJE */
            if(k == 1){
                //MOVER IZQUIERA
                if(y!=2){
                last = 1;
                set_cursor(x,y);
                puts("\x1\x1");
                y = y - 1;
                set_cursor(x,y);
                puts(pers);	
                dx = x; dy = y;
                }
                moveRobotsDerecha();
            }
            if(k == 2){
                //MOVER DERECHA.
                if(y!=77){
                last = 2;
                set_cursor(x,y);
                puts("\x1\x1");
                y = y + 1;
                set_cursor(x,y);
                puts(pers);	
                dx = x; dy = y;
                }
                moveRobotsIzquierda();
            }
            if(k == 3){
                //MOVER ABAJO
                if(x!=27){
                last = 3;
                set_cursor(x,y);
                puts("\x1\x1");
                x = x + 1;
                set_cursor(x,y);
                puts(pers);	
                dx = x; dy = y;
                }
                moveRobotsArriba();
            }
            if(k == 4){
                //MOVER ARRIBA
                if(x!=3){
                    last = 4;
                    set_cursor(x,y);
                    puts("\x1\x1");
                    x = x - 1;
                    set_cursor(x,y);
                    puts(pers);	  
                    dx = x; dy = y;
                }
              moveRobotsAbajo();
            } 

            /* DISPAROS */
        if(last == 3 && k == 8){    
            dx = dx + 1;  
            for(int i = dx; i<28; i++){ 
                delay_ms(40); 
                if(dx<i){
                set_cursor(dx,dy);
                puts("\x1\x1");	
                dx = dx + 1;
                set_cursor(dx,dy);
                puts("\x16\x16");
                }

                  //COLICION ROBOT/DISPARO
                        if((dx == rx && dy == ry) || (dx == rx && dy == ry+1) || (dx == rx && dy == ry-1)){
                            set_cursor(rx,ry);
                            puts("\x1\x1");	
                            rx=0,ry=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                       }
                        if((dx == rx1 && dy == ry1) || (dx == rx1 && dy == ry1+1) || (dx == rx1 && dy == ry1-1)){
                            set_cursor(rx1,ry1);
                            puts("\x1\x1");	
                            rx1=0,ry1=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }
                        if((dx == rx2 && dy == ry2) || (dx == rx2 && dy == ry2+1) || (dx == rx2 && dy == ry2-1)){
                            set_cursor(rx2,ry2);
                            puts("\x1\x1");	
                            rx2=0,ry2=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }
                        if((dx == rx3 && dy == ry3) || (dx == rx3 && dy == ry3+1) || (dx == rx3 && dy == ry3-1)){
                            set_cursor(rx3,ry3);
                            puts("\x1\x1");	
                            rx3=0,ry3=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }
                        if((dx == rx4 && dy == ry4) || (dx == rx4 && dy == ry4+1) || (dx == rx4 && dy == ry4-1)){
                            set_cursor(rx4,ry4);
                            puts("\x1\x1");	
                            rx4=0,ry4=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }
                        if((dx == rx5 && dy == ry5 ) || (dx == rx5 && dy == ry5+1) || (dx == rx5 && dy == ry5-1 )){
                            set_cursor(rx5,ry5);
                            puts("\x1\x1");	
                            rx5=0,ry5=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }
                        if((dx == rx6 && dy == ry6 ) || (dx == rx6 && dy == ry6+1) || (dx == rx6 && dy == ry6-1)){
                            set_cursor(rx6,ry6);
                            puts("\x1\x1");	
                            rx6=0,ry6=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }
                        if((dx == rx7 && dy == ry7) || (dx == rx7 && dy == ry7+1) || (dx == rx7 && dy == ry7-1)){
                            set_cursor(rx7,ry7);
                            puts("\x1\x1");	
                            rx7=0,ry7=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }

                if(dx==27){
                    set_cursor(dx,dy);
                    puts("\x1\x1");	
                }
            } 
        }
        if(last == 4 && k == 8){    
            dx = dx - 1;  
            for(int i = dx; i>2 ; i--){ 
                delay_ms(40); 
                    if(dx>i){  
                        set_cursor(dx,dy);
                        puts("\x1\x1");	
                        dx = dx - 1;
                        set_cursor(dx,dy);
                        puts("\x16\x16");
                    }
                            //COLICION ROBOT/DISPARO
                        if((dx == rx && dy == ry) || (dx == rx && dy == ry+1) || (dx == rx && dy == ry-1)){
                            set_cursor(rx,ry);
                            puts("\x1\x1");	
                            rx=0,ry=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                       }
                        if((dx == rx1 && dy == ry1) || (dx == rx1 && dy == ry1+1) || (dx == rx1 && dy == ry1-1)){
                            set_cursor(rx1,ry1);
                            puts("\x1\x1");	
                            rx1=0,ry1=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }
                        if((dx == rx2 && dy == ry2) || (dx == rx2 && dy == ry2+1) || (dx == rx2 && dy == ry2-1)){
                            set_cursor(rx2,ry2);
                            puts("\x1\x1");	
                            rx2=0,ry2=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }
                        if((dx == rx3 && dy == ry3) || (dx == rx3 && dy == ry3+1) || (dx == rx3 && dy == ry3-1)){
                            set_cursor(rx3,ry3);
                            puts("\x1\x1");	
                            rx3=0,ry3=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }
                        if((dx == rx4 && dy == ry4) || (dx == rx4 && dy == ry4+1) || (dx == rx4 && dy == ry4-1)){
                            set_cursor(rx4,ry4);
                            puts("\x1\x1");	
                            rx4=0,ry4=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }
                        if((dx == rx5 && dy == ry5 ) || (dx == rx5 && dy == ry5+1) || (dx == rx5 && dy == ry5-1 )){
                            set_cursor(rx5,ry5);
                            puts("\x1\x1");	
                            rx5=0,ry5=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }
                        if((dx == rx6 && dy == ry6 ) || (dx == rx6 && dy == ry6+1) || (dx == rx6 && dy == ry6-1)){
                            set_cursor(rx6,ry6);
                            puts("\x1\x1");	
                            rx6=0,ry6=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }
                        if((dx == rx7 && dy == ry7) || (dx == rx7 && dy == ry7+1) || (dx == rx7 && dy == ry7-1)){
                            set_cursor(rx7,ry7);
                            puts("\x1\x1");	
                            rx7=0,ry7=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }
                                        
                if(dx==3){
                    set_cursor(dx,dy);
                    puts("\x1\x1");	
                }
            } 
        }
        if(last == 2 && k == 8){    
            dy = dy + 2;  
            for(int i = dy; i<78; i++){ 
                delay_ms(20); 
                if(dy<i){
                set_cursor(dx,dy);
                puts("\x1\x1");	
                dy = dy + 1;
                set_cursor(dx,dy);
                puts("\x16\x16");
                }
                  if((dx == rx && dy == ry)){
                            set_cursor(rx,ry);
                            puts("\x1\x1");	
                            rx=0,ry=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                       }
                        if((dx == rx1 && dy == ry1)){
                            set_cursor(rx1,ry1);
                            puts("\x1\x1");	
                            rx1=0,ry1=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }
                        if((dx == rx2 && dy == ry2)){
                            set_cursor(rx2,ry2);
                            puts("\x1\x1");	
                            rx2=0,ry2=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }
                        if((dx == rx3 && dy == ry3)){
                            set_cursor(rx3,ry3);
                            puts("\x1\x1");	
                            rx3=0,ry3=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }
                        if((dx == rx4 && dy == ry4) ){
                            set_cursor(rx4,ry4);
                            puts("\x1\x1");	
                            rx4=0,ry4=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }
                        if((dx == rx5 && dy == ry5 )){
                            set_cursor(rx5,ry5);
                            puts("\x1\x1");	
                            rx5=0,ry5=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }
                        if((dx == rx6 && dy == ry6 )){
                            set_cursor(rx6,ry6);
                            puts("\x1\x1");	
                            rx6=0,ry6=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }
                        if((dx == rx7 && dy == ry7) ){
                            set_cursor(rx7,ry7);
                            puts("\x1\x1");	
                            rx7=0,ry7=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }
                if(dy==77){
                    set_cursor(dx,dy);
                puts("\x1\x1");	
                }
            } 
        }
        if(last == 1 && k == 8){    
            dy = dy - 2;  
            for(int i = dy; i>1 ; i--){ 
                delay_ms(20); 
                if(dy>i){
                set_cursor(dx,dy);
                puts("\x1\x1");	
                dy = dy - 1;
                set_cursor(dx,dy);
                puts("\x16\x16");
                }
                   if((dx == rx && dy == ry)){
                            set_cursor(rx,ry);
                            puts("\x1\x1");	
                            rx=0,ry=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                       }
                        if((dx == rx1 && dy == ry1)){
                            set_cursor(rx1,ry1);
                            puts("\x1\x1");	
                            rx1=0,ry1=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }
                        if((dx == rx2 && dy == ry2)){
                            set_cursor(rx2,ry2);
                            puts("\x1\x1");	
                            rx2=0,ry2=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }
                        if((dx == rx3 && dy == ry3)){
                            set_cursor(rx3,ry3);
                            puts("\x1\x1");	
                            rx3=0,ry3=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }
                        if((dx == rx4 && dy == ry4) ){
                            set_cursor(rx4,ry4);
                            puts("\x1\x1");	
                            rx4=0,ry4=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }
                        if((dx == rx5 && dy == ry5 )){
                            set_cursor(rx5,ry5);
                            puts("\x1\x1");	
                            rx5=0,ry5=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }
                        if((dx == rx6 && dy == ry6 )){
                            set_cursor(rx6,ry6);
                            puts("\x1\x1");	
                            rx6=0,ry6=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }
                        if((dx == rx7 && dy == ry7) ){
                            set_cursor(rx7,ry7);
                            puts("\x1\x1");	
                            rx7=0,ry7=0;
                            robots = robots - 1;
                            set_cursor(dx,dy);
                            puts("\x1\x1");	
                            break;
                        }
                if(dy==2){
                    set_cursor(dx,dy);
                puts("\x1\x1");	
                }
            } 
        }
        
        ganar(robots);
        perder();
        delay_ms(150);
    }

    return 0;
}
