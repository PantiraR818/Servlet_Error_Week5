package com;

import java.util.ArrayList;

public class ProductService {
								//ตั้งให้สื่อความหมาย
	private ArrayList<Product> products = new ArrayList<Product>();

	public ProductService() {
		products.add(new Product(1,"Pencil",30,"Pencil 2B",100));
		products.add(new Product(2,"Pen",15,"Blue Pen",99));
		products.add(new Product(3,"Book",25,"pink book",120));
		products.add(new Product(4,"Eraser",10,"Black Eraser",130));
		products.add(new Product(5,"Ruler",35,"Ruler 6-in",40));
	}

	
	public ArrayList<Product> getProducts() {
		return products;
	}

	
	public void setProducts(ArrayList<Product> products) {
		this.products = products;
	}
	

								
	
	
	
	
}
