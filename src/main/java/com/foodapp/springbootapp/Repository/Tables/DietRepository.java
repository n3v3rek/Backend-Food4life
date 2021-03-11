package com.foodapp.springbootapp.Repository.Tables;

import com.foodapp.springbootapp.Model.Tables.Diet;
import com.foodapp.springbootapp.Model.Tables.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface DietRepository extends CrudRepository<Diet,Long> {

    List<Diet> findByUser(User userID);
    Optional<Diet> findByUser_UserIDAndDietID(long userID, long dietID);
}
