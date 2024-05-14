package com.spring.start.clientes;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.spring.start.facturas.Factura;
import com.spring.start.maquinas.Maquina;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

@Entity
public class Cliente {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column
	private String local;
	@Column
	private String duenio;
	@Column
	private Integer telefono;

	@Column
	private String direccion;

	@Column
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy")
	private LocalDate fechaVencimientoContrato;

	// relacion 1:N con maquinas, cada local tiene una o varias maquinas normalmente
	// tienen entre 1 y 2.
	@OneToMany(mappedBy = "cliente", fetch = FetchType.EAGER)
	@Fetch(value = FetchMode.SUBSELECT)
	@JsonManagedReference("maquina_cliente")
	@Cascade(CascadeType.ALL)
	private List<Maquina> maquinas = new ArrayList<Maquina>();

	// relacion 1:N con recaudaciones, un cliente tendrá varias facturas, mensuales
	// o trimestrales
	@OneToMany(mappedBy = "cliente", fetch = FetchType.EAGER)
	@Fetch(value = FetchMode.SUBSELECT)
	@JsonManagedReference("factura_cliente")
	@Cascade(CascadeType.ALL)
	private List<Factura> facturas = new ArrayList<Factura>();

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getLocal() {
		return local;
	}

	public void setLocal(String local) {
		this.local = local;
	}

	public String getDuenio() {
		return duenio;
	}

	public void setDuenio(String duenio) {
		this.duenio = duenio;
	}

	public Integer getTelefono() {
		return telefono;
	}

	public void setTelefono(Integer telefono) {
		this.telefono = telefono;
	}

	public LocalDate getFechaVencimientoContrato() {
		return fechaVencimientoContrato;
	}

	public void setFechaVencimientoContrato(LocalDate fechaVencimientoContrato) {
		this.fechaVencimientoContrato = fechaVencimientoContrato;
	}

	public List<Maquina> getMaquinas() {
		return maquinas;
	}

	public void setMaquinas(List<Maquina> maquinas) {
		this.maquinas = maquinas;
	}

	@Override
	public String toString() {
		return "Cliente [id=" + id + ", local=" + local + ", duenio=" + duenio + ", telefono=" + telefono
				+ ", fechaVencimientoContrato=" + fechaVencimientoContrato + ", maquinas=" + maquinas + "]";
	}
}
