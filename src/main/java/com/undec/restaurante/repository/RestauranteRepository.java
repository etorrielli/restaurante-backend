package com.undec.restaurante.repository;

import com.undec.restaurante.model.Restaurante;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface RestauranteRepository extends JpaRepository<Restaurante, Integer> {

    List<Restaurante> findAllByPrecio(String precio);
}
