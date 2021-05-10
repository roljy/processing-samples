class Mill {
    RevoluteJoint joint;
    Box box1, box2;

    Mill(float x, float y) {
        box1 = new Box(x, y-20, random(30, 150), random(10, 50), 0, false); 
        box2 = new Box(x, y, 0, 0, 0, true);

        RevoluteJointDef rjd = new RevoluteJointDef();

        rjd.initialize(box1.body, box2.body, box1.body.getWorldCenter());

        rjd.motorSpeed = random(-5, 5);;
        rjd.maxMotorTorque = 10000000000.0;
        rjd.enableMotor = true;

        joint = (RevoluteJoint) box2d.world.createJoint(rjd);
    }

    void display() {
        box2.display();
        box1.display();

        // Draw anchor just for debug
    }

    boolean done() {
        if (box1.health <= 0) {
            box2.killBody();
            box1.killBody();
            return true;
        } 
        return false;
    }
}
