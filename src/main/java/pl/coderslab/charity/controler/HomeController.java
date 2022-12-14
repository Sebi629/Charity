package pl.coderslab.charity.controler;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.repository.DonationRepository;
import pl.coderslab.charity.repository.InstitutionRepository;


@Controller
public class HomeController {

    private final DonationRepository donationRepository;
    private final InstitutionRepository institutionRepository;
    public HomeController(DonationRepository donationRepository, InstitutionRepository institutionRepository) {
        this.donationRepository = donationRepository;
        this.institutionRepository = institutionRepository;
    }


    @RequestMapping("/")
    public String homeAction(Model model){
        model.addAttribute("allBags", donationRepository.sumQuantity());
        model.addAttribute("allDonations", donationRepository.count());
        model.addAttribute("institutions", institutionRepository.findAll());
        return "index";

    }
}
