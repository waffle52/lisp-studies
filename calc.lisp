(defun main ()
  "Prompt user to enter two number and operator"
  (interactive)
  (setq num1 (read-string "Enter first number: "))
  (setq num2 (read-string "Enter second number: "))
  (setq ope (read-string "Enter operator symbol: "))
  (cond ((string-equal "/" ope) (divide num1 num2))
	((string-equal "+" ope) (add num1 num2))
	((string-equal "-" ope) (subtract num1 num2))
	((string-equal "*" ope) (multiply num1 num2))
	(t (message "Not an operator symbol"))
))

(defun multiply (num1 num2)
"Multiplies two numbers"
(setq result (* (string-to-number num1) (string-to-number num2)))
(message "result: %i" result))

(defun add (num1 num2)
"Addition of two numbers"
(setq result (+ (string-to-number num1) (string-to-number num2)))
(message "result: %i" result))

(defun subtract (num1 num2)
"Subtraction of two numbers"
(setq result (- (string-to-number num1) (string-to-number num2)))
(message "result: %i" result))

(defun divide (num1 num2)
"Divides two numbers"
(setq result (/ (string-to-number num1) (string-to-number num2)))
(message "result: %i" result))

(main)
