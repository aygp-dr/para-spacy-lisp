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
 :text "Il y a dans le violon,--si ne voyant pas l’instrument, on ne peut pas
rapporter ce qu’on entend à son image laquelle modifie la sonorité--des
accents qui lui sont si communs avec certaines voix de contralto,
qu’on a l’illusion qu’une chanteuse s’est ajoutée au concert. On lève
les yeux, on ne voit que les étuis, précieux comme des boîtes
chinoises, mais, par moment, on est encore trompé par l’appel décevant
de la sirène; parfois aussi on croit entendre un génie captif qui se
débat au fond de la docte boîte, ensorcelée et frémissante, comme un
diable dans un bénitier; parfois enfin, c’est, dans l’air, comme un
être surnaturel et pur qui passe en déroulant son message invisible."
 :tokens 117
 :processed-at "2025-03-16T02:18:14.747471"
 :entities (list
  
 )
 :sentences (list
  (sentence :text "Il y a dans le violon,--si ne voyant pas l’instrument, on ne peut pas
rapporter ce qu’on entend à son image laquelle modifie la sonorité--des
accents qui lui sont si communs avec certaines voix de contralto,
qu’on a l’illusion qu’une chanteuse s’est ajoutée au concert" :start 0 :end 268) (sentence :text "On lève
les yeux, on ne voit que les étuis, précieux comme des boîtes
chinoises, mais, par moment, on est encore trompé par l’appel décevant
de la sirène; parfois aussi on croit entendre un génie captif qui se
débat au fond de la docte boîte, ensorcelée et frémissante, comme un
diable dans un bénitier; parfois enfin, c’est, dans l’air, comme un
être surnaturel et pur qui passe en déroulant son message invisible" :start 269 :end 684)
 ))