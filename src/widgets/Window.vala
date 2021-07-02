using Gtk;
using Cairo;
public class AbishtuTasks.Window : Gtk.ApplicationWindow {
    private GLib.List<AbishtuTasks.TaskCard> taskCards = new GLib.List<AbishtuTasks.TaskCard>();

    public Gtk.Button newTaskButton = new Gtk.Button.with_label("New");
    public Gtk.HeaderBar headerBar = new Gtk.HeaderBar();
    public Gtk.Box mainWidgetContainer = new Gtk.Box(Gtk.Orientation.VERTICAL, 5);
    public Gtk.ScrolledWindow scrollWindow = new Gtk.ScrolledWindow();

    public Window(Gtk.Application app) {
        Object(
            application: app
        );
    }
    private void createHeaderBar() {

        headerBar.show_title_buttons = true;

        newTaskButton.set_halign(Gtk.Align.CENTER);
        newTaskButton.set_valign(Gtk.Align.CENTER);
        newTaskButton.get_style_context().add_class("suggested-action");
        newTaskButton.clicked.connect(() => {
            taskCards.foreach((taskCard) => {
                taskCard.taskColourBar.activateDraw(1, 2, 0, 1);
            });
        });
        
        headerBar.pack_start(newTaskButton);
        
        set_titlebar(headerBar);
    }

    construct {
        title = "Abishtu Tasks";
        set_default_size(800, 600);
        createHeaderBar();
        var taskCard2 = new AbishtuTasks.TaskCard();
        for (int i = 0; i < 10; i++) {
            this.taskCards.append(new AbishtuTasks.TaskCard());
        }
        this.taskCards.foreach((taskCard) => {
            mainWidgetContainer.append(taskCard);
        });

        scrollWindow.set_child(mainWidgetContainer);
        child = scrollWindow;

        show();
    }
}