package com.foodapp.springbootapp.Controllers.Table;

import com.foodapp.springbootapp.Model.Tables.Measurement;
import com.foodapp.springbootapp.Model.Tables.User;
import com.foodapp.springbootapp.Repository.Tables.MeasurementRepository;
import com.foodapp.springbootapp.Repository.Tables.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/")
public class MeasurementController {

    @Autowired
    MeasurementRepository measurementRepository;

    @Autowired
    UserRepository userRepository;

    @GetMapping("/measurements")
    public ResponseEntity<List<Measurement>> getAllMeasurements() {

        List<Measurement> measurements = new ArrayList<>();

        try {

            measurementRepository.findAll().forEach(measurements::add);

            if (measurements.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }

            return new ResponseEntity<>(measurements, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/measurements/{measurementID}")
    public ResponseEntity<Measurement> getMeasurementById(@PathVariable("measurementID") long measurementID) {

        Optional<Measurement> measurementData = measurementRepository.findById(measurementID);

        if (measurementData.isPresent()) {
            return new ResponseEntity<>(measurementData.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @GetMapping("/measurements/user/{userId}")
    public ResponseEntity<List <Measurement>> getMeasurementByUserId(@PathVariable("userId") long userId) {

        Optional<User> _user = userRepository.findById(userId);
        List<Measurement> measurementData = measurementRepository.findByUser(_user.get());
        if (measurementData != null) {
            return new ResponseEntity<>(measurementData, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping(value = "/measurements/users/{userID}")
    public ResponseEntity<Measurement> postMeasurement(@RequestBody Measurement measurement, @PathVariable("userID") long userID) {

        try {
            Measurement _measurement = new Measurement(measurement.getWeight(), measurement.getHipSize(), measurement.getWaistSize(), measurement.getBicepsCircumference(), measurement.getChestCircumference(), measurement.getThighCircumference(), measurement.getCalfCircumference(), measurement.getCreationDate(), measurement.getGrowth(), measurement.getDescription());

            Optional<User> userData = userRepository.findById(userID);

            if (userData.isPresent()) {

                _measurement.setUser(userData.get());
                measurementRepository.save(_measurement);
                return new ResponseEntity<>(_measurement, HttpStatus.CREATED);

            } else {

                return new ResponseEntity<>(HttpStatus.NOT_FOUND);

            }
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/measurements/{measurementID}")
    public ResponseEntity<HttpStatus> deleteMeasurement(@PathVariable("measurementID") long measurementID) {

        try {
            measurementRepository.deleteById(measurementID);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/measurements")
    public ResponseEntity<HttpStatus> deleteAllMeasurements() {

        try {
            measurementRepository.deleteAll();
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @PutMapping("/measurements/{measurementID}")
    public ResponseEntity<Measurement> updateMeasurement(@PathVariable("measurementID") long measurementID, @RequestBody Measurement measurement) {

        Optional<Measurement> measurementData = measurementRepository.findById(measurementID);

        if (measurementData.isPresent()) {

            Measurement _measurement = measurementData.get();

            _measurement.setWeight(measurement.getWeight());
            _measurement.setHipSize(measurement.getHipSize());
            _measurement.setWaistSize(measurement.getWaistSize());
            _measurement.setBicepsCircumference(measurement.getBicepsCircumference());
            _measurement.setChestCircumference(measurement.getChestCircumference());
            _measurement.setThighCircumference(measurement.getThighCircumference());
            _measurement.setCalfCircumference(measurement.getCalfCircumference());
            _measurement.setCreationDate(measurement.getCreationDate());
            _measurement.setGrowth(measurement.getGrowth());
            _measurement.setDescription(measurement.getDescription());
            _measurement.setUser(measurement.getUser());

            return new ResponseEntity<>(measurementRepository.save(_measurement), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
}
