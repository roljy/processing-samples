class Up {


    // We need to keep track of a Body and a radius
    Body body;
    float r;

    color col;

    boolean touch = false;

    String type = "extend";

    String[] types = {"extend", "speed", "ball", "border"};

    Up(float x, float y, float r_) {
        r = r_;
        // This function puts the particle in the Box2d world
        makeBody(x, y, r);
        body.setUserData(this);

        type = types[floor(random(0, 4))];
    }

    // This function removes the particle from the box2d world
    void killBody() {
        box2d.destroyBody(body);
    }




    // 
    void display() {
        // We look at each body and get its screen position
        Vec2 pos = box2d.getBodyPixelCoord(body);
        // Get its angle of rotation
        float a = body.getAngle();
        pushMatrix();
        translate(pos.x, pos.y);
        rotate(a);
        if (type == "extend") {
            col = color(#CCE0D7);
            fill(#CCE0D7);
        } else if (type == "speed") {
            col = color(#CE4B27);
            fill(#CE4B27);
        } else if (type == "ball") {
            col = color(#52567A);
            fill(#52567A);
        } else if (type == "border") {
            col = color(#EEBC6D);
            fill(#EEBC6D);
        }

        stroke(255);
        strokeWeight(4);
        noStroke();
        ellipse(0, 0, r*2, r*2);
        // Let's add a line so we can see the rotation
        popMatrix();
    }

    // Here's our function that adds the particle to the Box2D world
    void makeBody(float x, float y, float r) {
        // Define a body
        BodyDef bd = new BodyDef();
        // Set its position
        bd.position = box2d.coordPixelsToWorld(x, y);
        bd.type = BodyType.STATIC;

        body = box2d.createBody(bd);

        // Make the body's shape a circle
        CircleShape cs = new CircleShape();
        cs.m_radius = box2d.scalarPixelsToWorld(r);

        FixtureDef fd = new FixtureDef();
        fd.shape = cs;
        // Parameters that affect physics
        fd.density = 1;
        fd.friction = 0;
        fd.restitution = 1;

        // Attach fixture to body
        body.createFixture(fd);

        //body.setAngularVelocity(random(-10, 10));
    }

    void update() {
        if (touch) {
            if (type == "extend") {
                if (selected == paddle1) {

                    float a = paddle1.body.getAngle();
                    float h = paddle1.h+70;
                    h = constrain(h, 0, 400);
                    Vec2 pos = box2d.getBodyPixelCoord(paddle1.body);
                    paddle1.kill();
                    paddle1 = new Paddle(pos.x, pos.y, h, a);
                    selected = paddle1;
                } else if (selected == paddle2) {

                    float a = paddle2.body.getAngle();
                    float h = paddle2.h+70;
                    h = constrain(h, 0, 400);
                    Vec2 pos = box2d.getBodyPixelCoord(paddle2.body);
                    paddle2.kill();
                    paddle2 = new Paddle(pos.x, pos.y, h, a);
                    selected = paddle2;
                }
            } else if (type == "speed") {
                if (selected == paddle1) {
                    speed1 += 2;
                } else if (selected == paddle2) {
                    speed2 += 2;
                }
            } else if (type == "ball") {
                balls.add(new Ball(box2d.getBodyPixelCoord(body).x, box2d.getBodyPixelCoord(body).y, false));
            } else if (type == "border") {
                if (selected == paddle1) {

                    float h = borders.get(2).h-10;
                    borders.get(2).kill();
                    borders.get(3).kill();

                    borders.set(2, new Border(0, height/8, 10, h, 0)); // LEFT UP
                    borders.set(3, new Border(0, height/8*7, 10, h, 0)); // LEFT DOWN
                } else if (selected == paddle2) {

                    float h = borders.get(0).h-10;
                    borders.get(0).kill();
                    borders.get(1).kill();

                    borders.set(0, new Border(width, height/8, 10, h, 0)); // RIGHT UP
                    borders.set(1, new Border(width, height/8*7, 10, h, 0)); // RIGHT DOWN
                }
            }

            for (int j = 0; j < 10; j++) {
                particles.add(new Particle(new PVector(box2d.getBodyPixelCoord(body).x, box2d.getBodyPixelCoord(body).y), col));
            }
            killBody();
        }
    }
}
