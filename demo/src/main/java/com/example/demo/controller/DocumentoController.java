package com.example.demo.controller;

import com.example.demo.model.Documento;
import com.example.demo.service.DocumentoService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/documentos")
public class DocumentoController {

    private final DocumentoService service;

    public DocumentoController(DocumentoService service) {
        this.service = service;
    }

    @GetMapping
    public List<Documento> listar() {
        return service.listar();
    }

    @GetMapping("/{id}")
    public Documento buscar(@PathVariable Long id) {
        return service.buscarPorId(id);
    }

    @PostMapping
    public Documento criar(@RequestBody Documento documento) {
        return service.salvar(documento);
    }

    @PutMapping("/{id}")
    public Documento atualizar(@PathVariable Long id, @RequestBody Documento documento) {
        documento.setId(id);
        return service.salvar(documento);
    }

    @DeleteMapping("/{id}")
    public void deletar(@PathVariable Long id) {
        service.deletar(id);
    }
}
