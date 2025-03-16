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
 :text "--«Penser qu’elle pourrait visiter de vrais monuments avec moi qui ai
étudié l’architecture pendant dix ans et qui suis tout le temps
supplié de mener à Beauvais ou à Saint-Loup-de-Naud des gens de la
plus haute valeur et ne le ferais que pour elle, et qu’à la place elle
va avec les dernières des brutes s’extasier successivement devant les
déjections de Louis-Philippe et devant celles de Viollet-le-Duc! Il me
semble qu’il n’y a pas besoin d’être artiste pour cela et que, même
sans flair particulièrement fin, on ne choisit pas d’aller
villégiaturer dans des latrines pour être plus à portée de respirer
des excréments.»"
 :tokens 104
 :processed-at "2025-03-16T02:18:14.584915"
 :entities (list
  (entity :text "--«Penser" :label "ORG" :start 0 :end 9) (entity :text "Beauvais" :label "ORG" :start 153 :end 161) (entity :text "Louis-Philippe" :label "ORG" :start 356 :end 370)
 )
 :sentences (list
  (sentence :text "--«Penser qu’elle pourrait visiter de vrais monuments avec moi qui ai
étudié l’architecture pendant dix ans et qui suis tout le temps
supplié de mener à Beauvais ou à Saint-Loup-de-Naud des gens de la
plus haute valeur et ne le ferais que pour elle, et qu’à la place elle
va avec les dernières des brutes s’extasier successivement devant les
déjections de Louis-Philippe et devant celles de Viollet-le-Duc! Il me
semble qu’il n’y a pas besoin d’être artiste pour cela et que, même
sans flair particulièrement fin, on ne choisit pas d’aller
villégiaturer dans des latrines pour être plus à portée de respirer
des excréments" :start 0 :end 622) (sentence :text "»" :start 623 :end 624)
 ))