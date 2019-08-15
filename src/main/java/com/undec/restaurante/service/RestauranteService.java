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
}
