package com.foodapp.springbootapp.Repository;

import com.foodapp.springbootapp.Model.Tables.Ban;
import com.foodapp.springbootapp.Repository.Tables.BanRepository;
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
public class BanTest {

    @Mock
    BanRepository banRepository;

    @Test
    void testifBanObjectExist() {
        Ban ban = new Ban();
        when(banRepository.save(any(Ban.class))).then(returnsFirstArg());
        Ban _ban = banRepository.save(ban);
        Assertions.assertNotNull(_ban.getBanID());
    }

    @Test
    void testIfSearchWorks(){
        Ban ban = new Ban();
        when(banRepository.save(any(Ban.class))).then(returnsFirstArg());
        Ban _ban = banRepository.save(ban);
        Assertions.assertNotNull(banRepository.findById(_ban.getBanID()));
    }


}
