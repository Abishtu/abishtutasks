using Gtk;

public class AbishtuTasks.NewTaskWindow.Window : Gtk.Window {

    private Gtk.Box taskFields = new Gtk.Box(Gtk.Orientation.VERTICAL, 0);

    private Gtk.ListBox titleListBox = new Gtk.ListBox();

    private AbishtuTasks.NewTaskWindow.Title titleBox = new AbishtuTasks.
                                                            NewTaskWindow.
                                                            Title();

    private Gtk.HeaderBar headerBar = new Gtk.HeaderBar();
    
    private const string STYLE_CLASS = "frame";

    private void setUpListBox() {
        titleListBox.selection_mode = Gtk.SelectionMode.SINGLE;
        titleListBox.set_halign(Gtk.Align.CENTER);
        titleListBox.set_valign(Gtk.Align.CENTER);

        titleListBox.set_hexpand(true);
        titleListBox.set_vexpand(false);

        titleListBox.set_margin_top(10);
        titleListBox.set_margin_bottom(20);

        titleListBox.set_size_request(300, -1);

        titleListBox.get_style_context().add_class(STYLE_CLASS);

        titleListBox.activate_on_single_click = false;
    }

    construct {
        title = "Create New Task";
        setUpListBox();
        titleListBox.append(titleBox);
        taskFields.append(titleListBox);
        child = taskFields;

        set_titlebar(headerBar);
        show();
    }
}