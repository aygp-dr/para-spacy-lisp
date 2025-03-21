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
 :text "--«Oh! non, surtout, ne parlez pas, vous allez encore vous essouffler,
vous pouvez bien me répondre par gestes, je vous comprendrai bien.
Sincèrement je ne vous gêne pas? Voyez, il y a un peu... je pense que
c’est du pollen qui s’est répandu sur vous, vous permettez que je
l’essuie avec ma main? Je ne vais pas trop fort, je ne suis pas trop
brutal? Je vous chatouille peut-être un peu? mais c’est que je ne
voudrais pas toucher le velours de la robe pour ne pas le friper.
Mais, voyez-vous, il était vraiment nécessaire de les fixer ils
seraient tombés; et comme cela, en les enfonçant un peu moi-même...
Sérieusement, je ne vous suis pas désagréable? Et en les respirant
pour voir s’ils n’ont vraiment pas d’odeur non plus? Je n’en ai jamais
senti, je peux? dites la vérité.»?"
 :tokens 140
 :processed-at "2025-03-16T02:18:14.380708"
 :entities (list
  (entity :text "--«Oh!" :label "ORG" :start 0 :end 6) (entity :text "Sincèrement" :label "ORG" :start 138 :end 149) (entity :text "Voyez," :label "ORG" :start 171 :end 177) (entity :text "Mais," :label "ORG" :start 475 :end 480) (entity :text "Sérieusement," :label "ORG" :start 607 :end 620)
 )
 :sentences (list
  (sentence :text "--«Oh! non, surtout, ne parlez pas, vous allez encore vous essouffler,
vous pouvez bien me répondre par gestes, je vous comprendrai bien" :start 0 :end 136) (sentence :text "Sincèrement je ne vous gêne pas? Voyez, il y a un peu" :start 137 :end 191) (sentence :text "je pense que
c’est du pollen qui s’est répandu sur vous, vous permettez que je
l’essuie avec ma main? Je ne vais pas trop fort, je ne suis pas trop
brutal? Je vous chatouille peut-être un peu? mais c’est que je ne
voudrais pas toucher le velours de la robe pour ne pas le friper" :start 194 :end 473) (sentence :text "Mais, voyez-vous, il était vraiment nécessaire de les fixer ils
seraient tombés; et comme cela, en les enfonçant un peu moi-même" :start 474 :end 603) (sentence :text "Sérieusement, je ne vous suis pas désagréable? Et en les respirant
pour voir s’ils n’ont vraiment pas d’odeur non plus? Je n’en ai jamais
senti, je peux? dites la vérité" :start 606 :end 776) (sentence :text "»?" :start 777 :end 779)
 ))