package com.foodapp.springbootapp.Repository;

import com.foodapp.springbootapp.Model.Tables.Product;
import com.foodapp.springbootapp.Repository.Tables.ProductRepository;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.AdditionalAnswers.returnsFirstArg;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
public class ProductTest {

    @Mock
    ProductRepository productRepository;

    @Test
    void testifUserObjectExist() {
        Product product = new Product();
        when(productRepository.save(any(Product.class))).then(returnsFirstArg());
        Product _product = productRepository.save(product);
        Assertions.assertNotNull(_product.getProductID());
    }

}
