package vn.nhom8.laptopshop.controller.Admin;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import jakarta.validation.Valid;
import vn.nhom8.laptopshop.domain.Product;
import vn.nhom8.laptopshop.domain.User;
import vn.nhom8.laptopshop.service.ProductService;
import vn.nhom8.laptopshop.service.UploadService;

@Controller
public class ProductController {
    private final ProductService productService;
    private final UploadService uploadService;

    public ProductController(ProductService productService, UploadService uploadService) {
        this.productService = productService;
        this.uploadService = uploadService;
    }

    // --------------------- Danh sách sản phẩm ---------------------
    @GetMapping("/admin/product")
    public String getDashboard(Model model, @RequestParam("page") Optional<String> pageOptional) {
        int page = 1;
        try {
            if (pageOptional.isPresent()) {
                page = Integer.parseInt(pageOptional.get());
            }
        } catch (Exception e) {
            // Log nếu cần
        }
        Pageable pageable = PageRequest.of(page - 1, 10);
        Page<Product> products = this.productService.getAllProducts(pageable);
        List<Product> listProducts = products.getContent();
        model.addAttribute("users1", listProducts);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", products.getTotalPages() == 0 ? 1 : products.getTotalPages());
        return "admin/product/show";
    }

    // --------------------- Tạo sản phẩm ---------------------
    @GetMapping("/admin/product/create")
    public String getCreateProduct(Model model) {
        model.addAttribute("newProduct", new Product());
        return "admin/product/create";
    }

    @PostMapping(value = "/admin/product/create")
    public String createUserpage(Model model, @ModelAttribute("newProduct") @Valid Product newUser,
            BindingResult newUserBindingResult,
            @RequestParam("imageFile") MultipartFile file) {
        if (newUserBindingResult.hasErrors()) {
            return "admin/product/create";
        }
        String avatar = this.uploadService.handleSaveUploadFile(file, "product");
        newUser.setImage(avatar);
        this.productService.handleSaveProduct(newUser);
        return "redirect:/admin/product";
    }

    // --------------------- Cập nhật sản phẩm (Đặt trước phần /{id})
    // ---------------------
    @RequestMapping("/admin/product/update/{id}")
    public String getUpdateUserpage(Model model, @PathVariable long id) {
        Optional<Product> userOpt = this.productService.fetchProductById(id);
        if (userOpt.isEmpty()) {
            return "redirect:/admin/product?error=notfound";
        }
        model.addAttribute("newProduct", userOpt.get());
        return "admin/product/update";
    }

    @PostMapping("/admin/product/update/{id}")
    public String postUpdateProductpage(Model model, @ModelAttribute("newProduct") Product newUser,
            BindingResult newProductBindingResult,
            @RequestParam("imageFile") MultipartFile file,
            @PathVariable long id) {

        if (newProductBindingResult.hasErrors()) {
            return "admin/product/update";
        }

        Optional<Product> userOpt = this.productService.fetchProductById(newUser.getId());
        if (userOpt.isEmpty()) {
            return "redirect:/admin/product?error=notfound";
        }

        Product user = userOpt.get();

        if (!file.isEmpty()) {
            String img = this.uploadService.handleSaveUploadFile(file, "product");
            user.setImage(img);
        }
        user.setRam(newUser.getRam());
        user.setName(newUser.getName());
        user.setPrice(newUser.getPrice());
        user.setQuantity(newUser.getQuantity());
        user.setSsd(newUser.getSsd());
        user.setScreen(newUser.getScreen());
        user.setCpu(newUser.getCpu());
        user.setGraphics_card(newUser.getGraphics_card());
        user.setBattery(newUser.getBattery());
        user.setWeight(newUser.getWeight());
        user.setFactory(newUser.getFactory());
        user.setTarget(newUser.getTarget());

        this.productService.handleSaveProduct(user);
        return "redirect:/admin/product";
    }

    // --------------------- Xoá sản phẩm ---------------------
    @GetMapping("/admin/product/delete/{id}")
    public String getDeleteUserPage(Model model, @PathVariable long id) {
        Optional<Product> productOpt = productService.fetchProductById(id);
        if (productOpt.isEmpty()) {
            return "redirect:/admin/product?error=notfound";
        }
        model.addAttribute("productToDelete", productOpt.get());
        return "admin/product/delete";
    }

    @PostMapping("/admin/product/delete")
    public String postDeleteUserPage(@ModelAttribute("productToDelete") Product productToDelete) {
        productService.deleteAProduct(productToDelete.getId());
        return "redirect:/admin/product";
    }

    // --------------------- Chi tiết sản phẩm ---------------------
    @RequestMapping("/admin/product/{id:\\\\d+}")
    public String getUserDetailpage(Model model, @PathVariable long id) {
        Optional<Product> userOpt = this.productService.fetchProductById(id);
        if (userOpt.isEmpty()) {
            return "redirect:/admin/product?error=notfound";
        }
        model.addAttribute("user", userOpt.get());
        return "admin/product/detail";
    }
}
