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
  (guix licenses)
  (ice-9 popen)
  (ice-9 rdelim))

(define license (@@ (guix licenses) license))

(define pkc16-license
  (license "pokecrystal16"
    "https://github.com/vulcandth/pokecrystal16/blob/master/README.md#faqs"
    "May you share freely, never taking more than you give"))

(define (extract-git-version)
  (let* 
    ((p (open-input-pipe "git describe --tags --abbrev=8 --dirty='!'"))
    (s (read-line p)))
    (close-pipe p)
    (if (eof-object? s) "?" s)))

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
          #~(modify-phases #$phases
            (delete 'check)))))))

(define* (pokeoctober #:key (debug? #t))
  (let ((git-desc (extract-git-version)))
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
    (arguments (list
      #:make-flags #~(list (string-append "GIT_DESCRIBE=" #$git-desc))
      #:phases
      #~(modify-phases %standard-phases
        (delete 'configure)
        (delete 'check)
        (replace 'build
          (lambda* (#:key make-flags parallel-build? #:allow-other-keys)
            (let* (
              (jobs
                (if parallel-build?
                  (number->string (parallel-job-count))
                  "1"))
              (target
                #$(if debug? "pokeoctober_debug.gbc" "pokeoctober.gbc")))
              (apply invoke "make" "-j" jobs target make-flags))))
        (replace 'install
          (lambda _
            (let (
              (out #$output)
              (base #$(if debug? "pokeoctober_debug" "pokeoctober")))
              (for-each
                (lambda (ext) (install-file (string-append base ext) out))
                (list ".gbc" ".sym" ".map"))))))))
    (home-page "https://github.com/pokeachromicdevs/pokeoctober")
    (license pkc16-license)
    (synopsis "Pokémon October")
    (description "ROM hack of Pokémon Crystal"))))

(pokeoctober #:debug? (getenv "DEBUG"))
