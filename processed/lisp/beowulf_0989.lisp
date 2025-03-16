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
 :text "Et il y eut un jour aussi où elle me dit: «Vous savez, vous pouvez
m’appeler Gilberte, en tous cas moi, je vous appellerai par votre nom
de baptême. C’est trop gênant.» Pourtant elle continua encore un
moment à se contenter de me dire «vous» et comme je le lui faisais
remarquer, elle sourit, et composant, construisant une phrase comme
celles qui dans les grammaires étrangères n’ont d’autre but que de
nous faire employer un mot nouveau, elle la termina par mon petit nom.
Et me souvenant plus tard de ce que j’avais senti alors, j’y ai démêlé
l’impression d’avoir été tenu un instant dans sa bouche, moi-même, nu,
sans plus aucune des modalités sociales qui appartenaient aussi, soit
à ses autres camarades, soit, quand elle disait mon nom de famille, à
mes parents, et dont ses lèvres--en l’effort qu’elle faisait, un peu
comme son père, pour articuler les mots qu’elle voulait mettre en
valeur--eurent l’air de me dépouiller, de me dévêtir, comme de sa peau
un fruit dont on ne peut avaler que la pulpe, tandis que son regard,
se mettant au même degré nouveau d’intimité que prenait sa parole,
m’atteignait aussi plus directement, non sans témoigner la conscience,
le plaisir et jusque la gratitude qu’il en avait, en se faisant
accompagner d’un sourire."
 :tokens 215
 :processed-at "2025-03-16T02:18:14.855148"
 :entities (list
  (entity :text "«Vous" :label "ORG" :start 42 :end 47) (entity :text "Gilberte," :label "ORG" :start 77 :end 86) (entity :text "Pourtant" :label "ORG" :start 169 :end 177)
 )
 :sentences (list
  (sentence :text "Et il y eut un jour aussi où elle me dit: «Vous savez, vous pouvez
m’appeler Gilberte, en tous cas moi, je vous appellerai par votre nom
de baptême" :start 0 :end 147) (sentence :text "C’est trop gênant" :start 148 :end 166) (sentence :text "» Pourtant elle continua encore un
moment à se contenter de me dire «vous» et comme je le lui faisais
remarquer, elle sourit, et composant, construisant une phrase comme
celles qui dans les grammaires étrangères n’ont d’autre but que de
nous faire employer un mot nouveau, elle la termina par mon petit nom" :start 167 :end 473) (sentence :text "Et me souvenant plus tard de ce que j’avais senti alors, j’y ai démêlé
l’impression d’avoir été tenu un instant dans sa bouche, moi-même, nu,
sans plus aucune des modalités sociales qui appartenaient aussi, soit
à ses autres camarades, soit, quand elle disait mon nom de famille, à
mes parents, et dont ses lèvres--en l’effort qu’elle faisait, un peu
comme son père, pour articuler les mots qu’elle voulait mettre en
valeur--eurent l’air de me dépouiller, de me dévêtir, comme de sa peau
un fruit dont on ne peut avaler que la pulpe, tandis que son regard,
se mettant au même degré nouveau d’intimité que prenait sa parole,
m’atteignait aussi plus directement, non sans témoigner la conscience,
le plaisir et jusque la gratitude qu’il en avait, en se faisant
accompagner d’un sourire" :start 474 :end 1258)
 ))