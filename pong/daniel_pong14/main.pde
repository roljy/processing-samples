void menu() {
    background(#F4F1DE);

    textAlign(CORNER);

    textFont(light);
    textSize(30);
    fill(#3D405B);
    text("daniel tran", 100, 150);

    textFont(bold);
    textSize(100);
    fill(#3D405B);
    text("PONG", 100, 250);

    single.display();
    multi.display();
    help.display();

    single.hover();
    single.update();
    single.clicked();

    multi.hover();
    multi.update();
    multi.clicked();

    help.hover();
    help.update();
    help.clicked();

    for (Boundary b : walls) {
        b.display();
    }
    
    if (mousePressed) {
        balls.add(new Ball(mouseX, mouseY, false));
    }
    
    for (Ball b: balls) {
        b.display();
    }
    
    box2d.step();
}
