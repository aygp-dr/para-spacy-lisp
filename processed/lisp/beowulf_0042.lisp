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
 :text "Il n’en fut pas ainsi. Mon père me refusait constamment des
permissions qui m’avaient été consenties dans les pactes plus larges
octroyés par ma mère et ma grand’mère parce qu’il ne se souciait pas
des «principes» et qu’il n’y avait pas avec lui de «Droit des gens».
Pour une raison toute contingente, ou même sans raison, il me
supprimait au dernier moment telle promenade si habituelle, si
consacrée, qu’on ne pouvait m’en priver sans parjure, ou bien, comme
il avait encore fait ce soir, longtemps avant l’heure rituelle, il me
disait: «Allons, monte te coucher, pas d’explication!» Mais aussi,
parce qu’il n’avait pas de principes (dans le sens de ma grand’mère),
il n’avait pas à proprement parler d’intransigeance. Il me regarda un
instant d’un air étonné et fâché, puis dès que maman lui eut expliqué
en quelques mots embarrassés ce qui était arrivé, il lui dit: «Mais va
donc avec lui, puisque tu disais justement que tu n’as pas envie de
dormir, reste un peu dans sa chambre, moi je n’ai besoin de rien.»
«Mais, mon ami, répondit timidement ma mère, que j’aie envie ou non de
dormir, ne change rien à la chose, on ne peut pas habituer cet
enfant...» «Mais il ne s’agit pas d’habituer, dit mon père en haussant
les épaules, tu vois bien que ce petit a du chagrin, il a l’air
désolé, cet enfant; voyons, nous ne sommes pas des bourreaux! Quand tu
l’auras rendu malade, tu seras bien avancée! Puisqu’il y a deux lits
dans sa chambre, dis donc à Françoise de te préparer le grand lit et
couche pour cette nuit auprès de lui. Allons, bonsoir, moi qui ne suis
pas si nerveux que vous, je vais me coucher.»"
 :tokens 286
 :processed-at "2025-03-16T02:18:13.825514"
 :entities (list
  (entity :text "«Droit" :label "ORG" :start 249 :end 255) (entity :text "Pour" :label "ORG" :start 267 :end 271) (entity :text "«Allons," :label "ORG" :start 539 :end 547) (entity :text "Mais" :label "ORG" :start 586 :end 590) (entity :text "«Mais" :label "ORG" :start 870 :end 875) (entity :text "«Mais," :label "ORG" :start 1014 :end 1020) (entity :text "«Mais" :label "ORG" :start 1159 :end 1164) (entity :text "Quand" :label "ORG" :start 1345 :end 1350) (entity :text "Françoise" :label "ORG" :start 1451 :end 1460)
 )
 :sentences (list
  (sentence :text "Il n’en fut pas ainsi" :start 0 :end 21) (sentence :text "Mon père me refusait constamment des
permissions qui m’avaient été consenties dans les pactes plus larges
octroyés par ma mère et ma grand’mère parce qu’il ne se souciait pas
des «principes» et qu’il n’y avait pas avec lui de «Droit des gens»" :start 22 :end 265) (sentence :text "Pour une raison toute contingente, ou même sans raison, il me
supprimait au dernier moment telle promenade si habituelle, si
consacrée, qu’on ne pouvait m’en priver sans parjure, ou bien, comme
il avait encore fait ce soir, longtemps avant l’heure rituelle, il me
disait: «Allons, monte te coucher, pas d’explication!» Mais aussi,
parce qu’il n’avait pas de principes (dans le sens de ma grand’mère),
il n’avait pas à proprement parler d’intransigeance" :start 266 :end 719) (sentence :text "Il me regarda un
instant d’un air étonné et fâché, puis dès que maman lui eut expliqué
en quelques mots embarrassés ce qui était arrivé, il lui dit: «Mais va
donc avec lui, puisque tu disais justement que tu n’as pas envie de
dormir, reste un peu dans sa chambre, moi je n’ai besoin de rien" :start 720 :end 1011) (sentence :text "»
«Mais, mon ami, répondit timidement ma mère, que j’aie envie ou non de
dormir, ne change rien à la chose, on ne peut pas habituer cet
enfant" :start 1012 :end 1154) (sentence :text "» «Mais il ne s’agit pas d’habituer, dit mon père en haussant
les épaules, tu vois bien que ce petit a du chagrin, il a l’air
désolé, cet enfant; voyons, nous ne sommes pas des bourreaux! Quand tu
l’auras rendu malade, tu seras bien avancée! Puisqu’il y a deux lits
dans sa chambre, dis donc à Françoise de te préparer le grand lit et
couche pour cette nuit auprès de lui" :start 1157 :end 1528) (sentence :text "Allons, bonsoir, moi qui ne suis
pas si nerveux que vous, je vais me coucher" :start 1529 :end 1606) (sentence :text "»" :start 212 :end 213)
 ))