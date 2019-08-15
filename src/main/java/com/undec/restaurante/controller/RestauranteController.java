package com.undec.restaurante.controller;

import com.undec.restaurante.model.Restaurante;
import com.undec.restaurante.service.RestauranteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/restaurantes")
public class RestauranteController {

    @Autowired
    private RestauranteService restauranteService;

    @GetMapping
    public List<Restaurante> list() {
        List<Restaurante> restauranteList = restauranteService.findAll();
        return restauranteList;
    }
}
