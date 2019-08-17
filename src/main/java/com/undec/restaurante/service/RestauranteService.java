package com.undec.restaurante.service;

import com.undec.restaurante.model.Restaurante;
import com.undec.restaurante.repository.RestauranteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RestauranteService {

    @Autowired
    private RestauranteRepository restauranteRepository;

    public List<Restaurante> findAll() {
        List<Restaurante> restauranteList = restauranteRepository.findAll();
        return restauranteList;
    }
	
	 public Restaurante findOne(Integer id) {
        Restaurante restaurante= restauranteRepository.getOne(id);
        return restaurante;
    }
    public String delete(Restaurante r) {
        restauranteRepository.delete(r);
        return "Borrado";
    }

    public String save(Restaurante r) {
        restauranteRepository.save(r);
        return "Insertado";
    }
}
