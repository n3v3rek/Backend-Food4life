package com.foodapp.springbootapp.Repository.Tables;

import com.foodapp.springbootapp.Model.Tables.Ban;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface BanRepository extends CrudRepository<Ban,Long> {

    List<Ban> findAllByUser_UserID(long ID_user);
}
