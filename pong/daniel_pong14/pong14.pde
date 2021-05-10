/* ***********************************************************************
 * Daniel Tran
 * Pong
 * Computer Science 10 Block 2
 * 12/20/2020
 
 * This program is my own work - Digital Signature DT */

// !!!!!! BOX2D FOR PROCESSING LIBRARY needed for this project !!!!!! DOWNLOAD FROM LIBRARIES!!!
// !!!!!! PROCESSING SOUND LIBRARY needed for this project !!!!!!

// CREDITS TO DANIEL SHIFFMAN BOX2D TUTORIALS AND EXAMPLES

import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;

import processing.sound.*;

Box2DProcessing box2d;

ArrayList<Ball> balls;
ArrayList<Boundary> walls;
ArrayList<Box> boxes;
ArrayList<Mill> mills;

ArrayList<Particle> particles;

Boolean[] keys = {false, false, false, false, false, false, false, false};

PFont bold, italics, light;

Button single, multi, help, again, menu, backbutton;

int points1, points2 = 0;

Paddle paddle1, paddle2;

String screen = "menu";

SoundFile hit1, hit2, button, broke, goal, win;

float speed1 = 5;
float speed2 = 5;

String back;

Paddle selected = null;

void setup() {

    hit1 = new SoundFile(this, "hit11.mp3");
    hit2 = new SoundFile(this, "hit22.mp3");
    button = new SoundFile(this, "button.mp3");
    broke = new SoundFile(this, "break.mp3");
    goal = new SoundFile(this, "goal.mp3");
    win = new SoundFile(this, "win.mp3");


    size(1200, 800);
    box2d = new Box2DProcessing(this);
    box2d.createWorld();

    box2d.listenForCollisions();

    balls = new ArrayList<Ball>();
    walls = new ArrayList<Boundary>();
    boxes = new ArrayList<Box>();
    mills = new ArrayList<Mill>();
    ups = new ArrayList<Up>();

    particles = new ArrayList<Particle>();

    float b = 10;

    balls.add(new Ball(random(width), random(height), false));
    balls.add(new Ball(random(width), random(height), false));
    balls.add(new Ball(random(width), random(height), false));
    balls.add(new Ball(random(width), random(height), false));
    balls.add(new Ball(random(width), random(height), false));
    balls.add(new Ball(random(width), random(height), false));

    walls.add(new Boundary(width/2, -b, width, b, 0, 1)); // TOP
    walls.add(new Boundary(width/2, height+b, width, b, 0, 2)); // BOTTOM
    walls.add(new Boundary(-b, height/2, b, height, 0, 3)); // LEFT
    walls.add(new Boundary(width+b, height/2, b, height, 0, 4)); // RIGHT

    box2d.setGravity(0, 0);

    bold = createFont("renner-bold.otf", 32);
    italics = createFont("renner-bolditalic.otf", 32);
    light = createFont("renner-lightitalic.otf", 32);

    textFont(italics);
    textSize(50);


    single = new Button("singleplayer", 100, 370, 50, color(#81B29A), color(#9AC1AE), italics, "single");
    multi = new Button("multiplayer", 100, 440, 50, color(#81B29A), color(#9AC1AE), italics, "multi");
    help = new Button("help", 100, 510, 50, color(#81B29A), color(#9AC1AE), italics, "help");
    again = new Button("play again", width/2-(textWidth("play again")/2), 500, 50, color(#81B29A), color(#9AC1AE), italics, "multi");
    menu = new Button("main menu", width/2-(textWidth("main menu")/2), 570, 50, color(#81B29A), color(#9AC1AE), italics, "menu");
    backbutton = new Button("back", 50, 50, 30, color(#81B29A), color(#9AC1AE), italics, "menu");
    backbutton.x = backbutton.ox + 50;



    //keys = new Boolean[4];
}

void draw() {

    if (screen != "menu" && screen != "over") {

        if (backbutton.clicked()) {
            startmulti = false;
            if (backbutton.clicked()) {

                if (ups.size() > 0) {
                    for (int i = ups.size()-1; i >= 0; i--) {
                        ups.get(i).killBody();
                    }
                }

                if (balls.size() > 0) {
                    for (int i = balls.size()-1; i >= 0; i--) {
                        balls.get(i).killBody();
                        
                    }
                    balls.clear();
                }

                if (boxes.size() > 0) {
                    for (int i = boxes.size()-1; i >= 0; i--) {
                        boxes.get(i).killBody();
                    }
                }

                if (mills.size() > 0) {
                    for (int i = mills.size()-1; i >= 0; i--) {
                        mills.get(i).box1.killBody();
                        mills.get(i).box2.killBody();
                    }
                }

                if (paddle1 != null) {
                    paddle1.kill();
                    paddle2.kill();
                }

                points1 = 0;
                points2 = 0;
            }
        }
    }


    if (screen == "menu") {
        menu();
        helptrans = 0;
        helptrans2 = 255;
    }

    if (screen == "multi") {
        multi();
    }

    if (screen == "over") {
        over();
    }

    if (screen == "single") {
        single();
    }


    if (screen == "help") {
        help();
        back = "menu";
    }

    if (screen != "menu" && screen != "over") {
        backbutton.display();
        backbutton.hover();
        backbutton.update();
    }


    if (particles.size() > 0) {
        for (int i = particles.size()-1; i >= 0; i--) {
            Particle p = particles.get(i);
            p.run();
            if (p.isDead()) {
                particles.remove(i);
            }
        }
    }

    if (balls.size() > 0) {
        for (int i = balls.size()-1; i >= 0; i--) {
            Ball p = balls.get(i);
            if (p.reset) {
                balls.remove(i);
                p.killBody();
            }
        }
    }


    if (paddle1 != null) {
        if (paddle1.reset) {
            float a = paddle1.body.getAngle();
            Vec2 pos = box2d.getBodyPixelCoord(paddle1.body);
            paddle1.kill();
            paddle1 = new Paddle(pos.x, pos.y, 150, a);
            speed1 = 5;
            //selected = paddle1;

            borders.get(2).kill();
            borders.get(3).kill();

            borders.set(2, (new Border(width, height/8, 10, height/4, 0))); // RIGHT UP
            borders.set(3, (new Border(width, height/8*7, 10, height/4, 0))); // RIGHT DOWN
        }

        if (paddle2.reset) {
            float a = paddle2.body.getAngle();
            Vec2 pos = box2d.getBodyPixelCoord(paddle2.body);
            paddle2.kill();
            paddle2 = new Paddle(pos.x, pos.y, 150, a);
            speed2 = 5;
            //selected = paddle1;

            borders.get(0).kill();
            borders.get(1).kill();

            borders.set(0, (new Border(0, height/8, 10, height/4, 0))); // LEFT UP
            borders.set(1, (new Border(0, height/8*7, 10, height/4, 0))); // LEFT DOWN
        }
    }
}

boolean inRect(float x, float y, float x2, float y2, float w, float h) {
    return (x > x2 && x < x2 + w && y > y2 && y < y2 + h);
}

void keyPressed() {

    if (key == 'w') {
        keys[0] = true;
    }
    if (key == 'a') {
        keys[1] = true;
    }
    if (key == 's') {
        keys[2] = true;
    }
    if (key == 'd') {
        keys[3] = true;
    }

    if (keyCode == UP) {
        keys[4] = true;
    }
    if (keyCode == LEFT) {
        keys[5] = true;
    }
    if (keyCode == DOWN) {
        keys[6] = true;
    }
    if (keyCode == RIGHT) {
        keys[7] = true;
    }
}

void keyReleased() {
    if (key == 'w') {
        keys[0] = false;
    }
    if (key == 'a') {
        keys[1] = false;
    }
    if (key == 's') {
        keys[2] = false;
    }
    if (key == 'd') {
        keys[3] = false;
    }

    if (keyCode == UP) {
        keys[4] = false;
    }
    if (keyCode == LEFT) {
        keys[5] = false;
    }
    if (keyCode == DOWN) {
        keys[6] = false;
    }
    if (keyCode == RIGHT) {
        keys[7] = false;
    }
}
