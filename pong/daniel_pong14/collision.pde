void beginContact(Contact cp) {
    if (screen != "menu") {
        // Get both fixtures
        Fixture f1 = cp.getFixtureA();
        Fixture f2 = cp.getFixtureB();
        // Get both bodies
        Body b1 = f1.getBody();
        Body b2 = f2.getBody();
        // Get our objects that reference these bodies
        Object o1 = b1.getUserData();
        Object o2 = b2.getUserData();

        // If object 1 is a Box, then object 2 must be a particle
        // Note we are ignoring particle on particle collisions

        //println(o1.getClass(), o2.getClass());

        if (o1.getClass() == Boundary.class && o2.getClass() == Ball.class) {
            Boundary b = (Boundary) o1;
            Ball ball = (Ball) o2;
            if (b.n == 3) { // LEFT
                points2++;
                paddle1.reset = true;
                if (!ball.og) {
                    ball.reset = true;
                }
                goal.play();
            } else if (b.n == 4) { // RIGHT
                points1++;
                paddle2.reset = true;
                if (!ball.og) {
                    ball.reset = true;
                }
                goal.play();
            }
        }

        if (o1.getClass() == Box.class && o2.getClass() == Ball.class) {
            hit2.play();
            Box b = (Box) o1;
            b.health -= 40;
        }

        if (o1.getClass() == Paddle.class && o2.getClass() == Ball.class) {
            hit1.play();
            Paddle p = (Paddle) o1;
            selected = p;
        }

        if (o1.getClass() == Up.class && o2.getClass() == Ball.class) {
            Up b = (Up) o1;
            b.touch = true;
        }

        if (o1.getClass() == Ball.class && o2.getClass() == Up.class) {
            Up b = (Up) o2;
            b.touch = true;
        }
    }
}
