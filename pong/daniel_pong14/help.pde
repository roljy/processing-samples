float helptrans = 0;
float helptrans2 = 255;
void help() {
    if (helptrans < 220) {
        fill(#F4F1DE, helptrans);
        noStroke();
        rect(0, 0, 2*width, 2*height);
        helptrans += 5;
        helptrans2 = 255;
    } else {
        background(#F4F1DE);

        textFont(bold);
        textSize(100);
        fill(#3D405B);
        text("HOW TO PLAY", 100, 200);

        textFont(italics);
        textSize(25);
        fill(#81B29A);
        text("Pong is a game where a ball is bounced\nback and forth from the left side of the screen to the right.\nThe objective is to not let the ball hit your side of\nthe screen by moving your paddle. WASD controls for P1; arrow keys for P2.\nFirst to 7 wins.\n\nThis pong is different because there will be obstacles in the field.\nThese are breakable by hitting them with the ball.", 150, 250);

        textFont(bold);
        textSize(50);
        fill(#3D405B);
        text("Power-Ups", 100, 530);

        textFont(italics);
        textSize(25);
        fill(#81B29A);
        text("Power-ups appear as coloured ellipses. Hitting these will give you the power-up.\n\nDark Blue - Creates another ball\nLight Blue - Lengthens your paddle\nRed - Increases your speed\nYellow - Eliminates opponent's border", 150, 580);


        fill(#F4F1DE, helptrans2);
        noStroke();
        rect(0, 0, 2*width, 2*height);
        helptrans2 -= 5;
    }
}
