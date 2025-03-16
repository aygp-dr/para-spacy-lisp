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
 :text "--«Non, dit-elle, cher, vous savez que je suis habituée à celles que le
grand-duc m’envoie. Je lui ai dit que vous en étiez jaloux.» Et elle
tira d’un étui des cigarettes couvertes d’inscriptions étrangères et
dorées. «Mais si, reprit-elle tout d’un coup, je dois avoir rencontré
chez vous le père de ce jeune homme. N’est-ce pas votre neveu? Comment
ai-je pu l’oublier? Il a été tellement bon, tellement exquis pour moi,
dit-elle d’un air modeste et sensible.» Mais en pensant à ce qu’avait
pu être l’accueil rude qu’elle disait avoir trouvé exquis, de mon
père, moi qui connaissais sa réserve et sa froideur, j’étais gêné,
comme par une indélicatesse qu’il aurait commise, de cette inégalité
entre la reconnaissance excessive qui lui était accordée et son
amabilité insuffisante. Il m’a semblé plus tard que c’était un des
côtés touchants du rôle de ces femmes oisives et studieuses qu’elles
consacrent leur générosité, leur talent, un rêve disponible de beauté
sentimentale--car, comme les artistes, elles ne le réalisent pas, ne le
font pas entrer dans les cadres de l’existence commune,--et un or qui
leur coûte peu, à enrichir d’un sertissage précieux et fin la vie
fruste et mal dégrossie des hommes. Comme celle-ci, dans le fumoir où
mon oncle était en vareuse pour la recevoir, répandait son corps si
doux, sa robe de soie rose, ses perles, l’élégance qui émane de
l’amitié d’un grand-duc, de même elle avait pris quelque propos
insignifiant de mon père, elle l’avait travaillé avec délicatesse, lui
avait donné un tour, une appellation précieuse et y enchâssant un de
ses regards d’une si belle eau, nuancé d’humilité et de gratitude,
elle le rendait changé en un bijou artiste, en quelque chose de «tout
à fait exquis»."
 :tokens 287
 :processed-at "2025-03-16T02:18:13.932501"
 :entities (list
  (entity :text "--«Non," :label "ORG" :start 0 :end 7) (entity :text "«Mais" :label "ORG" :start 218 :end 223) (entity :text "Comment" :label "ORG" :start 343 :end 350) (entity :text "Mais" :label "ORG" :start 462 :end 466) (entity :text "Comme" :label "ORG" :start 1208 :end 1213)
 )
 :sentences (list
  (sentence :text "--«Non, dit-elle, cher, vous savez que je suis habituée à celles que le
grand-duc m’envoie" :start 0 :end 90) (sentence :text "Je lui ai dit que vous en étiez jaloux" :start 91 :end 130) (sentence :text "» Et elle
tira d’un étui des cigarettes couvertes d’inscriptions étrangères et
dorées" :start 131 :end 216) (sentence :text "«Mais si, reprit-elle tout d’un coup, je dois avoir rencontré
chez vous le père de ce jeune homme" :start 217 :end 315) (sentence :text "N’est-ce pas votre neveu? Comment
ai-je pu l’oublier? Il a été tellement bon, tellement exquis pour moi,
dit-elle d’un air modeste et sensible" :start 316 :end 459) (sentence :text "» Mais en pensant à ce qu’avait
pu être l’accueil rude qu’elle disait avoir trouvé exquis, de mon
père, moi qui connaissais sa réserve et sa froideur, j’étais gêné,
comme par une indélicatesse qu’il aurait commise, de cette inégalité
entre la reconnaissance excessive qui lui était accordée et son
amabilité insuffisante" :start 460 :end 780) (sentence :text "Il m’a semblé plus tard que c’était un des
côtés touchants du rôle de ces femmes oisives et studieuses qu’elles
consacrent leur générosité, leur talent, un rêve disponible de beauté
sentimentale--car, comme les artistes, elles ne le réalisent pas, ne le
font pas entrer dans les cadres de l’existence commune,--et un or qui
leur coûte peu, à enrichir d’un sertissage précieux et fin la vie
fruste et mal dégrossie des hommes" :start 781 :end 1206) (sentence :text "Comme celle-ci, dans le fumoir où
mon oncle était en vareuse pour la recevoir, répandait son corps si
doux, sa robe de soie rose, ses perles, l’élégance qui émane de
l’amitié d’un grand-duc, de même elle avait pris quelque propos
insignifiant de mon père, elle l’avait travaillé avec délicatesse, lui
avait donné un tour, une appellation précieuse et y enchâssant un de
ses regards d’une si belle eau, nuancé d’humilité et de gratitude,
elle le rendait changé en un bijou artiste, en quelque chose de «tout
à fait exquis»" :start 1207 :end 1729)
 ))