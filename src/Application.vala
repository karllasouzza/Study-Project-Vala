public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: "com.karlla.souzza",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }
    
    protected override void activate () {
        var main_window = new Gtk.ApplicationWindow (this){
            default_height = 300,
            default_width = 300,
            title = "Ola Mundo"
        };
        
        var button = new Gtk.Button.with_label ("Entrar"){
            margin_top = 12,
            margin_bottom = 12,
            margin_start = 12,
            margin_end = 12
        };
        
        button.clicked.connect (() => {
            button.label = "Voltar!";
            button.sensitive = false;
        });
        
        main_window.child = button;
        main_window.present ();
    }
    
    public static int main (string[] args){
        new  MyApp ().run (args);
           return 0;
    }
}
