(setq peut-publier-site-name "peut-publier demo")
(setq peut-publier-root-directory "~/Projects/excalamus.github.io/")
(setq peut-publier-src-directory
      (concat peut-publier-root-directory "src/"))
(setq peut-publier-publish-directory
      (concat peut-publier-root-directory "publish/"))
(setq peut-publier-about-img "https://thispersondoesnotexist.com/image")
(setq peut-publier-about-img-alt "Headshot of a person who does not exist.")

(setq peut-publier-body-preamble
  (concat
   "   <div id=\"preamble\" class=\"status\">\n"
   "      <nav>\n"
   "         <div class=\"flexcontainer\">\n"
   "            <div class=\"smallitem\">\n"
   "               <ul class=\"inline-list\">\n"
   "                  <li><a href=\"index.html\" id=\"website\">" peut-publier-site-name "</a></li>\n"
   "               </ul>\n"
   "            </div>\n"
   "            <div class=\"bigitem\">\n"
   "               <ul class=\"inline-list\">\n"
   "                  <li><a href=\"about.html\">About</a></li>\n"
   "               </ul>\n"
   "            </div>\n"
   "         </div>\n"
   "      </nav>\n"
   "      <hr/>\n"
   "   </div>\n"))

(defun peut-publier-demo-html-page-title (page-path)
  "Create HTML title for PAGE-PATH."
  (concat
   "      <title> peut-publier: " (peut-publier-alist-get "TITLE" (peut-publier-get-meta-data-alist page-path)) "</title>\n"))

(setq peut-publier-variable-head #'peut-publier-demo-html-page-title)
