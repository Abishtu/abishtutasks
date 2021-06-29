public class AbishtuTasks.App : Gtk.Application {
    public App() {
        Object(
            application_id: "com.abishtu.abishtutasks",
            flags: GLib.ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate() {
        var window = new AbishtuTasks.Window(this);
        add_window(window);
    }
}