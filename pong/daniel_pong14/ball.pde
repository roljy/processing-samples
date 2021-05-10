class Ball {

    Body body;      

    float w;

    boolean og;

    boolean reset = false;

    Ball(float x, float y, boolean og_) {
        w = 30;
        og = og_;


        // BODY
        BodyDef bd = new BodyDef();
        bd.type = BodyType.DYNAMIC;
        bd.position.set(box2d.coordPixelsToWorld(x, y));
        body = box2d.createBody(bd);

        body.setUserData(this);

        // SHAPE
        CircleShape ps = new CircleShape();
        ps.m_radius = box2d.scalarPixelsToWorld(w/2);
        //ps.setAsBox(bw, bh);

        //FIXTURE
        FixtureDef fd = new FixtureDef();
        fd.shape = ps;

        fd.density = 5;
        fd.friction = 0;
        fd.restitution = 1;

        // ATTACH
        body.createFixture(fd);

        float m = random(7, 10)*5;
        if (random(1) > 0.5) {
            m *= -1;
        }

        body.setLinearVelocity(new Vec2(m, random(-5f, 5f)));
        body.setAngularVelocity(random(-10, 10));
    }

    void display() {
        // We need the Body’s position and angle
        Vec2 pos = box2d.getBodyPixelCoord(body);        
        float a = body.getAngle();

        pushMatrix();
        translate(pos.x, pos.y);        // Using the Vec2 position and float angle to
        rotate(-a);                    // translate and rotate the rectangle
        fill(#3D405B);
        noStroke();
        rectMode(CENTER);
        ellipse(0, 0, w, w);
        //rect(0, 0, w, h);
        popMatrix();
    }

    void killBody() {
        box2d.destroyBody(body);
    }
}
