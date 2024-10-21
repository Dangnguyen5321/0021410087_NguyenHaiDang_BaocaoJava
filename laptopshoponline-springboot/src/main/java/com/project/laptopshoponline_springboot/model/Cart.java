package com.project.laptopshoponline_springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "gio_hang")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Cart {
    @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@ManyToOne
    @JoinColumn(name = "nguoi_dung_id")
	private UserDtls user;

	@ManyToOne
    @JoinColumn(name = "san_pham_id")
	private Product product;

    @Column(name = "so_luong")
	private Integer quantity;
	
	@Transient
	private Double totalPrice; // Không lưu trong CSDL, tính toán trong code
	
	@Transient
	private Double totalOrderPrice; // Không lưu trong CSDL, tính toán trong code
}
