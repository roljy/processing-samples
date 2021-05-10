class Particle {
    PVector position;
    PVector velocity;
    PVector acceleration;
    float lifespan;
    
    color c;

    Particle(PVector l, color c_) {
        acceleration = new PVector(0, 0.05);
        velocity = new PVector(random(-1, 1), random(-2, 0));
        position = l.copy();
        lifespan = 255.0;
        c = c_;
    }

    void run() {
        update();
        display();
    }

    // Method to update position
    void update() {
        velocity.add(acceleration);
        position.add(velocity);
        lifespan -= 1.0;
    }

    // Method to display
    void display() {
        //stroke(255, lifespan);
        noStroke();
        fill(c, lifespan);
        ellipse(position.x, position.y, 8, 8);
    }

    // Is the particle still useful?
    boolean isDead() {
        if (lifespan < 0.0) {
            return true;
        } else {
            return false;
        }
    }
}
