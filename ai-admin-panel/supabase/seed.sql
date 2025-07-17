-- Insert some sample users
insert into public.users (id, name, email, role)
values
    ('8d8b8d8d-8d8d-8d8d-8d8d-8d8d8d8d8d8d', 'Super Admin', 'superadmin@example.com', 'superadmin'),
    ('1a1a1a1a-1a1a-1a1a-1a1a-1a1a1a1a1a1a', 'Admin User', 'admin@example.com', 'admin');

-- Insert some sample clients
insert into public.clients (invited_by, source)
values
    ('1a1a1a1a-1a1a-1a1a-1a1a-1a1a1a1a1a1a', 'telegram'),
    ('1a1a1a1a-1a1a-1a1a-1a1a-1a1a1a1a1a1a', 'web'),
    ('1a1a1a1a-1a1a-1a1a-1a1a-1a1a1a1a1a1a', 'whatsapp');

-- Insert some sample interactions
insert into public.interactions (user_id, message, response, sentiment, duration, channel, is_lead)
values
    ('1a1a1a1a-1a1a-1a1a-1a1a-1a1a1a1a1a1a', 'Hello, I have a question.', 'Sure, how can I help?', 0.8, 120, 'telegram', false),
    ('1a1a1a1a-1a1a-1a1a-1a1a-1a1a1a1a1a1a', 'I want to buy a product.', 'Great! I can help with that.', 0.9, 180, 'web', true),
    ('1a1a1a1a-1a1a-1a1a-1a1a-1a1a1a1a1a1a', 'My order is late.', 'I am sorry to hear that. Let me check.', 0.2, 240, 'whatsapp', false);

-- Insert some sample admin activity
insert into public.admins_activity_log (user_id, date, actions_count)
values
    ('1a1a1a1a-1a1a-1a1a-1a1a-1a1a1a1a1a1a', '2024-01-01', 10),
    ('1a1a1a1a-1a1a-1a1a-1a1a-1a1a1a1a1a1a', '2024-01-02', 15),
    ('1a1a1a1a-1a1a-1a1a-1a1a-1a1a1a1a1a1a', '2024-01-03', 20);
