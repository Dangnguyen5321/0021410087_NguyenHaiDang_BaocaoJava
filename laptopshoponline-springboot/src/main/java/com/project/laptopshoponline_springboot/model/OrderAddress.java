package com.project.laptopshoponline_springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "dia_chi_don_hang")
public class OrderAddress {

    @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

    @Column(name = "ho")
	private String firstName;

    @Column(name = "ten")
	private String lastName;

	private String email;

    @Column(name = "so_dien_thoai")
	private String mobileNo;

    @Column(name = "dia_chi")
	private String address;

    @Column(name = "thanh_pho")
	private String city;

    @Column(name = "tinh")
	private String state;

    @Column(name = "ma_buu_chinh")
	private String pincode;

}
