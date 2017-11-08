package com.niit.config;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.niit.dao.ProductDAO;
import com.niit.model.Product;

@Controller
public class ProductController {

	@Autowired
	private ProductDAO productDAO;
	
	@GetMapping(value="/ProductView")
	public String getAllProducts(Model model)
	{
		List<Product> list= productDAO.getAllProduct();
		model.addAttribute("productlist", list);
		return "ProductView";
	}
	@GetMapping(value="/delete_product/{productId}")
	public String deleteProduct(@PathVariable int productId){
		Product product= productDAO.getProductByID(productId);
		productDAO.delete_Product(product);
		return "redirect:/ProductView"; 
	} 
	@GetMapping(value="/addProduct")
	public String addProduct(Model model)
	{
		List<Product> list= productDAO.getAllProduct();
		model.addAttribute("productlist", list);
		model.addAttribute("product", new Product());
		
		return "AddProduct";
	}
	@PostMapping(value="/saveProduct")
	public String saveProduct(@ModelAttribute("product") Product product)
	{
		productDAO.add_Product(product);
		return "redirect:/addProduct";
	}
	@GetMapping(value="/delete_Product/{productId}")
	public String delete_Product(@PathVariable int productId)
	{
		Product product= productDAO.getProductByID(productId);
		productDAO.delete_Product(product);
		return "redirect:/addProduct";
	}
	@GetMapping(value="/edit_Product/{productId}")
	public String editProduct(@PathVariable int productId)
	{
		return "redirect:/addProduct";
	}
			
			
	
	
}
