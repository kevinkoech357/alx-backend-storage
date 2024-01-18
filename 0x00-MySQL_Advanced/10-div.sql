-- Create a function named SafeDiv
-- that divides (and returns) the first by the second number
-- or returns 0 if the second number is equal to 0.

CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS FLOAT DETERMINISTIC
BEGIN
  -- Declare a variable to store the result
  DECLARE result FLOAT;

  -- Check if the second number is equal to 0
  IF b = 0 THEN
    SET result = 0;
  ELSE
    SET result = a DIV b;
  END IF;

  -- Return the result
  RETURN result;
END;

