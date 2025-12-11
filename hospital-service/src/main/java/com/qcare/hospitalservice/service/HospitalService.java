package com.qcare.hospitalservice.service;

import com.qcare.hospitalservice.entity.Hospital;
import com.qcare.hospitalservice.repository.HospitalRepository;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class HospitalService {
    private final HospitalRepository hospitalRepository;

    public HospitalService(HospitalRepository hospitalRepository) {
        this.hospitalRepository = hospitalRepository;
    }

    public List<Hospital> getHospitals() {
        return hospitalRepository.findAll();
    }
}
