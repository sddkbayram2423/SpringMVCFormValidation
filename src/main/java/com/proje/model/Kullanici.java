package com.proje.model;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.format.annotation.NumberFormat.Style;

public class Kullanici {
	
	@NotEmpty
	@Size(min = 1,max = 25,message = "Lütfen kullanici adi giriniz...")
	private String kullaniciAdi;
	
	@NotEmpty
	@Size(min = 1,max = 30, message = "Bu alan bos gecilemez...")
	private String parola;
	
	@NotNull
	@NumberFormat(style = Style.NUMBER)
	@Min(1)
	@Max(1000)
	private String maas;
	
	public Kullanici() {
	}

	public String getKullaniciAdi() {
		return kullaniciAdi;
	}

	public void setKullaniciAdi(String kullaniciAdi) {
		this.kullaniciAdi = kullaniciAdi;
	}

	public String getParola() {
		return parola;
	}

	public void setParola(String parola) {
		this.parola = parola;
	}

	public String getMaas() {
		return maas;
	}

	public void setMaas(String maas) {
		this.maas = maas;
	}

}
