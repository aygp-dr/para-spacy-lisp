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
 :text "Il élevait son autre main le long de la joue d’Odette; elle le regarda
fixement, de l’air languissant et grave qu’ont les femmes du maître
florentin avec lesquelles il lui avait trouvé de la ressemblance;
amenés au bord des paupières, ses yeux brillants, larges et minces,
comme les leurs, semblaient prêts à se détacher ainsi que deux larmes.
Elle fléchissait le cou comme on leur voit faire à toutes, dans les
scènes païennes comme dans les tableaux religieux. Et, en une attitude
qui sans doute lui était habituelle, qu’elle savait convenable à ces
moments-là et qu’elle faisait attention à ne pas oublier de prendre,
elle semblait avoir besoin de toute sa force pour retenir son visage,
comme si une force invisible l’eût attiré vers Swann. Et ce fut Swann,
qui, avant qu’elle le laissât tomber, comme malgré elle, sur ses
lèvres, le retint un instant, à quelque distance, entre ses deux
mains. Il avait voulu laisser à sa pensée le temps d’accourir, de
reconnaître le rêve qu’elle avait si longtemps caressé et d’assister à
sa réalisation, comme une parente qu’on appelle pour prendre sa part
du succès d’un enfant qu’elle a beaucoup aimé. Peut-être aussi Swann
attachait-il sur ce visage d’Odette non encore possédée, ni même
encore embrassée par lui, qu’il voyait pour la dernière fois, ce
regard avec lequel, un jour de départ, on voudrait emporter un paysage
qu’on va quitter pour toujours."
 :tokens 234
 :processed-at "2025-03-16T02:18:14.382566"
 :entities (list
  (entity :text "Elle" :label "ORG" :start 344 :end 348) (entity :text "Swann." :label "ORG" :start 738 :end 744) (entity :text "Swann," :label "ORG" :start 755 :end 761) (entity :text "Swann" :label "ORG" :start 1161 :end 1166)
 )
 :sentences (list
  (sentence :text "Il élevait son autre main le long de la joue d’Odette; elle le regarda
fixement, de l’air languissant et grave qu’ont les femmes du maître
florentin avec lesquelles il lui avait trouvé de la ressemblance;
amenés au bord des paupières, ses yeux brillants, larges et minces,
comme les leurs, semblaient prêts à se détacher ainsi que deux larmes" :start 0 :end 342) (sentence :text "Elle fléchissait le cou comme on leur voit faire à toutes, dans les
scènes païennes comme dans les tableaux religieux" :start 343 :end 461) (sentence :text "Et, en une attitude
qui sans doute lui était habituelle, qu’elle savait convenable à ces
moments-là et qu’elle faisait attention à ne pas oublier de prendre,
elle semblait avoir besoin de toute sa force pour retenir son visage,
comme si une force invisible l’eût attiré vers Swann" :start 462 :end 743) (sentence :text "Et ce fut Swann,
qui, avant qu’elle le laissât tomber, comme malgré elle, sur ses
lèvres, le retint un instant, à quelque distance, entre ses deux
mains" :start 744 :end 897) (sentence :text "Il avait voulu laisser à sa pensée le temps d’accourir, de
reconnaître le rêve qu’elle avait si longtemps caressé et d’assister à
sa réalisation, comme une parente qu’on appelle pour prendre sa part
du succès d’un enfant qu’elle a beaucoup aimé" :start 898 :end 1143) (sentence :text "Peut-être aussi Swann
attachait-il sur ce visage d’Odette non encore possédée, ni même
encore embrassée par lui, qu’il voyait pour la dernière fois, ce
regard avec lequel, un jour de départ, on voudrait emporter un paysage
qu’on va quitter pour toujours" :start 1144 :end 1398)
 ))