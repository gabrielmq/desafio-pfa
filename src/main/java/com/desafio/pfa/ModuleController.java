package com.desafio.pfa;

import io.micronaut.http.HttpResponse;
import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;

import java.util.List;
import java.util.stream.Collectors;

@Controller("/modules")
public class ModuleController {
    private final ModuleRepository repository;

    public ModuleController(final ModuleRepository repository) {
        this.repository = repository;
    }

    @Get
    public HttpResponse<List<String>> getModules() {
        return HttpResponse.ok(repository.findAll().stream().map(Module::getName).collect(Collectors.toList()));
    }
}
