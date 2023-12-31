-- procedure 1 execution
-- select * from ADMIN.CUSTOMER_CHOICE_BY_SEASON_VIEW;
--
-- select * from all_views where lower(owner) = 'admin';
-- select * from customer;
--  SELECT * FROM ALL_PROCEDURES WHERE lower(OWNER) = 'admin';

DECLARE
    v_name VARCHAR2(50) := 'John Doe';
    v_dob DATE := TO_DATE('1990-05-15', 'YYYY-MM-DD');
    v_gender VARCHAR2(40) := 'qwerty';
    v_email VARCHAR2(50) := 'asd11cqqo@gmail.edu';
    v_phone_number NUMBER := 1214511201;
    v_street_address VARCHAR2(50) := '123 Main St';
    v_city VARCHAR2(20) := 'Cityville';
    v_state VARCHAR2(20) := 'CA';
    v_zipcode NUMBER := 12345;
    v_customer_id NUMBER;
BEGIN
    ADMIN.CUSTOMER_REGISTRATION_PROCEDURE(
        p_name => v_name,
        p_dob => v_dob,
        p_gender => v_gender,
        p_email => v_email,
        p_phone_number => v_phone_number,
        p_street_address => v_street_address,
        p_city => v_city,
        p_state => v_state,
        p_zipcode => v_zipcode,
        o_customer_id => v_customer_id
    );
END;
/

-- procedure 2 execution
SET SERVEROUTPUT ON;

BEGIN
    admin.common_procs.ViewAllSubscriptionTypes;
END;
/

-- procedure 3 execution
set serveroutput on
DECLARE
   v_customer_id NUMBER := 555001; -- Replace with the actual customer ID
   v_subscription_type VARCHAR2(10) := 'WEEKLY'; -- Replace with the desired subscription type
   v_payment_amount NUMBER := 50; -- Replace with the desired payment amount
BEGIN
   ADMIN.PurchaseSubscription(v_customer_id, v_subscription_type, v_payment_amount);
END;
/
--select * from subscription;

-- procedure 4 execution

SET SERVEROUTPUT ON;
BEGIN
    admin.common_procs.ViewAllMealTypes;
END;
/

-- procedure 5 execution

SET SERVEROUTPUT ON;
DECLARE
  v_customer_id    NUMBER := 555001; -- Provide the customer ID here
  v_meal_type      VARCHAR2(10) := 'HALaL'; -- Provide the meal type here
  v_time_slot      VARCHAR2(10) := 'afterNoon'; -- Provide the time slot here
  v_delivery_date  DATE := TO_DATE('2023-12-06', 'YYYY-MM-DD'); -- Provide the delivery date here
BEGIN
  ADMIN.book_meal(v_customer_id, v_meal_type, v_time_slot, v_delivery_date);
END;
/

-- procedure 6 execution
SET SERVEROUTPUT ON;
DECLARE
  v_customer_id NUMBER := 555001; -- Provide the customer ID here
BEGIN
  ADMIN.generate_invoice(v_customer_id);
END;
/

--select * from booking;

-- procedure 7 execution

SET SERVEROUTPUT ON;
DECLARE
  v_customer_id NUMBER := 555001; -- Provide the customer ID here
BEGIN
  ADMIN.get_delivery_details(v_customer_id);
END;
/

-- procedure 8 execution
-- Update only the customer's email
EXEC ADMIN.update_customer_details(p_customer_id => 555001, p_email => 'abc@email.com');

-- Update both name and phone number
EXEC ADMIN.update_customer_details(p_customer_id => 555012, p_name => 'Updated Name', p_phone_number => 9876159621);


------ MANAGER WF --------------

-- procedure 9 execution
BEGIN
    ADMIN.add_or_update_subscription_type('o1k', 123,134);
END;
/
--select * from subscription_type;

-- procedure 10 execution

--BEGIN
--    delete_subscription_type('WEEKLY');
--END;
--/

-- procedure 11 execution
BEGIN
    ADMIN.add_meal('VEgqq');
END;
/

-- select * from meal;
-- procedure 12 execution
--
--BEGIN
--    delete_meal('vEg');
--END;
--/

-- procedure 13 execution

--select * from booking;
BEGIN
    ADMIN.update_booking_delivery_partner(p_booking_id => 777001, p_dp_id => null);
    ADMIN.update_booking_delivery_partner(p_booking_id => 777002, p_dp_id => 333001);
END;
/

-- procedure 14 execution

--select * from DELIVERY_PARTNER;

BEGIN
    ADMIN.create_delivery_partner(p_d_name => 'qwertyu', p_phone_number => 9998887777, p_email => 'new_dp@example.com');
END;
/

-- procedure 15 execution
SET SERVEROUTPUT ON
BEGIN
    admin.view_pending_deliveries(333001);
END;
/


-- procedure 16 execution
SET SERVEROUTPUT ON
BEGIN
    admin.update_delivery_status(333001, 777005, 'y');
END;
/

-- procedure 17 execution

--select * from DELIVERY_PARTNER;

BEGIN
    admin.update_delivery_partner(p_dp_id => null, p_d_name => 'New Express Delivery');
    admin.update_delivery_partner(p_dp_id => 333001);
    admin.update_delivery_partner(p_dp_id => 3, p_d_email => 'new_quick_ship@example.com');
END;
/
