; estrutura criatura
(defstruct criatura
  nome
  bioma
  profundidade
  perigo)

; retorna o texto
(defun texto-do-perigo (perigo)
  (case perigo
    (:inofensiva "Inofensiva")
    (:agressiva  "Agressiva")
    (:leviata    "Leviata: mantenha distancia")
    (otherwise   "Desconhecido")))

(defun descreve-criatura (c)
  (format nil "~a , Bioma: ~a , Profundidade: ~am , Perigo: ~a"
          (criatura-nome c)
          (criatura-bioma c)
          (criatura-profundidade c)
          (texto-do-perigo (criatura-perigo c))))

; filtra a criatura
(defun abaixo-de (metros catalogo)
  (remove-if-not (lambda (c) (> (criatura-profundidade c) metros))
                 catalogo))

; catalogo global
(defparameter *catalogo*
  (list
   (make-criatura :nome "Sand man" :bioma "Atlantico" :profundidade 20 :perigo :inofensiva)
   (make-criatura :nome "Topo" :bioma "Tunel hunter" :profundidade 60 :perigo :agressiva)
   (make-criatura :nome "Monstro do lago ness" :bioma "Lago ness" :profundidade 500 :perigo :agressiva)
   (make-criatura :nome "Leviathan" :bioma "Crash zone" :profundidade 350 :perigo :leviata)
   (make-criatura :nome "Leviathan pai" :bioma "Lost river" :profundidade 800 :perigo :leviata)))

; main
(defun main ()
  (format t " Catalogo completo ~%")
  (let ((textos-catalogo (mapcar #'descreve-criatura *catalogo*)))
    (dolist (texto textos-catalogo)
      (format t "~a~%" texto)))

  (let* ((prof-limite 300)
         (criaturas-profundas (abaixo-de prof-limite *catalogo*))
         (textos-profundas (mapcar #'descreve-criatura criaturas-profundas)))
    (format t "~% Criaturas abaixo de ~am ~%" prof-limite)
    (dolist (texto textos-profundas)
      (format t "~a~%" texto))
    (format t "Total de criaturas abaixo de ~am: ~a~%"
            prof-limite
            (length criaturas-profundas))))

; chama a main
(main)
