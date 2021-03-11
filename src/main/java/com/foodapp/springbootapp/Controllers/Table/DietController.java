package com.foodapp.springbootapp.Controllers.Table;

import com.foodapp.springbootapp.Model.Tables.*;
import com.foodapp.springbootapp.Repository.Tables.DietRepository;
import com.foodapp.springbootapp.Repository.Tables.UserRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Slf4j
@RestController
@RequestMapping("/api/")
public class DietController {

    @Autowired
    DietRepository dietRepository;

    @Autowired
    UserRepository userRepository;

    @GetMapping("/diets")
    public ResponseEntity<List<Diet>> getAllDiets() {

        List<Diet> diets = new ArrayList<>();

        try {

            dietRepository.findAll().forEach(diets::add);

            if (diets.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }

            return new ResponseEntity<>(diets, HttpStatus.OK);

        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/diets/{dietID}")
    public ResponseEntity<Diet> getDietById(@PathVariable("dietID") long dietID) {

        Optional<Diet> dietData = dietRepository.findById(dietID);

        if (dietData.isPresent()) {
            return new ResponseEntity<>(dietData.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @GetMapping("diets/user/{userID}")
    public ResponseEntity<List<Diet>> getDietsByUserId(@PathVariable("userID") long userID) {

        List<Diet> diets = new ArrayList<>();

        try {
            Optional<User> _user = userRepository.findById(userID);
            dietRepository.findByUser(_user.get()).forEach(diets::add);
            if (diets.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }

            return new ResponseEntity<>(diets, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("user/diets/{userID}/{dietID}")
    public ResponseEntity<Diet> getDietByUserId(@PathVariable("userID") long userID, @PathVariable("dietID") long dietID) {

        Optional<Diet> dietData = dietRepository.findByUser_UserIDAndDietID(userID, dietID);

        if (dietData.isPresent()) {
            return new ResponseEntity<>(dietData.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping(value = "/diets")
    public ResponseEntity<Diet> postDiet(@RequestBody Diet diet) {

        try {
            Diet _diet = new Diet(diet.getRecommendedKilocalories(), diet.getRecommendedProteins(), diet.getRecommendedCarbohydrates(), diet.getRecommendedFats(), diet.getCreationDate());

            Optional<User> userData = userRepository.findById(diet.getUser().getUserID());

            if (userData.isPresent()) {

                _diet.setUser(userData.get());
                dietRepository.save(_diet);
                return new ResponseEntity<>(_diet, HttpStatus.CREATED);

            } else {

                return new ResponseEntity<>(HttpStatus.NOT_FOUND);

            }
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/diets/{dietID}")
    public ResponseEntity<HttpStatus> deleteDiet(@PathVariable("dietID") long dietID) {

        try {
            dietRepository.deleteById(dietID);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/diets")
    public ResponseEntity<HttpStatus> deleteAllDiets() {

        try {
            dietRepository.deleteAll();
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @PutMapping("/diets/{dietID}")
    public ResponseEntity<Diet> updateDiet(@PathVariable("dietID") long dietID, @RequestBody Diet diet) {

        Optional<Diet> dietData = dietRepository.findById(dietID);

        if (dietData.isPresent()) {

            Diet _diet = dietData.get();

            _diet.setRecommendedKilocalories(diet.getRecommendedKilocalories());
            _diet.setRecommendedCarbohydrates(diet.getRecommendedCarbohydrates());
            _diet.setRecommendedProteins(diet.getRecommendedProteins());
            _diet.setRecommendedFats(diet.getRecommendedFats());
            _diet.setCreationDate(diet.getCreationDate());
            _diet.setUser(diet.getUser());

            return new ResponseEntity<>(dietRepository.save(_diet), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
}
