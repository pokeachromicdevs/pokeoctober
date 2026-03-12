(use-modules
  (gnu packages assembly)        ; rgbds
  (gnu packages base)            ; which
  (gnu packages version-control) ; git
  (guix packages)
  (guix git-download)
  (guix git)
  (guix utils)
  (guix gexp)
  (guix build-system gnu)
  (guix licenses))

(define license (@@ (guix licenses) license))

(define pkc16-license
  (license "pokecrystal16"
    "https://github.com/vulcandth/pokecrystal16/blob/master/README.md#faqs"
    "May you share freely, never taking more than you give"))

(define rgbds-0.4.1
  (package (inherit rgbds) (version "0.4.1")
    (source 
      (origin (method git-fetch)
        (uri (git-reference
            (url "https://github.com/gbdev/rgbds")
            (commit (string-append "v" version))))
        (sha256
          (base32 "05djzl3h18zg2z5p2a881wjbmgikzkhf67cgk00frhw4v05sq0lf"))))
    (arguments
      (substitute-keyword-arguments
        (package-arguments rgbds)
        ((#:phases phases)
          `(modify-phases ,phases
            (delete 'check)))))))

(define* (pokeoctober #:key (debug? #t))
  (package
    (name "pokeoctober")
    (version "demo-2")
    (native-inputs (list
      rgbds-0.4.1
      which
      git))
    (source 
      (local-file ".." "src"
        #:recursive? #t
        #:select? (git-predicate "..")))
    (build-system gnu-build-system)
    (arguments
      `(#:phases (modify-phases %standard-phases
        (delete 'configure)
        (delete 'check)
        (replace 'build
          (lambda* (#:key parallel-build? #:allow-other-keys)
            (let* (
              (jobs
                (if parallel-build?
                  (string-append "-j" (number->string (parallel-job-count)))
                  "")))
              (invoke "make" jobs ,(if debug? "pokeoctober_debug.gbc" "pokeoctober.gbc")))))
        (replace 'install
          (lambda* (#:key outputs #:allow-other-keys)
            (let* ((out (assoc-ref outputs "out")))
              ,@(if debug? '(
                (install-file "pokeoctober_debug.gbc" out)
                (install-file "pokeoctober_debug.sym" out)
                (install-file "pokeoctober_debug.map" out)
              ) '(
                (install-file "pokeoctober.gbc" out)
                (install-file "pokeoctober.sym" out)
                (install-file "pokeoctober.map" out)
              ))))))))
    (home-page "https://github.com/pokeachromicdevs/pokeoctober")
    (license pkc16-license)
    (synopsis "Pokémon October")
    (description "ROM hack of Pokémon Crystal")))

(pokeoctober #:debug? (getenv "DEBUG"))