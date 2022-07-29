package pl.coderslab.charity.model;

import lombok.Data;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;
import org.springframework.web.context.annotation.SessionScope;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

@Component
@SessionScope(proxyMode = ScopedProxyMode.TARGET_CLASS)
@Data
public class DonationSession {

    private Long id;

    private Integer quantity;

    private List<Category> categoryList;

    private Institution institution;

    private String street;

    private String city;

    private String zipCode;

    private String phoneNumber;

    private LocalDate date;

    private LocalTime time;

    private String pickUpComment;
}
