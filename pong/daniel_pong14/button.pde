class Button {

    String text;
    float x, y;
    float h, w;

    float tx; // target x
    float ox; // original x

    color oc; // original color
    color c;
    color c2;

    PFont font;

    String changeto;

    Button(String s, float x_, float y_, float h_, color c_, color c2_, PFont pfont, String cht) {
        text = s;

        changeto = cht;

        x = x_;
        ox = x;
        tx = x;
        y = y_;
        h = h_;

        oc = c_;
        c = c_;
        c2 = c2_;
        font = pfont;

        textFont(font);
        textSize(h);

        w = textWidth(text);
    }

    void display() {
        textFont(font);
        textSize(h);
        fill(c);
        text(text, x, y);
        
    }

    boolean hover() {
        if (inRect(mouseX, mouseY, ox, y-h, w, h)) {
            tx = ox + 50;
            c = c2;
            return true;
        } else {
            tx = ox;
            c = oc;
            return false;
        }
    }

    boolean clicked() {
        if (inRect(mouseX, mouseY, ox, y-h, w, h) && mousePressed) {
            screen = changeto;
            button.play();
            return true;
        } else {
            return false;
        }
    }

    void update() {
        float v = tx - x;
        v *= 0.3;
        x += v;
    }
}
