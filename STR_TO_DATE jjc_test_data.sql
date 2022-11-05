UPDATE jjc_test_data.state_coordinates
SET submission_date = str_to_date(submission_date, "%m/%d/%Y %H:%i");