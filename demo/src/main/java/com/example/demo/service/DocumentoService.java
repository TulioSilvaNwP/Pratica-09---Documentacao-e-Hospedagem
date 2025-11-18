package com.example.demo.service;

import com.example.demo.model.Documento;
import com.example.demo.repository.DocumentoRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DocumentoService {

    private final DocumentoRepository repository;

    public DocumentoService(DocumentoRepository repository) {
        this.repository = repository;
    }

    public List<Documento> listar() {
        return repository.findAll();
    }

    public Documento buscarPorId(Long id) {
        return repository.findById(id).orElseThrow();
    }

    public Documento salvar(Documento documento) {
        return repository.save(documento);
    }

    public void deletar(Long id) {
        repository.deleteById(id);
    }
}
