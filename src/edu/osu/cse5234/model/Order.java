package edu.osu.cse5234.model;
import edu.osu.cse5234.business.view.Item;
import java.util.*;
public class Order {
	List<Item> items = new ArrayList<Item>();

	public List<Item> getItems() {
		return items;
	}

	public void setItems(List<Item> items) {
		this.items = items;
	} 
	
}
