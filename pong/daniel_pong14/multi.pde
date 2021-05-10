float trans = 0;
float trans2 = 255;
boolean clicked = false; // has clicked to start? 
boolean prestartmulti = true;
boolean startmulti = false;
int freeze = 0;

ArrayList<Border> borders;
ArrayList<Up> ups;

void multi() {

    if (!startmulti) {
        trans = 0;
        trans2 = 255;
        clicked = false; // has clicked to start? 
        prestartmulti = true;
        startmulti = false;
        freeze = 0;

        if (balls.size() > 0) {
            for (int i = balls.size()-1; i >= 0; i--) {
                balls.get(i).killBody();
            }
        }

        borders = new ArrayList<Border>();
        ups = new ArrayList<Up>();
        balls = new ArrayList<Ball>();
        walls = new ArrayList<Boundary>();
        boxes = new ArrayList<Box>();
        mills = new ArrayList<Mill>();

        ups.add(new Up(random(100, width-100), random(100, height), 15));
        ups.add(new Up(random(100, width-100), random(100, height), 15));
        ups.add(new Up(random(100, width-100), random(100, height), 15));
        ups.add(new Up(random(100, width-100), random(100, height), 15));

        borders.add(new Border(0, height/8, 10, height/4, 0)); // LEFT UP
        borders.add(new Border(0, height/8*7, 10, height/4, 0)); // LEFT DOWN
        borders.add(new Border(width, height/8, 10, height/4, 0)); // RIGHT UP
        borders.add(new Border(width, height/8*7, 10, height/4, 0)); // RIGHT DOWN

        boxes.add(new Box(random(100, width-100), random(100, height), random(10, 100), random(10, 100), random(-5, 5)*10, false));
        boxes.add(new Box(random(100, width-100), random(100, height), random(10, 100), random(10, 100), random(-5, 5)*10, false));
        box2d.step();

        for (Box b : boxes) {
            b.toStatic();
        }

        mills.add(new Mill(random(200, width-200), random(200, height-200)));
        mills.add(new Mill(random(200, width-200), random(200, height-200)));

        startmulti = true;
        balls.add(new Ball(width/2, height/2, true));

        paddle1 = new Paddle(100, height/2, 150, 0);
        paddle2 = new Paddle(width-100, height/2, 150, 0);

        trans = 0;
        trans2 = 255;
        clicked = false; // has clicked to start? 
        freeze = 0;

        points1 = 0;
        points2 = 0;
    }

    if (trans < 220) {
        fill(#F4F1DE, trans);
        noStroke();
        rect(0, 0, 2*width, 2*height);
        trans += 5;
    } else {

        background(#F4F1DE);

        // CENTER LINE
        strokeWeight(5);
        stroke(#F2CC8F);
        line(width/2, 0, width/2, height);

        textAlign(CENTER);
        textFont(bold);
        textSize(50);
        fill(#E07A5F);
        text(points1, width/2 - 80, 50);
        text(points2, width/2 + 80, 50);



        // Display all the boxes
        for (Ball b : balls) {
            b.display();
        }

        for (int i = ups.size()-1; i >= 0; i--) {
            Up b = ups.get(i);
            b.display();
            if (b.touch) {
                ups.remove(i);
                ups.add(new Up(random(100, width-100), random(100, height), 15));
                broke.play();
            }
            b.update();
        }

        for (Boundary b : walls) {
            b.display();
        }

        for (Border b : borders) {
            b.display();
        }

        for (int i = boxes.size()-1; i >= 0; i--) {
            boxes.get(i).display();
            if (boxes.get(i).done()) {

                for (int j = 0; j < 10; j++) {
                    particles.add(new Particle(new PVector(box2d.getBodyPixelCoord(boxes.get(i).body).x, box2d.getBodyPixelCoord(boxes.get(i).body).y), color(#E07A5F)));
                }

                boxes.remove(i);
                broke.play();

                boxes.add(new Box(random(200, width-200), random(200, height-200), random(10, 100), random(10, 100), random(-5, 5)*10, false));

                box2d.step();
                for (Box b : boxes) {
                    b.toStatic();
                }
            }
        }

        for (int i = mills.size()-1; i >= 0; i--) {
            mills.get(i).display();
            if (mills.get(i).done()) {

                broke.play();


                for (int j = 0; j < 10; j++) {
                    particles.add(new Particle(new PVector(box2d.getBodyPixelCoord(mills.get(i).box1.body).x, box2d.getBodyPixelCoord(mills.get(i).box1.body).y), color(#E07A5F)));
                }
                mills.remove(i);

                mills.add(new Mill(random(200, width-200), random(200, height-200)));
            }
        }


        if (!clicked) {
            textFont(italics);
            textSize(50);
            fill(#3D405B);
            text("click anywhere\nto begin", width/2, height/2 - 100);

            if (mousePressed) {
                clicked = true;
            }
        } else {
            // We must always step through time!
            box2d.step();
        }

        Vec2 force1 = new Vec2(0, 0);
        Vec2 force2 = new Vec2(0, 0);
        float a = 0;
        float a2 = 0;

        if (keys[0]) {
            force1.y -= speed1;
        }
        if (keys[2]) {
            force1.y += speed1;
        }
        if (keys[1]) {
            a += 5;
        }
        if (keys[3]) {
            a -= 5;
        }

        if (keys[4]) {
            force2.y -= speed2;
        }
        if (keys[6]) {
            force2.y += speed2;
        }
        if (keys[5]) {
            a2 += 5;
        }
        if (keys[7]) {
            a2 -= 5;
        }

        paddle1.applyForce(force1, a);
        paddle1.display();

        paddle2.applyForce(force2, a2);
        paddle2.display();

        // FADE IN
        fill(#F4F1DE, trans2);
        noStroke();
        rect(0, 0, 2*width, 2*height);
        trans2 -= 5;

        if (points1 >= 7 || points2 >= 7) {
            
            win.play();
            overtrans = 0;
            overtrans2 = 255;
            startmulti = false;
            back = "multi";
            screen = "over";

            for (int i = ups.size()-1; i >= 0; i--) {
                ups.get(i).killBody();
            }

            for (int i = balls.size()-1; i >= 0; i--) {
                balls.get(i).killBody();
            }
            
            balls.clear();

            for (int i = boxes.size()-1; i >= 0; i--) {
                boxes.get(i).killBody();
            }

            for (int i = mills.size()-1; i >= 0; i--) {
                mills.get(i).box1.killBody();
                mills.get(i).box2.killBody();
            }

            paddle1.kill();
            paddle2.kill();

            ppoints1 = points1;
            ppoints2 = points2;
        }
    }
}
