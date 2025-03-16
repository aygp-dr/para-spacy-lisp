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
 :text "A partir de cette soirée, Swann comprit que le sentiment qu’Odette
avait eu pour lui ne renaîtrait jamais, que ses espérances de bonheur
ne se réaliseraient plus. Et les jours où par hasard elle avait encore
été gentille et tendre avec lui, si elle avait eu quelque attention,
il notait ces signes apparents et menteurs d’un léger retour vers lui,
avec cette sollicitude attendrie et sceptique, cette joie désespérée
de ceux qui, soignant un ami arrivé aux derniers jours d’une maladie
incurable, relatent comme des faits précieux «hier, il a fait ses
comptes lui-même et c’est lui qui a relevé une erreur d’addition que
nous avions faite; il a mangé un œuf avec plaisir, s’il le digère bien
on essaiera demain d’une côtelette», quoiqu’ils les sachent dénués de
signification à la veille d’une mort inévitable. Sans doute Swann
était certain que s’il avait vécu maintenant loin d’Odette, elle
aurait fini par lui devenir indifférente, de sorte qu’il aurait été
content qu’elle quittât Paris pour toujours; il aurait eu le courage
de rester; mais il n’avait pas celui de partir."
 :tokens 179
 :processed-at "2025-03-16T02:18:14.754692"
 :entities (list
  (entity :text "Swann" :label "ORG" :start 26 :end 31) (entity :text "Sans" :label "ORG" :start 811 :end 815) (entity :text "Swann" :label "ORG" :start 822 :end 827) (entity :text "Paris" :label "ORG" :start 985 :end 990)
 )
 :sentences (list
  (sentence :text "A partir de cette soirée, Swann comprit que le sentiment qu’Odette
avait eu pour lui ne renaîtrait jamais, que ses espérances de bonheur
ne se réaliseraient plus" :start 0 :end 161) (sentence :text "Et les jours où par hasard elle avait encore
été gentille et tendre avec lui, si elle avait eu quelque attention,
il notait ces signes apparents et menteurs d’un léger retour vers lui,
avec cette sollicitude attendrie et sceptique, cette joie désespérée
de ceux qui, soignant un ami arrivé aux derniers jours d’une maladie
incurable, relatent comme des faits précieux «hier, il a fait ses
comptes lui-même et c’est lui qui a relevé une erreur d’addition que
nous avions faite; il a mangé un œuf avec plaisir, s’il le digère bien
on essaiera demain d’une côtelette», quoiqu’ils les sachent dénués de
signification à la veille d’une mort inévitable" :start 162 :end 809) (sentence :text "Sans doute Swann
était certain que s’il avait vécu maintenant loin d’Odette, elle
aurait fini par lui devenir indifférente, de sorte qu’il aurait été
content qu’elle quittât Paris pour toujours; il aurait eu le courage
de rester; mais il n’avait pas celui de partir" :start 810 :end 1076)
 ))