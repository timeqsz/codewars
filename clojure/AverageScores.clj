;; Average Scores, get average number in functional way.
;; 7 kyu
;; 04 / 29 / 2023
(defn average [data]
   (int (Math/round (/ (reduce + data) (count data))))
)