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
 :text "Pourquoi croire qu’elle goûterait là-bas avec Forcheville ou avec
d’autres des plaisirs enivrants qu’elle n’avait pas connus auprès de
lui et que seule sa jalousie forgeait de toutes pièces? A Bayreuth
comme à Paris, s’il arrivait que Forcheville pensât à lui ce n’eût pu
être que comme à quelqu’un qui comptait beaucoup dans la vie d’Odette,
à qui il était obligé de céder la place, quand ils se rencontraient
chez elle. Si Forcheville et elle triomphaient d’être là-bas malgré
lui, c’est lui qui l’aurait voulu en cherchant inutilement à
l’empêcher d’y aller, tandis que s’il avait approuvé son projet,
d’ailleurs défendable, elle aurait eu l’air d’être là-bas d’après son
avis, elle s’y serait sentie envoyée, logée par lui, et le plaisir
qu’elle aurait éprouvé à recevoir ces gens qui l’avaient tant reçue,
c’est à Swann qu’elle en aurait su gré."
 :tokens 140
 :processed-at "2025-03-16T02:18:14.611434"
 :entities (list
  (entity :text "Pourquoi" :label "ORG" :start 0 :end 8) (entity :text "Forcheville" :label "ORG" :start 46 :end 57) (entity :text "Bayreuth" :label "ORG" :start 193 :end 201) (entity :text "Paris," :label "ORG" :start 210 :end 216) (entity :text "Forcheville" :label "ORG" :start 235 :end 246) (entity :text "Forcheville" :label "ORG" :start 425 :end 436) (entity :text "Swann" :label "ORG" :start 819 :end 824)
 )
 :sentences (list
  (sentence :text "Pourquoi croire qu’elle goûterait là-bas avec Forcheville ou avec
d’autres des plaisirs enivrants qu’elle n’avait pas connus auprès de
lui et que seule sa jalousie forgeait de toutes pièces? A Bayreuth
comme à Paris, s’il arrivait que Forcheville pensât à lui ce n’eût pu
être que comme à quelqu’un qui comptait beaucoup dans la vie d’Odette,
à qui il était obligé de céder la place, quand ils se rencontraient
chez elle" :start 0 :end 420) (sentence :text "Si Forcheville et elle triomphaient d’être là-bas malgré
lui, c’est lui qui l’aurait voulu en cherchant inutilement à
l’empêcher d’y aller, tandis que s’il avait approuvé son projet,
d’ailleurs défendable, elle aurait eu l’air d’être là-bas d’après son
avis, elle s’y serait sentie envoyée, logée par lui, et le plaisir
qu’elle aurait éprouvé à recevoir ces gens qui l’avaient tant reçue,
c’est à Swann qu’elle en aurait su gré" :start 421 :end 849)
 ))