"Run the module `com.example.statusnet`."
shared void run() {
    value stream = pullStatuses();
    value filteredStream = stream.filter( (p) => p.text.lowercased.contains("and"));
    for (p in filteredStream) {
    	print("@``p.user.name``: ``p.text``");
	}
}