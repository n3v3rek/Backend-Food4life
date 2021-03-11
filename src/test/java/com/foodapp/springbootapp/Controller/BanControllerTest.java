package com.foodapp.springbootapp.Controller;

import com.foodapp.springbootapp.Controllers.Table.BanController;
import com.foodapp.springbootapp.Model.Tables.Ban;
import com.foodapp.springbootapp.Model.Tables.User;
import com.foodapp.springbootapp.Repository.Tables.BanRepository;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.Optional;

import static org.mockito.AdditionalAnswers.returnsFirstArg;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
public class BanControllerTest {

    @Mock
    BanController banController;

    @Mock
    BanRepository banRepository;

    @Test
    void testIfBanDeleted() {
        Ban ban = new Ban();
        when(banRepository.save(any(Ban.class))).then(returnsFirstArg());
        Ban _ban = banRepository.save(ban);
        Assertions.assertNotNull(_ban);
        banController.deleteBan(ban.getBanID());
        Assertions.assertEquals(banRepository.findById(_ban.getBanID()), Optional.empty());
    }

}
