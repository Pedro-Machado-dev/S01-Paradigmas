; estrutura erva
(defstruct erva
  nome
  preco-por-grama
  toxicidade)

; classifica a erva com o nivel de toxidade
(defun classifica-erva (erva)
  (let ((tox (erva-toxicidade erva)))
    (cond ((>= tox 7) "veneno")
          ((>= tox 4) "use com cuidado")
          (t          "segura"))))

; calcula o preco
(defun preco-da-dose (erva gramas)
  (* (erva-preco-por-grama erva) gramas))

; return 
(defun descreve-erva (erva)
  (format nil "~a - R$~,2f (~a)"
          (erva-nome erva)
          (erva-preco-por-grama erva)
          (classifica-erva erva)))

(defun aviso (erva)
  (if (>= (erva-toxicidade erva) 7)
      "Aviso: maomao vai testar a erva em si mesma"
      "Aviso: liberada para o paciente"))

; main
(defun main ()
  (let ((estoque (list
                  (make-erva :nome "Cha da terra" :preco-por-grama 2.50 :toxicidade 1)
                  (make-erva :nome "Raiz da terra" :preco-por-grama 12.00 :toxicidade 5)
                  (make-erva :nome "Aconito da terra" :preco-por-grama 45.00 :toxicidade 9))))
    
    (format t " Estoque da farmacia da maomao ~%")
    (dolist (e estoque)
      (format t "~a | ~a~%" (descreve-erva e) (aviso e)))

    (format t "~% calculo da dose ~%")
    (let* ((erva-escolhida (car estoque))
           (gramas 15)
           (total (preco-da-dose erva-escolhida gramas)))
      (format t "dose de ~ag de ~a: R$~,2f~%"
              gramas
              (erva-nome erva-escolhida)
              total))))

; chama a main
(main)
