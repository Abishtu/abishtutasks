public class AbishtuTasks.ColourBar : Gtk.DrawingArea {
    private const int barHeight = 110;
    private const int barWidth = 20;

    public double red   {get; set;}
    public double green {get; set;}
    public double blue  {get; set;}
    public double alpha {get; set;}

    public void set_rgba(int r, int g, int b, int a) {
        red = r;
        green = g;
        blue = b;
        alpha = a;
    }

    public void drawColourBar(Gtk.DrawingArea drawingArea, Cairo.Context cr, 
                              int width, int height) {
        cr.set_source_rgba(red, green, blue, alpha);
        cr.rectangle(0, 0, barWidth, barHeight);
        cr.fill();
    }

    public void activateDraw(int r, int g, int b, int a) {
        this.set_rgba(r, g, b, a);
        set_draw_func(drawColourBar);
    }

    construct {
        content_height = barHeight;
        content_width = barWidth;

        set_size_request(barWidth, barHeight);
        set_halign(Gtk.Align.FILL);
        set_valign(Gtk.Align.FILL);
        set_vexpand(true);
    }


}