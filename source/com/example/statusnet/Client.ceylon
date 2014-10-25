import java.net { URL }
import ceylon.interop.java {
	CeylonIterable
}

String endPoint = "http://quitter.se/api/statuses/public_timeline.json";

{Post*} pullStatuses() {
	value url = URL(endPoint);
	value conn = url.openConnection();
	value input = conn.inputStream;
	return  CeylonIterable(JavaInterop.deserializePosts(input));
}
