package com.spring.start.recaudaciones;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/recaudacion")
public class RecaudacionController {

	@Autowired
	RecaudacionDAO recaudacionDAO;

	@GetMapping
	public List<Recaudacion> getRcecaudaciones() {
		return (List<Recaudacion>) recaudacionDAO.findAll();
	}

	@GetMapping("/{id}")
	public Recaudacion getRecaudacion(@PathVariable long id) {
		Optional<Recaudacion> recaudacion = recaudacionDAO.findById(id);
		if (recaudacion.isPresent()) {
			return recaudacion.get();
		}
		return null;
	}

	@PostMapping
	public void addRecaudacion(@RequestBody Recaudacion recaudacion) {
		recaudacionDAO.save(recaudacion);
	}

	@PutMapping("/{id}")
	public void editRecaudacion(@PathVariable long id, @RequestBody Recaudacion recaudacion) {
		Optional<Recaudacion> recaudacionUpdate = recaudacionDAO.findById(id);
		if (recaudacionUpdate.isPresent()) {
			Recaudacion recaudacionNew = recaudacionUpdate.get();
			recaudacionNew.setCantidadRecaudada(recaudacion.getCantidadRecaudada());
			recaudacionNew.setFecha(recaudacion.getFecha());
			recaudacionNew.setMaquina(recaudacion.getMaquina());
			recaudacionNew.setPorcentajeJuego(recaudacion.getPorcentajeJuego());
			recaudacionDAO.save(recaudacionNew);
		}
	}

	@DeleteMapping("/{id}")
	public void deleteRecaudacion(@PathVariable long id) {
		recaudacionDAO.deleteById(id);
	}
}
