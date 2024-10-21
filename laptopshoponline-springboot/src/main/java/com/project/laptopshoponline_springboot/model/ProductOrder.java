package com.project.laptopshoponline_springboot.model;

import java.time.LocalDate;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "don_hang")
public class ProductOrder {
    
    @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

    @Column(name = "ma_don_hang", unique = true)
	private String orderId;

    @Column(name = "ngay_dat")
	private LocalDate orderDate;

	@ManyToOne
    @JoinColumn(name = "san_pham_id")
	private Product product;

    @Column(name = "gia")
	private Double price;

    @Column(name = "so_luong")
	private Integer quantity;

	@ManyToOne
    @JoinColumn(name = "nguoi_dung_id")
	private UserDtls user;

    @Column(name = "trang_thai")
	private String status;

    @Column(name = "hinh_thuc_thanh_toan")
	private String paymentType;

	@OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "dia_chi_id")
	private OrderAddress orderAddress;

}
