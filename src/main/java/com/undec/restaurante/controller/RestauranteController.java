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
	
/*	@RestController
@RequestMapping("/")
public class RestauranteController {

    @Autowired
    private RestauranteService restauranteService;

    @GetMapping("/restaurantes")
    public List<Restaurante> list() {
        List<Restaurante> restauranteList = restauranteService.findAll();
        return restauranteList;
    }
*/
    //Consulto solo uno por identificador
    @GetMapping("/restaurante/{id}")
    public ResponseEntity<Restaurante> getrestoById(@PathVariable(value = "id") Integer restauranteId) {
        System.out.println("entro por getid-----------------------------------------------------------");

        Restaurante restaurante = restauranteService.findOne(restauranteId);

        System.out.println("entro por getid----------2-------------------------------------------------"+restaurante.getDescripcion());
        if(restaurante == null) {
            System.out.println("entro por getid---------3--------------------------------------------------");
            return ResponseEntity.notFound().build();
        }
        System.out.println("entro por getid-------------------4----------------------------------------");
        return ResponseEntity.ok(restaurante);

    }

    //crea un solo restaurante
    @PostMapping("/restaurante")
    public String create(@Valid @RequestBody Restaurante restaurante) {

        return restauranteService.save(restaurante);
    }

    //Actualiza
    @PutMapping("/restaurantes/{id}")
    public ResponseEntity<Restaurante> update(@PathVariable(value = "id") Integer restauranteId,
                                                @Valid @RequestBody Restaurante restauranteRestaurante) {
        Restaurante restaurante = restauranteService.findOne(restauranteId);
        if(restaurante == null) {
            return ResponseEntity.notFound().build();
        }
        //restaurante.setId(restauranteRestaurante.getId());
        restaurante.setNombre(restauranteRestaurante.getNombre());
        restaurante.setDescripcion(restauranteRestaurante.getDescripcion());
        restaurante.setDireccion(restauranteRestaurante.getDireccion());
        restaurante.setImagen(restauranteRestaurante.getImagen());
        restaurante.setPrecio(restauranteRestaurante.getPrecio());

        restauranteService.save(restaurante);
        return ResponseEntity.ok(restaurante);
    }

    //borra
    @DeleteMapping("/restaurantes/{id}")
    public ResponseEntity<Restaurante> delete(@PathVariable(value = "id") Integer restauranteId) {
        Restaurante restaurante = restauranteService.findOne(restauranteId);
        if(restaurante == null) {
            return ResponseEntity.notFound().build();
        }

        restauranteService.delete(restaurante);
        return ResponseEntity.ok().build();
    }
}
