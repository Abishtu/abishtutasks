using Gtk;

public class AbishtuTasks.NewTaskWindow.Title : Gtk.Box {

    private Gtk.Label titleLabel = new Gtk.Label("Title");
    private Gtk.Entry titleEntry = new Gtk.Entry.with_buffer(new EntryBuffer());

    private const string STYLE_CLASS = "frame";

    public Title() {
        Object(
            orientation: Gtk.Orientation.HORIZONTAL, 
            spacing: 0
        );
    }

    private void setUpBox() {
        baseline_position = Gtk.BaselinePosition.CENTER;

        set_margin_top(10);
        set_margin_bottom(10);

        set_halign(Gtk.Align.FILL);
        set_valign(Gtk.Align.FILL);

        set_size_request(300, -1);
    }

    private void setUpLabel() {
        titleLabel.set_hexpand(true);
        
        titleLabel.set_halign(Gtk.Align.START);
        titleLabel.set_valign(Gtk.Align.CENTER);

        titleLabel.set_margin_start(7);
    }

    private void setUpEntry() {
        titleEntry.enable_emoji_completion = true;
        titleEntry.has_frame = true;
        titleEntry.input_purpose = Gtk.InputPurpose.FREE_FORM;
        titleEntry.input_hints = Gtk.InputHints.NONE;
        titleEntry.show_emoji_icon = true;

        titleEntry.set_margin_end(7);
        
        titleEntry.set_halign(Gtk.Align.END);
        titleEntry.set_valign(Gtk.Align.CENTER);

        titleEntry.set_hexpand(true);

        titleEntry.get_style_context().add_class(STYLE_CLASS);

    }

    public string getEntryText() {
        return titleEntry.buffer.get_text();
    }

    construct {

        setUpBox();
        setUpEntry();
        setUpLabel();

        append(titleLabel);
        append(titleEntry);
    }
}