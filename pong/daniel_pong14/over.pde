float overtrans = 0;
float overtrans2 = 255;
int ppoints1, ppoints2;
void over() {
    if (overtrans < 220) {
        fill(#F4F1DE, overtrans);
        noStroke();
        rect(0, 0, 2*width, 2*height);
        overtrans += 5;
        overtrans2 = 255;
        again.x = width/2 - again.w/2;



        points1 = 0;
        points2 = 0;
    } else {
        background(#F4F1DE);

        textAlign(CENTER);
        textFont(bold);
        textSize(50);
        fill(#3D405B);
        text(ppoints1 + "  -  " + ppoints2, width/2, 150);


        textAlign(CENTER);
        textFont(bold);
        textSize(100);
        fill(#3D405B);


        if (back == "multi") {
            if (ppoints1 > ppoints2) {
                text("LEFT PLAYER\nWON", width/2, 250);
            } else {
                text("RIGHT PLAYER\nWON", width/2, 250);
            }
        } else {
            if (ppoints1 > ppoints2) {
                text("YOU\nWON", width/2, 250);
            } else {
                text("YOU\nLOST", width/2, 250);
            }
        }


        textAlign(CORNER);

        again.changeto = back;

        again.display();
        again.hover();
        again.update();
        again.clicked();

        menu.display();
        menu.hover();
        menu.update();
        menu.clicked();




        fill(#F4F1DE, overtrans2);
        noStroke();
        rect(0, 0, 2*width, 2*height);
        overtrans2 -= 5;
    }
}
