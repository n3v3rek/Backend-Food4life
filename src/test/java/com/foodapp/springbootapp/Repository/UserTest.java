package com.foodapp.springbootapp.Repository;

import com.foodapp.springbootapp.Model.Tables.User;
import com.foodapp.springbootapp.Repository.Tables.UserRepository;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.sql.Date;
import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.AdditionalAnswers.returnsFirstArg;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
public class UserTest {

    @Mock
    UserRepository userRepository;

    @Test
    void testUserAccountType(){
        User user = new User("Test Username", "haslo", "email@test", "GOSC", new Date(02-02-2020));
        when(userRepository.save(any(User.class))).then(returnsFirstArg());
        User _user = userRepository.save(user);
        assertThat(_user.getAccountType().equals("GOSC"));
    }

    @Test
    void testifUserAccountExist(){
        User user = new User();
        when(userRepository.save(any(User.class))).then(returnsFirstArg());
        User _user = userRepository.save(user);
        Assertions.assertNotNull(_user.getUserID());
    }

    @Test
    void testIfAdminExist(){
        assertThat(userRepository.findByAccountType("ADMIN")).isNotEqualTo(Optional.empty());
    }

    @Test
    void testIfModeratorExist(){
        assertThat(userRepository.findByAccountType("MODERATOR")).isNotEqualTo(Optional.empty());
    }


}
