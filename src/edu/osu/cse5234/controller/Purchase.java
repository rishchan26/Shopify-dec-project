package edu.osu.cse5234.controller;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.osu.cse5234.model.Item;
import edu.osu.cse5234.model.Order;
import edu.osu.cse5234.model.PaymentInfo;
import edu.osu.cse5234.model.ShippingInfo;

@Controller
@RequestMapping("/purchase")
public class Purchase 
{ 
	@RequestMapping(method = RequestMethod.GET)
	public String viewOrderEntryForm(HttpServletRequest request, HttpServletResponse response) throws Exception 
	{// ... instantiate and set order object with items to display
		Order order = new Order();
		List<String> names = new ArrayList<String>(
				Arrays.asList("ABC", "DEF", "GHI")
		);
		List<String> prices = new ArrayList<String>(
				Arrays.asList("35", "40", "50")
		);
		List<Item> items = new ArrayList<Item>();
		for(int i = 0; i < names.size(); i++) {
			Item it = new Item();
			it.setName(names.get(i));
			it.setPrice(prices.get(i));
			items.add(it);
		}
		order.setItems(items);
		request.setAttribute("order", order);
		return "OrderEntryForm";
	}
	@RequestMapping(path = "/submitItems", method = RequestMethod.POST)
	public String submitItems(@ModelAttribute("order") Order order, HttpServletRequest request) 
	{
		request.getSession().setAttribute("order", order);
		return "redirect:/purchase/paymentEntry";
	}
	@RequestMapping(path = "/paymentEntry", method = RequestMethod.GET)
	public String viewPaymentEntryForm(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		request.setAttribute("paymentInfo", new PaymentInfo());
		return "PaymentEntryForm";
	}
	@RequestMapping(path = "/submitPayment", method = RequestMethod.POST)
	public String submitPayment(@ModelAttribute("paymentInfo") PaymentInfo paymentInfo, HttpServletRequest request) 
	{
		request.getSession().setAttribute("paymentInfo", paymentInfo);
		return "redirect:/purchase/shippingEntry";
	}
	@RequestMapping(path = "/shippingEntry", method = RequestMethod.GET)
	public String viewShippingEntryForm(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		request.setAttribute("shippingInfo", new ShippingInfo());
		return "ShippingEntryForm";
	}
	@RequestMapping(path = "/submitShipping", method = RequestMethod.POST)
	public String submitPayment(@ModelAttribute("shippingInfo") ShippingInfo shippingInfo, HttpServletRequest request) 
	{
		request.getSession().setAttribute("shippingInfo", shippingInfo);
		return "redirect:/purchase/viewOrder";
	}
	@RequestMapping(path = "/viewOrder", method = RequestMethod.GET)
	public String viewOrder(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		return "ViewOrder";
	}
	
}