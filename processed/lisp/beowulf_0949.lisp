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
 :text "Certains soirs elle redevenait tout d’un coup avec lui d’une
gentillesse dont elle l’avertissait durement qu’il devait profiter
tout de suite, sous peine de ne pas la voir se renouveler avant des
années; il fallait rentrer immédiatement chez elle «faire catleya» et
ce désir qu’elle prétendait avoir de lui était si soudain, si
inexplicable, si impérieux, les caresses qu’elle lui prodiguait
ensuite si démonstratives et si insolites, que cette tendresse brutale
et sans vraisemblance faisait autant de chagrin à Swann qu’un mensonge
et qu’une méchanceté. Un soir qu’il était ainsi, sur l’ordre qu’elle
lui en avait donné, rentré avec elle, et qu’elle entremêlait ses
baisers de paroles passionnées qui contrastaient avec sa sécheresse
ordinaire, il crut tout d’un coup entendre du bruit; il se leva,
chercha partout, ne trouva personne, mais n’eut pas le courage de
reprendre sa place auprès d’elle qui alors, au comble de la rage,
brisa un vase et dit à Swann: «On ne peut jamais rien faire avec toi!»
Et il resta incertain si elle n’avait pas caché quelqu’un dont elle
avait voulu faire souffrir la jalousie ou allumer les sens."
 :tokens 185
 :processed-at "2025-03-16T02:18:14.798340"
 :entities (list
  (entity :text "Certains" :label "ORG" :start 0 :end 8) (entity :text "Swann" :label "ORG" :start 513 :end 518) (entity :text "Swann:" :label "ORG" :start 956 :end 962)
 )
 :sentences (list
  (sentence :text "Certains soirs elle redevenait tout d’un coup avec lui d’une
gentillesse dont elle l’avertissait durement qu’il devait profiter
tout de suite, sous peine de ne pas la voir se renouveler avant des
années; il fallait rentrer immédiatement chez elle «faire catleya» et
ce désir qu’elle prétendait avoir de lui était si soudain, si
inexplicable, si impérieux, les caresses qu’elle lui prodiguait
ensuite si démonstratives et si insolites, que cette tendresse brutale
et sans vraisemblance faisait autant de chagrin à Swann qu’un mensonge
et qu’une méchanceté" :start 0 :end 554) (sentence :text "Un soir qu’il était ainsi, sur l’ordre qu’elle
lui en avait donné, rentré avec elle, et qu’elle entremêlait ses
baisers de paroles passionnées qui contrastaient avec sa sécheresse
ordinaire, il crut tout d’un coup entendre du bruit; il se leva,
chercha partout, ne trouva personne, mais n’eut pas le courage de
reprendre sa place auprès d’elle qui alors, au comble de la rage,
brisa un vase et dit à Swann: «On ne peut jamais rien faire avec toi!»
Et il resta incertain si elle n’avait pas caché quelqu’un dont elle
avait voulu faire souffrir la jalousie ou allumer les sens" :start 555 :end 1130)
 ))