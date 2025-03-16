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
 :text "--Tu as bien tort de te figurer que je t’en voudrais le moins du monde,
Odette, lui dit-il avec une douceur persuasive et menteuse. Je ne te
parle jamais que de ce que je sais, et j’en sais toujours bien plus
long que je ne dis. Mais toi seule peux adoucir par ton aveu ce qui me
fait te haïr tant que cela ne m’a été dénoncé que par d’autres. Ma
colère contre toi ne vient pas de tes actions, je te pardonne tout
puisque je t’aime, mais de ta fausseté, de ta fausseté absurde qui te
fait persévérer à nier des choses que je sais. Mais comment veux-tu
que je puisse continuer à t’aimer, quand je te vois me soutenir, me
jurer une chose que je sais fausse. Odette, ne prolonge pas cet
instant qui est une torture pour nous deux. Si tu le veux ce sera fini
dans une seconde, tu seras pour toujours délivrée. Dis-moi sur ta
médaille, si oui ou non, tu as jamais fais ces choses."
 :tokens 171
 :processed-at "2025-03-16T02:18:14.776515"
 :entities (list
  (entity :text "--Tu" :label "ORG" :start 0 :end 4) (entity :text "Odette," :label "ORG" :start 72 :end 79) (entity :text "Mais" :label "ORG" :start 229 :end 233) (entity :text "Mais" :label "ORG" :start 531 :end 535) (entity :text "Odette," :label "ORG" :start 656 :end 663)
 )
 :sentences (list
  (sentence :text "--Tu as bien tort de te figurer que je t’en voudrais le moins du monde,
Odette, lui dit-il avec une douceur persuasive et menteuse" :start 0 :end 130) (sentence :text "Je ne te
parle jamais que de ce que je sais, et j’en sais toujours bien plus
long que je ne dis" :start 131 :end 227) (sentence :text "Mais toi seule peux adoucir par ton aveu ce qui me
fait te haïr tant que cela ne m’a été dénoncé que par d’autres" :start 228 :end 342) (sentence :text "Ma
colère contre toi ne vient pas de tes actions, je te pardonne tout
puisque je t’aime, mais de ta fausseté, de ta fausseté absurde qui te
fait persévérer à nier des choses que je sais" :start 343 :end 529) (sentence :text "Mais comment veux-tu
que je puisse continuer à t’aimer, quand je te vois me soutenir, me
jurer une chose que je sais fausse" :start 530 :end 654) (sentence :text "Odette, ne prolonge pas cet
instant qui est une torture pour nous deux" :start 655 :end 726) (sentence :text "Si tu le veux ce sera fini
dans une seconde, tu seras pour toujours délivrée" :start 727 :end 804) (sentence :text "Dis-moi sur ta
médaille, si oui ou non, tu as jamais fais ces choses" :start 805 :end 874)
 ))