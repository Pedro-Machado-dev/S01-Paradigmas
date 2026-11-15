; estrutura dominio
(defstruct dominio
  nome
  elemento
  dificuldade
  mora)

; retorna o multiplicador
(defun bonus-elemental (elemento)
  (case elemento
    (:electro  1.5)
    (:hydro    1.2)
    (otherwise 1)))

; calcula a recompensa final
(defun recompensa-final (d)
  (* (dominio-mora d)
     (bonus-elemental (dominio-elemento d))))

; filtra por dificuldade maxima
(defun rota (lista dificuldade-maxima)
  (let* ((filtrados (remove-if-not (lambda (d) (<= (dominio-dificuldade d) dificuldade-maxima))
                                   lista))
         (textos    (mapcar (lambda (d)
                              (format nil "~a (Recompensa: ~,2f Mora)"
                                      (dominio-nome d)
                                      (recompensa-final d)))
                            filtrados)))
    textos))

; main
(defun main ()
  (let ((dominios (list
                   (make-dominio :nome "Logue Town" :elemento :hydro :dificuldade 2 :mora 2000)
                   (make-dominio :nome "York Nova" :elemento :pyro :dificuldade 4 :mora 3500)
                   (make-dominio :nome "Skypiea" :elemento :cryo :dificuldade 5 :mora 5000)
                   (make-dominio :nome "Shibuya" :elemento :electro :dificuldade 3 :mora 3000)
                   (make-dominio :nome "Karaouken Hall" :elemento :anemo :dificuldade 1 :mora 1500))))

    (let ((dif-max 3))
      (format t " Rota para dificuldade maxima ~a ~%" dif-max)
      (dolist (item (rota dominios dif-max))
        (format t "~a~%" item)))

    (format t "~% Recompensa total de teyvat ~%")
    (let ((total-mora (reduce #'+ (mapcar #'recompensa-final dominios))))
      (format t "Total de mora (todos os dominios com bonus): ~,2f~%" total-mora))

    ; demonstrando a alteracao de valor
    (format t "~% Alterando copia com setf ~%")
    (let* ((original (car dominios))
           (copia    (copy-dominio original)))
      (setf (dominio-mora copia) 9999)
      (format t "Mora da copia alterada (~a): ~a~%"
              (dominio-nome copia)
              (dominio-mora copia))
      (format t "Mora do dominio original (~a): ~a~%"
              (dominio-nome original)
              (dominio-mora original)))))

; Chamada main
(main)
