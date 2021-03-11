package com.foodapp.springbootapp.Controllers.Table;

import com.foodapp.springbootapp.Model.Tables.Ban;
import com.foodapp.springbootapp.Repository.Tables.BanRepository;
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
public class BanController {

    @Autowired
    BanRepository banRepository;

    @Autowired
    UserRepository userRepository;

    @GetMapping("/bans")
    public ResponseEntity<List<Ban>> getAllBans() {

        List<Ban> bans = new ArrayList<>();

        try {

            banRepository.findAll().forEach(bans::add);

            if (bans.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }

            return new ResponseEntity<>(bans, HttpStatus.OK);

        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/bans/{banID}")
    public ResponseEntity<Ban> getBanById(@PathVariable("banID") long banID) {

        Optional<Ban> banData = banRepository.findById(banID);

        if (banData.isPresent()) {
            return new ResponseEntity<>(banData.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @GetMapping("/bans/{userID}")
    public ResponseEntity<List<Ban>> getBansByUserId(@PathVariable("userID") long userID) {

        List<Ban> bans = new ArrayList<>();

        try {

            banRepository.findAllByUser_UserID(userID).forEach(bans::add);

            if (bans.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }

            return new ResponseEntity<>(bans, HttpStatus.OK);

        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @PostMapping(value = "/bans")
    public ResponseEntity<Ban> postBan(@RequestBody Ban ban) {

        try {
            Ban _ban = new Ban(ban.getDescription(), ban.getUnbanDate(), ban.getUser());

            Ban _saved = banRepository.save(_ban);

            return new ResponseEntity<>(_saved, HttpStatus.CREATED);

        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/bans/{banID}")
    public ResponseEntity<HttpStatus> deleteBan(@PathVariable("banID") long banID) {

        try {
            banRepository.deleteById(banID);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/bans")
    public ResponseEntity<HttpStatus> deleteAllBans() {

        try {
            banRepository.deleteAll();
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @PutMapping("/bans/{banID}")
    public ResponseEntity<Ban> updateProduct(@PathVariable("banID") long banID, @RequestBody Ban ban) {

        Optional<Ban> banData = banRepository.findById(banID);

        if (banData.isPresent()) {

            Ban _ban = banData.get();

            _ban.setDescription(ban.getDescription());
            _ban.setUnbanDate(ban.getUnbanDate());
            _ban.setUser(ban.getUser());

            return new ResponseEntity<>(banRepository.save(_ban), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

}



