package com.foodapp.springbootapp.Repository.Tables;

import com.foodapp.springbootapp.Model.Tables.Product;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ProductRepository extends CrudRepository<Product,Long> {

    List<Product> findAllByStatus (String status);
}
