package pl.coderslab.charity.controler;

import lombok.RequiredArgsConstructor;
import org.aspectj.lang.annotation.RequiredTypes;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.charity.model.Category;
import pl.coderslab.charity.model.Donation;
import pl.coderslab.charity.model.DonationSession;
import pl.coderslab.charity.model.Institution;
import pl.coderslab.charity.repository.CategoryRepository;
import pl.coderslab.charity.repository.DonationRepository;
import pl.coderslab.charity.repository.InstitutionRepository;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class DonationController {

    private final DonationSession donationSession;
    private final CategoryRepository categoryRepository;
    private final InstitutionRepository institutionRepository;
    private final DonationRepository donationRepository;

    @GetMapping(value = "/formStep1")
    public String addDonationFormStep1(Model model) {
        List<Category> categories = categoryRepository.findAll();
        model.addAttribute("categories", categories);
        model.addAttribute("donation", new Donation());
        return "formStep1";
    }

    @PostMapping(value = "/formStep2")
    public String addDonationFormStep2(Model model,Donation donation) {
//        model.addAttribute("donation", new Donation());
        donationSession.setCategoryList(donation.getCategoryList());
        return "formStep2";
    }
    @PostMapping(value = "/formStep3")
    public String addDonationFormStep3(Model model) {
        return "formStep3";

    }
    @PostMapping(value = "/formStep4")
    public String addDonationFormStep4(Model model) {
        model.addAttribute("donationSession", donationSession);
        return "formStep4";

    }
    @PostMapping(value = "/formStep5")
    public String addDonationFormStep5(Model model) {
        return "formStep5";

    }

    @PostMapping(value = "/formConfirmation")
    public String formConfirmation(Model model) {
        return "formConfirmation";

    }
    @GetMapping("/add")
    public String addDonationForm(Model model) {


        List<Category> categories = categoryRepository.findAll();
        model.addAttribute("categories", categories);

        List<Institution> institutions = institutionRepository.findAll();
        model.addAttribute("institutions", institutions);

        model.addAttribute("donation", new Donation());
        return "donationForm";
    }

    @PostMapping("/add")
    public String addDonation(Donation donation){
        donationRepository.save(donation);
        return "formConfirmation";
    }
}
