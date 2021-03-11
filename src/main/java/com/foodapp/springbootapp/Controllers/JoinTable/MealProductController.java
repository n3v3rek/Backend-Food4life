package com.foodapp.springbootapp.Controllers.JoinTable;

import com.foodapp.springbootapp.Model.JoinTables.MealProduct;
import com.foodapp.springbootapp.Model.Tables.Meal;
import com.foodapp.springbootapp.Model.Tables.Product;
import com.foodapp.springbootapp.Repository.JoinTables.MealProductRepository;
import com.foodapp.springbootapp.Repository.Tables.MealRepository;
import com.foodapp.springbootapp.Repository.Tables.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/")
public class MealProductController {

    @Autowired
    MealProductRepository mealProductRepository;

    @Autowired
    ProductRepository productRepository;

    @Autowired
    MealRepository mealRepository;

    @GetMapping("/meals/product/{mealID}/{productID}")
    public ResponseEntity<MealProduct> getMealProductByMealIDANDProductID(@PathVariable("mealID") long mealID, @PathVariable("productID") long productID) {

        Optional<MealProduct> mealProductData = mealProductRepository.findByMeal_MealIDAndProduct_ProductID(mealID, productID);

        if (mealProductData.isPresent()) {
            return new ResponseEntity<>(mealProductData.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping("/meals/products/all")
    public ResponseEntity<List<MealProduct>> getMealProductsByMealId(@RequestBody List<Long> mealID) {

        List<MealProduct> mealProducts = new ArrayList<>();
        try {
            mealID.forEach(
                    row -> {
                        Optional<Meal> _meal = mealRepository.findById(row);
                        mealProductRepository.findByMeal(_meal.get()).forEach(mealProducts::add);
                    }
            );

            if (mealProducts.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }

            return new ResponseEntity<>(mealProducts, HttpStatus.OK);

        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @PostMapping(value = "/meals/products/{mealID}/{productID}")
    public ResponseEntity<MealProduct> postMealProduct(@PathVariable("mealID") long mealID, @PathVariable("productID") long productID) {

        try {
            MealProduct _mealProduct = new MealProduct();

            Optional<Meal> mealData = mealRepository.findById(mealID);
            Optional<Product> productData = productRepository.findById(productID);

            if (mealData.isPresent() && productData.isPresent()) {

                _mealProduct.setMeal(mealData.get());
                _mealProduct.setProduct(productData.get());

                MealProduct _mePr = mealProductRepository.save(_mealProduct);
                return new ResponseEntity<>(_mePr, HttpStatus.CREATED);

            } else {

                return new ResponseEntity<>(HttpStatus.NOT_FOUND);

            }
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/meals/products/{mealID}/{productID}")
    public ResponseEntity<HttpStatus> deleteMealProductByMealIDANDProductID(@PathVariable("mealID") long mealID, @PathVariable("productID") long productID) {

        try {
            mealProductRepository.deleteByMeal_MealIDAndProduct_ProductID(mealID, productID);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/meals/products/{mealID}")
    public ResponseEntity<HttpStatus> deleteMealProductByMealID(@PathVariable("mealID") long mealID) {

        try {
            mealProductRepository.deleteAllByMeal_MealID(mealID);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @PutMapping("/meals/products/{mealID}/{productID}")
    public ResponseEntity<MealProduct> updateMealProduct(@PathVariable("mealID") long mealID, @PathVariable("productID") long productID, @RequestBody MealProduct mealProduct) {

        Optional<MealProduct> mealProductData = mealProductRepository.findByMeal_MealIDAndProduct_ProductID(mealID, productID);

        if (mealProductData.isPresent()) {

            MealProduct _mealProduct = mealProductData.get();

            _mealProduct.setProduct(mealProduct.getProduct());
            _mealProduct.setMeal(mealProduct.getMeal());

            return new ResponseEntity<>(mealProductRepository.save(_mealProduct), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

}
