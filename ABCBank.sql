create schema ABCBank;
use ABCBank;
create table abcbank(
			user_id int primary key auto_increment,
			user_name varchar(20),
            phone_number bigint,
            account_number bigint,
            get_loan bigint,
            time time,
            loan_amount bigint,
            monthly_pay bigint
);
