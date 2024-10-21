package com.project.laptopshoponline_springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
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
@Table(name = "san_pham")
public class Product {
    @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Column(name = "tieu_de",length = 500)
	private String title;

	@Column(name = "mo_ta",length = 5000)
	private String description;

    @Column(name = "danh_muc")
	private String category;

    @Column(name = "gia")
	private Double price;

    @Column(name = "so_luong_ton")
	private int stock;

    @Column(name = "hinh_anh")
	private String image;

    @Column(name = "giam_gia")
	private int discount;
	
    @Column(name = "gia_giam")
	private Double discountPrice;
	
    @Column(name = "hoat_dong")
	private Boolean isActive;
}
