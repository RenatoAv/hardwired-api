package com.renatoav.hardwired.service;

import com.renatoav.hardwired.entity.Montagem;
import com.renatoav.hardwired.repository.MontagemRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;


@Service
@RequiredArgsConstructor
public class MontagemServiceImpl implements MontagemService {

    private final MontagemRepository montagemRepository;

    @Override
    public void salvar(Montagem montagem) {
        montagemRepository.save(montagem);
    }

    @Override
    public void remover(Long id) {
        montagemRepository.deleteById(id);
    }

    @Override
    public Page<Montagem> listarPorIdCliente(Long id, Pageable pageable) {
        return montagemRepository.findAllByClienteId(id, pageable);
    }
}
