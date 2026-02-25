package com.cpfa.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import com.cpfa.entity.User;
import com.cpfa.repository.UserRepository;

@Component
public class DataInitializer implements CommandLineRunner {
    
    @Autowired
    private UserRepository userRepository;
    
    @Autowired
    private PasswordEncoder passwordEncoder;
    
    @Override
    public void run(String... args) throws Exception {
        System.out.println("========================================");
        System.out.println("🚀 DataInitializer Starting...");
        System.out.println("========================================");
        
        try {
            // Create admin user if not exists
            if (userRepository.findByEmail("admin@cpfa.com").isEmpty()) {
                User admin = new User();
                admin.setName("Admin");
                admin.setEmail("admin@cpfa.com");
                admin.setPassword(passwordEncoder.encode("admin123"));
                admin.setRole("ADMIN");
                userRepository.save(admin);
                System.out.println("✅ Admin user created: admin@cpfa.com / admin123");
            } else {
                System.out.println("ℹ️  Admin user already exists");
            }
            
            // Create test user if not exists
            if (userRepository.findByEmail("user@cpfa.com").isEmpty()) {
                User user = new User();
                user.setName("Test User");
                user.setEmail("user@cpfa.com");
                user.setPassword(passwordEncoder.encode("user123"));
                user.setRole("USER");
                userRepository.save(user);
                System.out.println("✅ Test user created: user@cpfa.com / user123");
            } else {
                System.out.println("ℹ️  Test user already exists");
            }
            
            // Verify users were created
            long userCount = userRepository.count();
            System.out.println("📊 Total users in database: " + userCount);
            System.out.println("========================================");
            
        } catch (Exception e) {
            System.err.println("❌ Error creating default users: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
