package cn.edu.sjzc.domin;
/**
 * 表单中的一条数据(商品编号,商品数量)
 * @author Lenovo
 *
 */
public class OrderItem {
	private String order_id;
	private String product_id;
	private int buynum;
	
	
	
	
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public int getBuynum() {
		return buynum;
	}
	public void setBuynum(int buynum) {
		this.buynum = buynum;
	}
	
	
}
