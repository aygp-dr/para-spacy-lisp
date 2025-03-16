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
 :text "Et c’est à ce moment-là encore,--grâce à un paysan qui passait, l’air
déjà d’être d’assez mauvaise humeur, qui le fut davantage quand il
faillit recevoir mon parapluie dans la figure, et qui répondit sans
chaleur à mes «beau temps, n’est-ce pas, il fait bon marcher»,--que
j’appris que les mêmes émotions ne se produisent pas simultanément,
dans un ordre préétabli, chez tous les hommes. Plus tard chaque fois
qu’une lecture un peu longue m’avait mis en humeur de causer, le
camarade à qui je brûlais d’adresser la parole venait justement de se
livrer au plaisir de la conversation et désirait maintenant qu’on le
laissât lire tranquille. Si je venais de penser à mes parents avec
tendresse et de prendre les décisions les plus sages et les plus
propres à leur faire plaisir, ils avaient employé le même temps à
apprendre une peccadille que j’avais oubliée et qu’ils me reprochaient
sévèrement au moment où je m’élançais vers eux pour les embrasser."
 :tokens 159
 :processed-at "2025-03-16T02:18:14.142960"
 :entities (list
  (entity :text "Plus" :label "ORG" :start 388 :end 392)
 )
 :sentences (list
  (sentence :text "Et c’est à ce moment-là encore,--grâce à un paysan qui passait, l’air
déjà d’être d’assez mauvaise humeur, qui le fut davantage quand il
faillit recevoir mon parapluie dans la figure, et qui répondit sans
chaleur à mes «beau temps, n’est-ce pas, il fait bon marcher»,--que
j’appris que les mêmes émotions ne se produisent pas simultanément,
dans un ordre préétabli, chez tous les hommes" :start 0 :end 386) (sentence :text "Plus tard chaque fois
qu’une lecture un peu longue m’avait mis en humeur de causer, le
camarade à qui je brûlais d’adresser la parole venait justement de se
livrer au plaisir de la conversation et désirait maintenant qu’on le
laissât lire tranquille" :start 387 :end 637) (sentence :text "Si je venais de penser à mes parents avec
tendresse et de prendre les décisions les plus sages et les plus
propres à leur faire plaisir, ils avaient employé le même temps à
apprendre une peccadille que j’avais oubliée et qu’ils me reprochaient
sévèrement au moment où je m’élançais vers eux pour les embrasser" :start 638 :end 948)
 ))