-- Insert default admin user (password: admin123)
-- Note: This is a BCrypt hash of 'admin123'
INSERT IGNORE INTO user (userid, username, email, userpass, role) 
VALUES (1, 'Admin', 'admin@cpfa.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'ADMIN');

-- Insert default test user (password: user123)
-- Note: This is a BCrypt hash of 'user123'
INSERT IGNORE INTO user (userid, username, email, userpass, role) 
VALUES (2, 'Test User', 'user@cpfa.com', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'USER');
