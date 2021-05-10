class Border {

    // A boundary is a simple rectangle with x,y,width,and height
    float x;
    float y;
    float w;
    float h;
    // But we also have to make a body for box2d to know about it
    Body b;

    Border(float x_, float y_, float w_, float h_, float a) {
        x = x_;
        y = y_;
        w = w_;
        h = h_;



        // Define the polygon
        PolygonShape sd = new PolygonShape();
        // Figure out the box2d coordinates
        float box2dW = box2d.scalarPixelsToWorld(w/2);
        float box2dH = box2d.scalarPixelsToWorld(h/2);
        // We're just a box
        sd.setAsBox(box2dW, box2dH);


        // Create the body
        BodyDef bd = new BodyDef();
        bd.type = BodyType.STATIC;
        bd.angle = a;
        bd.position.set(box2d.coordPixelsToWorld(x, y));
        b = box2d.createBody(bd);

        b.setUserData(this);

        // Attached the shape to the body using a Fixture

        FixtureDef fd = new FixtureDef();
        fd.shape = sd;
        // Parameters that affect physics
        fd.density = 1;
        fd.friction = 0;
        fd.restitution = 1;

        b.createFixture(fd);
    }

    // Draw the boundary, if it were at an angle we'd have to do something fancier
    void display() {
        fill(0);
        stroke(0);
        strokeWeight(1);
        rectMode(CENTER);

        float a = b.getAngle();

        fill(#3D405B);
        noStroke();

        pushMatrix();
        translate(x, y);
        rotate(-a);
        rect(0, 0, w, h);
        popMatrix();
    }

    void kill() {
        box2d.destroyBody(b);
    }
}
