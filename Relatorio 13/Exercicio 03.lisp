; estrutura da garota
(defstruct garota-magica
  nome
  escuridao
  bruxas)

; soma a escuridao do grupo
(defun escuridao-total (grupo)
  (if (null grupo)
      0
      (+ (garota-magica-escuridao (car grupo))
         (escuridao-total (cdr grupo)))))

; soma das bruxas derrotadas
(defun total-de-bruxas (grupo)
  (reduce #'+ (mapcar #'garota-magica-bruxas grupo)))

; retorna uma garota nova
(defun purifica (g quantidade)
  (let ((nova-escuridao (if (>= quantidade (garota-magica-escuridao g))
                            0
                            (- (garota-magica-escuridao g) quantidade))))
    (make-garota-magica :nome      (garota-magica-nome g)
                        :escuridao nova-escuridao
                        :bruxas    (garota-magica-bruxas g))))

; main
(defun main ()
  (let ((grupo (list
                (make-garota-magica :nome "Maria" :escuridao 15 :bruxas 3)
                (make-garota-magica :nome "Vanessa" :escuridao 75 :bruxas 20)
                (make-garota-magica :nome "Ursula" :escuridao 90 :bruxas 8))))

    (format t " Grupo Inicial ~%")
    (format t "Escuridao total do grupo ~a~%" (escuridao-total grupo))
    (format t "Total de bruxas derrotadas ~a~%" (total-de-bruxas grupo))

    (let* ((nova-garota (make-garota-magica :nome "Kyoko" :escuridao 40 :bruxas 14))
           (grupo-novo  (cons nova-garota grupo)))
      (format t "~%--- Novo Contrato (cons) ---~%")
      (format t "Escuridao total do grupo original: ~a~%" (escuridao-total grupo))
      (format t "Escuridao total do grupo novo: ~a~%" (escuridao-total grupo-novo)))

    ; purificando garota sem alterar a original
    (let* ((garota-original (car (cdr grupo))) ; 
           (garota-purificada (purifica garota-original 50)))
      (format t "~% Purificacao da Joia da Alma ~%")
      (format t "Escuridao de ~a (original): ~a~%"
              (garota-magica-nome garota-original)
              (garota-magica-escuridao garota-original))
      (format t "Escuridao de ~a (apos purificar): ~a~%"
              (garota-magica-nome garota-purificada)
              (garota-magica-escuridao garota-purificada)))))

; chama a main
(main)
