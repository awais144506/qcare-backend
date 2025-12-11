package com.qcare.hospitalservice.controller;

import com.qcare.hospitalservice.entity.Hospital;
import com.qcare.hospitalservice.service.HospitalService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/hospitals")
@Tag(name = "Hospital API Endpoints", description = "Qcare hospital CRUD operations endpoints.")
public class HospitalController {

    private final HospitalService hospitalService;

    public HospitalController(HospitalService hospitalService) {
        this.hospitalService = hospitalService;
    }

    @GetMapping
    @Operation(summary = "Get all hospitals list")
    public ResponseEntity<List<Hospital>> getHospitals() {
        List<Hospital> hospitals = hospitalService.getHospitals();
        return ResponseEntity.ok(hospitals);
    }

}
