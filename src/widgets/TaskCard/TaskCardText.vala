public class AbishtuTasks.TaskCardText : Gtk.Box {
    public const int TASK_NAME_FONT_SIZE = 17408;

    public string? taskName        {get; set;}
    
    public string? startDateString {get; set;}
    public string? startTimeString {get; set;}

    public string? endDateString   {get; set;}
    public string? endTimeString   {get; set;}

    public Gtk.Label taskNameLabel  {get; set;}
    public Gtk.Label taskStartLabel {get; set;}
    public Gtk.Label taskEndLabel   {get; set;}

    public TaskCardText() {
        Object(
            orientation: Gtk.Orientation.VERTICAL,
            spacing: 10
        );
    }

    construct {
        baseline_position = Gtk.BaselinePosition.CENTER;
        set_halign(Gtk.Align.FILL);
        set_valign(Gtk.Align.FILL);
        set_hexpand(false);
        set_vexpand(false);

        taskName = "-";
        
        startDateString = "dd/mm/yyyy";
        endDateString = "dd/mm/yyyy";
        
        startTimeString = "HH:MM";
        endTimeString = "HH:MM";

        string startString = @"Start: $startDateString @ $startTimeString";
        string endString = @"End: $endDateString @ $endTimeString";

        taskNameLabel = new Gtk.Label(taskName);
        taskStartLabel = new Gtk.Label(startString);
        taskEndLabel = new Gtk.Label(endString);

        // Task Name Props
        Pango.AttrSize txtSize = new Pango.AttrSize(17408);
        Pango.AttrList attrList = new Pango.AttrList();
        attrList.insert(txtSize.copy());
        taskNameLabel.attributes = attrList;
        taskNameLabel.set_halign(Gtk.Align.START);
        taskNameLabel.set_margin_start(10);

        // Start Date Time Props
        taskStartLabel.set_halign(Gtk.Align.START);
        taskStartLabel.set_margin_start(5);

        // End Date Time Props
        taskEndLabel.set_halign(Gtk.Align.START);
        taskEndLabel.set_margin_start(5);

        append(taskNameLabel);
        append(taskStartLabel);
        append(taskEndLabel);
        
    }
}