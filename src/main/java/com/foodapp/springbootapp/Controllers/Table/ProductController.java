package com.foodapp.springbootapp.Controllers.Table;

import com.foodapp.springbootapp.Model.Tables.Product;
import com.foodapp.springbootapp.Model.Tables.User;
import com.foodapp.springbootapp.Repository.Tables.ProductRepository;
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
public class ProductController {

    @Autowired
    ProductRepository productRepository;

    @Autowired
    UserRepository userRepository;

    @GetMapping("/products")
    public ResponseEntity<List<Product>> getAllProducts() {

        List<Product> products = new ArrayList<>();

        try {

            productRepository.findAll().forEach(products::add);

            if (products.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }

            return new ResponseEntity<>(products, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/products/{productID}")
    public ResponseEntity<Product> getProductById(@PathVariable("productID") long productID) {

        Optional<Product> productData = productRepository.findById(productID);

        if (productData.isPresent()) {
            return new ResponseEntity<>(productData.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping(value = "/products/{userID}")
    public ResponseEntity<Product> postProduct(@RequestBody Product product, @PathVariable("userID") long userID) {

        try {
            Product _product = new Product(product.getName(), product.getKilocalorie(), product.getProtein(), product.getCarbohydrates(), product.getFats(), product.getWeight(), product.getCreationDate() , product.getStatus(), product.getAllergens(), product.getDescription());
            Optional<User> userData = userRepository.findById(userID);

            if (userData.isPresent()) {

                _product.setUser(userData.get());
                productRepository.save(_product);
                return new ResponseEntity<>(_product, HttpStatus.CREATED);

            } else {

                return new ResponseEntity<>(HttpStatus.NOT_FOUND);

            }
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.EXPECTATION_FAILED);
        }
    }

    @GetMapping("/products/status/{status}")
    public ResponseEntity<List<Product>> getProductByStatus(@PathVariable("status") String status){

        List<Product> products = new ArrayList<>();

        try{
            products.addAll(productRepository.findAllByStatus(status));

            if (products.isEmpty()){
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }

            return new ResponseEntity<>(products,HttpStatus.OK);

        } catch (Exception e)
        {
            return new ResponseEntity<>(null,HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @DeleteMapping("/products/{productID}")
    public ResponseEntity<HttpStatus> deleteProduct(@PathVariable("productID") long productID) {

        try {
            productRepository.deleteById(productID);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/products")
    public ResponseEntity<HttpStatus> deleteAllProduct() {

        try {
            productRepository.deleteAll();
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @PutMapping("/products/{productID}")
    public ResponseEntity<Product> updateProduct(@PathVariable("productID") long productID, @RequestBody Product product) {

        Optional<Product> productData = productRepository.findById(productID);

        if (productData.isPresent()) {

            Product _product = productData.get();

            _product.setName(product.getName());
            _product.setWeight(product.getWeight());
            _product.setKilocalorie(product.getKilocalorie());
            _product.setCarbohydrates(product.getCarbohydrates());
            _product.setFats(product.getFats());
            _product.setProtein(product.getProtein());
            _product.setAllergens(product.getAllergens());
            _product.setDescription(product.getDescription());
            _product.setStatus(product.getStatus());
            _product.setCreationDate(product.getCreationDate());
            _product.setUser(product.getUser());

            return new ResponseEntity<>(productRepository.save(_product), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
}
