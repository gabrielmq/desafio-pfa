package com.desafio.pfa;

import io.micronaut.data.annotation.Repository;
import io.micronaut.data.jpa.repository.JpaRepository;

@Repository
public interface ModuleRepository extends JpaRepository<Module, Integer> {
}
