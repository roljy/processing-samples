class Paddle {

    float x, y;
    float w, h;
    Body body;
    
    color c;

    Vec2 acc, vel;
    
    boolean reset = false;

    Paddle(float x_, float y_, float h_, float a) {
        float x = x_;
        float y = y_;
        w = 15;
        h = h_;

        acc = new Vec2(0, 0);
        vel = new Vec2(0, 0);

        // Add the box to the box2d world
        makeBody(new Vec2(x, y), w, h, a);
        body.setUserData(this);
    }

    void display() {
        // We look at each body and get its screen position
        Vec2 pos = box2d.getBodyPixelCoord(body);
        // Get its angle of rotation
        float a = body.getAngle();

        rectMode(PConstants.CENTER);
        pushMatrix();
        translate(pos.x, pos.y);
        rotate(-a);
        if (selected == this) {
            fill(#B3D0C2);
        } else {
            fill(#67A286);
            
        }
        
        noStroke();
        rect(0, 0, w, h);
        popMatrix();
    }

    void setposition(float x, float y, float a) {
        Vec2 pos = body.getWorldCenter();
        Vec2 target = box2d.coordPixelsToWorld(x, y);
        Vec2 diff = new Vec2(target.x-pos.x, target.y-pos.y);
        diff.mulLocal(50);
        setVelocity(diff.mulLocal(0.5));
        setAngularVelocity(a);
    }

    void applyForce(Vec2 force, float a) {
        vel.mulLocal(0.8);
        vel.addLocal(force);

        Vec2 pos = box2d.getBodyPixelCoord(body);
        
        if (pos.y - h/2 < 0) {
            vel.mulLocal(0);
            setposition(pos.x, pos.y + 1, a);
        } else if (pos.y + h/2 > height) {
            vel.mulLocal(0);
            setposition(pos.x, pos.y - 1, a);
        } else {
            setposition(pos.x+vel.x, pos.y+vel.y, a);
        }
        
        /*
        if (!(pos.y-vel.y > height) && !(pos.y-vel.y < 0)) {
            
        } else {
            vel.mulLocal(-1);
            setposition(pos.x+vel.x, pos.y+vel.y, a);
        }*/
    }

    void setAngularVelocity(float a) {
        body.setAngularVelocity(a);
    }
    void setVelocity(Vec2 v) {
        body.setLinearVelocity(v);
    }

    // This function adds the rectangle to the box2d world
    void makeBody(Vec2 center, float w_, float h_, float a) {
        // Define and create the body
        BodyDef bd = new BodyDef();
        bd.type = BodyType.KINEMATIC;
        bd.position.set(box2d.coordPixelsToWorld(center));
        bd.fixedRotation = true;
        bd.angle = a;
        body = box2d.createBody(bd);

        // Define a polygon (this is what we use for a rectangle)
        PolygonShape ps = new PolygonShape();
        float box2dW = box2d.scalarPixelsToWorld(w_/2);
        float box2dH = box2d.scalarPixelsToWorld(h_/2);
        ps.setAsBox(box2dW, box2dH);

        // Define a fixture
        FixtureDef fd = new FixtureDef();
        fd.shape = ps;
        // Parameters that affect physics
        fd.density = 1;
        fd.friction = 0;
        fd.restitution = 1;

        body.createFixture(fd);
    }
    
    float remake() {
        float a = body.getAngle();
        kill();
        return a;
    }
    
    void kill() {
        box2d.destroyBody(body);
    }
}
