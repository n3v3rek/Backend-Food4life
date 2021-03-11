package com.foodapp.springbootapp.Repository.Tables;

import com.foodapp.springbootapp.Model.Tables.Measurement;
import com.foodapp.springbootapp.Model.Tables.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MeasurementRepository extends CrudRepository<Measurement, Long> {
    List<Measurement> findByUser(User userID);
}
