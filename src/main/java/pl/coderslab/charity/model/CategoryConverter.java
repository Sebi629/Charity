package pl.coderslab.charity.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.coderslab.charity.repository.CategoryRepository;




public class CategoryConverter implements Converter<String, Category> {

    @Autowired
    private CategoryRepository categoryRepository;
    public Category convert(String source) {
        return categoryRepository.getById(Long.valueOf(source));
    }

}

