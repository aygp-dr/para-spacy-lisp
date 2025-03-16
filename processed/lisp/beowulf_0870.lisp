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
 :text "--«Mais non, pourquoi?» lui demanda-t-elle avec une extrême vivacité,
soit pour ne pas avoir l’air de savoir que c’est parce qu’elle était
une des plus grandes dames de France, soit pour avoir le plaisir de
l’entendre dire au général. «Pourquoi? Qu’en savez-vous? Cela leur
serait peut-être tout ce qu’il y a de plus désagréable. Moi je ne sais
pas, mais si j’en juge par moi, cela m’ennuie déjà tant de voir les
personnes que je connais, je crois que s’il fallait voir des gens que
je ne connais pas, «même héroïques», je deviendrais folle. D’ailleurs,
voyons, sauf lorsqu’il s’agit de vieux amis comme vous qu’on connaît
sans cela, je ne sais pas si l’héroïsme serait d’un format très
portatif dans le monde. Ça m’ennuie déjà souvent de donner des dîners,
mais s’il fallait offrir le bras à Spartacus pour aller à table... Non
vraiment, ce ne serait jamais à Vercingétorix que je ferais signe
comme quatorzième. Je sens que je le réserverais pour les grandes
soirées. Et comme je n’en donne pas...»"
 :tokens 172
 :processed-at "2025-03-16T02:18:14.704442"
 :entities (list
  (entity :text "--«Mais" :label "ORG" :start 0 :end 7) (entity :text "France," :label "ORG" :start 169 :end 176) (entity :text "«Pourquoi?" :label "ORG" :start 235 :end 245) (entity :text "Cela" :label "ORG" :start 264 :end 268) (entity :text "Spartacus" :label "ORG" :start 793 :end 802) (entity :text "Vercingétorix" :label "ORG" :start 861 :end 874)
 )
 :sentences (list
  (sentence :text "--«Mais non, pourquoi?» lui demanda-t-elle avec une extrême vivacité,
soit pour ne pas avoir l’air de savoir que c’est parce qu’elle était
une des plus grandes dames de France, soit pour avoir le plaisir de
l’entendre dire au général" :start 0 :end 233) (sentence :text "«Pourquoi? Qu’en savez-vous? Cela leur
serait peut-être tout ce qu’il y a de plus désagréable" :start 234 :end 328) (sentence :text "Moi je ne sais
pas, mais si j’en juge par moi, cela m’ennuie déjà tant de voir les
personnes que je connais, je crois que s’il fallait voir des gens que
je ne connais pas, «même héroïques», je deviendrais folle" :start 329 :end 540) (sentence :text "D’ailleurs,
voyons, sauf lorsqu’il s’agit de vieux amis comme vous qu’on connaît
sans cela, je ne sais pas si l’héroïsme serait d’un format très
portatif dans le monde" :start 541 :end 709) (sentence :text "Ça m’ennuie déjà souvent de donner des dîners,
mais s’il fallait offrir le bras à Spartacus pour aller à table" :start 710 :end 821) (sentence :text "Non
vraiment, ce ne serait jamais à Vercingétorix que je ferais signe
comme quatorzième" :start 824 :end 912) (sentence :text "Je sens que je le réserverais pour les grandes
soirées" :start 913 :end 968) (sentence :text "Et comme je n’en donne pas" :start 969 :end 996) (sentence :text "»" :start 22 :end 23)
 ))