using Gtk;
using Cairo;
public class AbishtuTasks.Window : Gtk.ApplicationWindow {
    public Window(Gtk.Application app) {
        Object(
            application: app
        );
    }

    construct {
        title = "Abishtu Tasks";
        set_default_size(800, 600);

        var headerBar = new Gtk.HeaderBar();
        headerBar.show_title_buttons = true;
        var button = new Gtk.Button.with_label("New");
        button.set_halign(Gtk.Align.CENTER);
        button.set_valign(Gtk.Align.CENTER);
        button.get_style_context().add_class("suggested-action");
        headerBar.pack_start(button);
        set_titlebar(headerBar);
        show();
    }
}