package com.example.statusnet;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Type;


import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

public class JavaInterop {
	public static java.util.Collection<Post> deserializePosts(InputStream input)  {
		Gson gson = new Gson();
		Type postCollectionType = ( new TypeToken<java.util.Collection<Post>>() {} ).getType();
		InputStreamReader inputStreamReader = new InputStreamReader(input);
		return gson.fromJson(inputStreamReader, postCollectionType);
	}
}
