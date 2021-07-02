public class AbishtuTasks.TaskCard : Gtk.Box {
    public AbishtuTasks.ColourBar taskColourBar = new AbishtuTasks.ColourBar();
    
    public TaskCard() {
        Object(
            orientation: Gtk.Orientation.HORIZONTAL,
            spacing: 0
        );
    }
    construct {
        set_size_request(400, 110);
        baseline_position = Gtk.BaselinePosition.CENTER;
        homogeneous = false;
        set_halign(Gtk.Align.CENTER);
        set_hexpand(false);
        set_valign(Gtk.Align.START);
        set_vexpand(false);
        set_margin_top(15);

        taskColourBar.activateDraw(1, 0, 0, 1);
        append(taskColourBar);

        var taskCardButton = new AbishtuTasks.TaskCardButton();
        append(taskCardButton);
    }
}