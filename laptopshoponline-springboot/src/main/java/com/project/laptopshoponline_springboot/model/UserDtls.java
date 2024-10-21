package com.project.laptopshoponline_springboot.model;

import java.util.Date;

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
@Table(name = "nguoi_dung")
public class UserDtls {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

    @Column(name = "ten")
	private String name;

    @Column(name = "so_dien_thoai")
	private String mobileNumber;

    @Column(unique = true)
	private String email;

    @Column(name = "dia_chi")
	private String address;

    @Column(name = "thanh_pho")
	private String city;

    @Column(name = "tinh")
	private String state;

    @Column(name = "ma_buu_chinh")
	private String pincode;

    @Column(name = "mat_khau")
	private String password;

    @Column(name = "anh_dai_dien")
	private String profileImage;

    @Column(name = "vai_tro")
	private String role;

    @Column(name = "kich_hoat")
	private Boolean isEnable;

    @Column(name = "tai_khoan_khong_bi_khoa")
	private Boolean accountNonLocked;

    @Column(name = "so_lan_thu_that_bai")
	private Integer failedAttempt;

    @Column(name = "thoi_gian_khoa")
	private Date lockTime;
	
    @Column(name = "ma_khoi_phuc")
	private String resetToken;
}
