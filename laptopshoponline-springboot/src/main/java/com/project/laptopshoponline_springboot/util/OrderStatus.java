package com.project.laptopshoponline_springboot.util;

public enum OrderStatus {

    IN_PROGRESS(1, "Đang tiến hành"), ORDER_RECEIVED(2, "Đã nhận đơn hàng"), PRODUCT_PACKED(3, "Sản phẩm được đóng gói"),
	OUT_FOR_DELIVERY(4, "Đang giao hàng"), DELIVERED(5, "Đã giao hàng"),CANCEL(6,"Đã hủy"),SUCCESS(7,"Thành công");

	private Integer id;

	private String name;

	private OrderStatus(Integer id, String name) {
		this.id = id;
		this.name = name;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
