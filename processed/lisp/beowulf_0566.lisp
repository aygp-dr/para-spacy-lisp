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
 :text "Sauf en lui demandant la petite phrase de Vinteuil au lieu de la Valse
des Roses, Swann ne cherchait pas à lui faire jouer plutôt des choses
qu’il aimât, et pas plus en musique qu’en littérature, à corriger son
mauvais goût. Il se rendait bien compte qu’elle n’était pas
intelligente. En lui disant qu’elle aimerait tant qu’il lui parlât des
grands poètes, elle s’était imaginé qu’elle allait connaître tout de
suite des couplets héroïques et romanesques dans le genre de ceux du
vicomte de Borelli, en plus émouvant encore. Pour Ver Meer de Delft,
elle lui demanda s’il avait souffert par une femme, si c’était une
femme qui l’avait inspiré, et Swann lui ayant avoué qu’on n’en savait
rien, elle s’était désintéressée de ce peintre. Elle disait souvent:
«Je crois bien, la poésie, naturellement, il n’y aurait rien de plus
beau si c’était vrai, si les poètes pensaient tout ce qu’ils disent.
Mais bien souvent, il n’y a pas plus intéressé que ces gens-là. J’en
sais quelque chose, j’avais une amie qui a aimé une espèce de poète.
Dans ses vers il ne parlait que de l’amour, du ciel, des étoiles. Ah!
ce qu’elle a été refaite! Il lui a croqué plus de trois cent mille
francs.» Si alors Swann cherchait à lui apprendre en quoi consistait
la beauté artistique, comment il fallait admirer les vers ou les
tableaux, au bout d’un instant, elle cessait d’écouter, disant:
«Oui... je ne me figurais pas que c’était comme cela.» Et il sentait
qu’elle éprouvait une telle déception qu’il préférait mentir en lui
disant que tout cela n’était rien, que ce n’était encore que des
bagatelles, qu’il n’avait pas le temps d’aborder le fond, qu’il y
avait autre chose. Mais elle lui disait vivement: «Autre chose?
quoi?... Dis-le alors», mais il ne le disait pas, sachant combien cela
lui paraîtrait mince et différent de ce qu’elle espérait, moins
sensationnel et moins touchant, et craignant que, désillusionnée de
l’art, elle ne le fût en même temps de l’amour."
 :tokens 334
 :processed-at "2025-03-16T02:18:14.391814"
 :entities (list
  (entity :text "Sauf" :label "ORG" :start 0 :end 4) (entity :text "Vinteuil" :label "ORG" :start 42 :end 50) (entity :text "Valse" :label "ORG" :start 65 :end 70) (entity :text "Roses," :label "ORG" :start 75 :end 81) (entity :text "Swann" :label "ORG" :start 82 :end 87) (entity :text "Borelli," :label "ORG" :start 491 :end 499) (entity :text "Pour" :label "ORG" :start 525 :end 529) (entity :text "Meer" :label "ORG" :start 534 :end 538) (entity :text "Delft," :label "ORG" :start 542 :end 548) (entity :text "Swann" :label "ORG" :start 646 :end 651) (entity :text "Elle" :label "ORG" :start 734 :end 738) (entity :text "Mais" :label "ORG" :start 893 :end 897) (entity :text "Dans" :label "ORG" :start 1031 :end 1035) (entity :text "Swann" :label "ORG" :start 1186 :end 1191) (entity :text "«Oui..." :label "ORG" :start 1366 :end 1373) (entity :text "Mais" :label "ORG" :start 1653 :end 1657) (entity :text "«Autre" :label "ORG" :start 1684 :end 1690)
 )
 :sentences (list
  (sentence :text "Sauf en lui demandant la petite phrase de Vinteuil au lieu de la Valse
des Roses, Swann ne cherchait pas à lui faire jouer plutôt des choses
qu’il aimât, et pas plus en musique qu’en littérature, à corriger son
mauvais goût" :start 0 :end 223) (sentence :text "Il se rendait bien compte qu’elle n’était pas
intelligente" :start 224 :end 283) (sentence :text "En lui disant qu’elle aimerait tant qu’il lui parlât des
grands poètes, elle s’était imaginé qu’elle allait connaître tout de
suite des couplets héroïques et romanesques dans le genre de ceux du
vicomte de Borelli, en plus émouvant encore" :start 284 :end 523) (sentence :text "Pour Ver Meer de Delft,
elle lui demanda s’il avait souffert par une femme, si c’était une
femme qui l’avait inspiré, et Swann lui ayant avoué qu’on n’en savait
rien, elle s’était désintéressée de ce peintre" :start 524 :end 732) (sentence :text "Elle disait souvent:
«Je crois bien, la poésie, naturellement, il n’y aurait rien de plus
beau si c’était vrai, si les poètes pensaient tout ce qu’ils disent" :start 733 :end 891) (sentence :text "Mais bien souvent, il n’y a pas plus intéressé que ces gens-là" :start 892 :end 955) (sentence :text "J’en
sais quelque chose, j’avais une amie qui a aimé une espèce de poète" :start 956 :end 1029) (sentence :text "Dans ses vers il ne parlait que de l’amour, du ciel, des étoiles" :start 1030 :end 1095) (sentence :text "Ah!
ce qu’elle a été refaite! Il lui a croqué plus de trois cent mille
francs" :start 1096 :end 1174) (sentence :text "» Si alors Swann cherchait à lui apprendre en quoi consistait
la beauté artistique, comment il fallait admirer les vers ou les
tableaux, au bout d’un instant, elle cessait d’écouter, disant:
«Oui" :start 1175 :end 1370) (sentence :text "je ne me figurais pas que c’était comme cela" :start 1373 :end 1418) (sentence :text "» Et il sentait
qu’elle éprouvait une telle déception qu’il préférait mentir en lui
disant que tout cela n’était rien, que ce n’était encore que des
bagatelles, qu’il n’avait pas le temps d’aborder le fond, qu’il y
avait autre chose" :start 1419 :end 1651) (sentence :text "Mais elle lui disait vivement: «Autre chose?
quoi?" :start 1652 :end 1703) (sentence :text "Dis-le alors», mais il ne le disait pas, sachant combien cela
lui paraîtrait mince et différent de ce qu’elle espérait, moins
sensationnel et moins touchant, et craignant que, désillusionnée de
l’art, elle ne le fût en même temps de l’amour" :start 1706 :end 1947)
 ))