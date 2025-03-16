;; spaCy-lisp: 1.0.0
;; info:
;;   title: Text Analysis Schema
;;   description: Schema for NLP analysis of paragraphs using spaCy
;;   version: 1.0.0
;; components:
;;   schemas:
;;     TextAnalysis:
;;       type: object
;;       properties:
;;         text:
;;           type: string
;;           description: Original text content
;;         tokens:
;;           type: integer
;;           description: Number of tokens in the text
;;         processed-at:
;;           type: string
;;           format: date-time
;;           description: Timestamp of processing
;;         entities:
;;           type: array
;;           items:
;;             $ref: '#/components/schemas/Entity'
;;           description: Named entities found in text
;;         sentences:
;;           type: array
;;           items:
;;             $ref: '#/components/schemas/Sentence'
;;           description: Sentences in the text
;;     Entity:
;;       type: object
;;       properties:
;;         text:
;;           type: string
;;           description: Text of the entity
;;         label:
;;           type: string
;;           description: Entity type label
;;         start:
;;           type: integer
;;           description: Start character position
;;         end:
;;           type: integer
;;           description: End character position
;;     Sentence:
;;       type: object
;;       properties:
;;         text:
;;           type: string
;;           description: Text of the sentence
;;         start:
;;           type: integer
;;           description: Start character position
;;         end:
;;           type: integer
;;           description: End character position

(text-analysis
 :text "Autrefois, je ne m’attardais pas dans le bois consacré qui
l’entourait, car, avant de monter lire, j’entrais dans le petit
cabinet de repos que mon oncle Adolphe, un frère de mon grand-père,
ancien militaire qui avait pris sa retraite comme commandant, occupait
au rez-de-chaussée, et qui, même quand les fenêtres ouvertes
laissaient entrer la chaleur, sinon les rayons du soleil qui
atteignaient rarement jusque-là, dégageait inépuisablement cette odeur
obscure et fraîche, à la fois forestière et ancien régime, qui fait
rêver longuement les narines, quand on pénètre dans certains pavillons
de chasse abandonnés. Mais depuis nombre d’années je n’entrais plus
dans le cabinet de mon oncle Adolphe, ce dernier ne venant plus à
Combray à cause d’une brouille qui était survenue entre lui et ma
famille, par ma faute, dans les circonstances suivantes:"
 :tokens 133
 :processed-at "2025-03-16T02:18:13.916538"
 :entities (list
  (entity :text "Mais" :label "ORG" :start 616 :end 620) (entity :text "Combray" :label "ORG" :start 728 :end 735)
 )
 :sentences (list
  (sentence :text "Autrefois, je ne m’attardais pas dans le bois consacré qui
l’entourait, car, avant de monter lire, j’entrais dans le petit
cabinet de repos que mon oncle Adolphe, un frère de mon grand-père,
ancien militaire qui avait pris sa retraite comme commandant, occupait
au rez-de-chaussée, et qui, même quand les fenêtres ouvertes
laissaient entrer la chaleur, sinon les rayons du soleil qui
atteignaient rarement jusque-là, dégageait inépuisablement cette odeur
obscure et fraîche, à la fois forestière et ancien régime, qui fait
rêver longuement les narines, quand on pénètre dans certains pavillons
de chasse abandonnés" :start 0 :end 614) (sentence :text "Mais depuis nombre d’années je n’entrais plus
dans le cabinet de mon oncle Adolphe, ce dernier ne venant plus à
Combray à cause d’une brouille qui était survenue entre lui et ma
famille, par ma faute, dans les circonstances suivantes:" :start 615 :end 850)
 ))