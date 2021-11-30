package com;

public class Product {
	private int id;
	private String name;
	private int price;
	private String description;
	private int unitInStock;
	
	//Alt+shift+s,o
	public Product(int id, String name, int price, String description, int unitInStock) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.description = description;
		this.unitInStock = unitInStock;
	}

	//getter setter ==> Alt+shift+s,r
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getUnitInStock() {
		return unitInStock;
	}

	public void setUnitInStock(int unitInStock) {
		this.unitInStock = unitInStock;
	}
	
	
	
	
}
