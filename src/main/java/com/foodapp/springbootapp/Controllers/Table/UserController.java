package com.foodapp.springbootapp.Controllers.Table;

import com.foodapp.springbootapp.Model.Tables.User;
import com.foodapp.springbootapp.Repository.Tables.UserRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Slf4j
@RestController
@RequestMapping("/api/")
public class UserController {

    @Autowired
    UserRepository userRepository;

    @GetMapping("/users")
    public ResponseEntity<List<User>> getAllUsers(){

        List<User> users = new ArrayList<>();

        try{

            userRepository.findAll().forEach(users::add);

            if (users.isEmpty()){
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }

            return new ResponseEntity<>(users,HttpStatus.OK);

        } catch (Exception e)
        {
            return new ResponseEntity<>(null,HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/users/{userID}")
    public ResponseEntity<User> getUserById(@PathVariable("userID") long userID){

        Optional<User> userData = userRepository.findById(userID);

        if (userData.isPresent()){
            return new ResponseEntity<>(userData.get(),HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }


    @GetMapping("/users/login/{email}")
    public ResponseEntity<User> getUserByEmail(@PathVariable("email") String email) {
        try{
            User userData = userRepository.findByEmail(email);
            return new ResponseEntity<>(userData, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }


    @PostMapping(value = "/users")
    public ResponseEntity<User> postUser(@RequestBody User user){
        try{
            User _user = new User(user.getUsername(),user.getPassword(),user.getEmail(),"USER",user.getCreationDate());
            _user.setCreationDate(new Date(System.currentTimeMillis()));
            User _savedUser = userRepository.save(_user);

            return new ResponseEntity<>(_savedUser, HttpStatus.CREATED);
        } catch (Exception e){
            return new ResponseEntity<>(null,HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/users/{userID}")
    public ResponseEntity<HttpStatus> deleteUser(@PathVariable("userID") long userID) {
        try {
            userRepository.deleteById(userID);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/users")
    public ResponseEntity<HttpStatus> deleteAllUsers() {
        try {
            userRepository.deleteAll();
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }

    }


    @GetMapping(value = "users/accountType/{accountType}")
    public ResponseEntity<List<User>> findByAccountType(@PathVariable String accountType) {
        try {
            List<User> users = userRepository.findByAccountType(accountType);

            if (users.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(users, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }



    @PutMapping("/users/{userID}")
    public ResponseEntity<User> updateUser(@PathVariable("userID") long userID, @RequestBody User user) {
        Optional<User> userData = userRepository.findById(userID);

        if (userData.isPresent()) {
            User _user = userData.get();

            _user.setUsername(user.getUsername());
            _user.setPassword(user.getPassword());
            _user.setEmail(user.getEmail());
            _user.setAccountType(user.getAccountType());
            _user.setBirthdayDate(user.getBirthdayDate());
            User user_ = userRepository.save(_user);

            return new ResponseEntity<>(user_, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
}
