using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Item
{
    
    public int quantity { set; get; }
    public double price { set; get; }
    public string description { set; get; }

    public Item(int quantity, double price , string description)
    {
        this.description = description;
        this.price = price;
        this.quantity = quantity;
    }
	public Item()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}