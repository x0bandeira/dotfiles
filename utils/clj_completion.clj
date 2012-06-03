; Generates clojure completion file
; from: http://en.wikibooks.org/wiki/Clojure_Programming/Getting_Started#Enhancing_the_Environment

(def completions (mapcat (comp keys ns-publics) (all-ns)))
 
(with-open [f (java.io.BufferedWriter. (java.io.FileWriter. (str (System/getenv "HOME") "/.clj_completions")))]
    (.write f (apply str (interpose \newline completions))))
