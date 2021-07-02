public class AbishtuTasks.TaskCardButton : Gtk.Button {
    construct {
        child = new AbishtuTasks.TaskCardText();
        set_hexpand(true);
        set_vexpand(true);
        set_halign(Gtk.Align.FILL);
        set_valign(Gtk.Align.FILL);
    }
}