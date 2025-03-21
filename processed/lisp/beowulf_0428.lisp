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
 :text "--«C’est une si excellente femme, répondit-il. Je vous accorde qu’elle
n’est pas étourdissante; mais je vous assure qu’elle est agréable
quand on cause seul avec elle. «Je n’en doute pas, s’empressa de
concéder Swann. Je voulais dire qu’elle ne me semblait pas «éminente»
ajouta-t-il en détachant cet adjectif, et en somme c’est plutôt un
compliment!» «Tenez, dit M. Verdurin, je vais vous étonner, elle écrit
d’une manière charmante. Vous n’avez jamais entendu son neveu? c’est
admirable, n’est-ce pas, docteur? Voulez-vous que je lui demande de
jouer quelque chose, Monsieur Swann?»"
 :tokens 90
 :processed-at "2025-03-16T02:18:14.249978"
 :entities (list
  (entity :text "Swann." :label "ORG" :start 211 :end 217) (entity :text "«Tenez," :label "ORG" :start 352 :end 359) (entity :text "Verdurin," :label "ORG" :start 367 :end 376) (entity :text "Vous" :label "ORG" :start 435 :end 439) (entity :text "Monsieur" :label "ORG" :start 568 :end 576) (entity :text "Swann?»" :label "ORG" :start 577 :end 584)
 )
 :sentences (list
  (sentence :text "--«C’est une si excellente femme, répondit-il" :start 0 :end 45) (sentence :text "Je vous accorde qu’elle
n’est pas étourdissante; mais je vous assure qu’elle est agréable
quand on cause seul avec elle" :start 46 :end 166) (sentence :text "«Je n’en doute pas, s’empressa de
concéder Swann" :start 167 :end 216) (sentence :text "Je voulais dire qu’elle ne me semblait pas «éminente»
ajouta-t-il en détachant cet adjectif, et en somme c’est plutôt un
compliment!» «Tenez, dit M" :start 217 :end 365) (sentence :text "Verdurin, je vais vous étonner, elle écrit
d’une manière charmante" :start 366 :end 433) (sentence :text "Vous n’avez jamais entendu son neveu? c’est
admirable, n’est-ce pas, docteur? Voulez-vous que je lui demande de
jouer quelque chose, Monsieur Swann?»" :start 434 :end 584)
 ))