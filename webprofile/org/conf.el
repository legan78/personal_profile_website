;; Select and to C-x C-e                                                                

(require 'ox-publish)                                                                   

(setq org-publish-use-timestamps-flag nil)                                              
                                                                                        
(setq org-publish-project-alist                                                         
      '(                                                                                
        ("org-notes"                                                                    
         :base-directory "~/Documents/personal_profile_website/webprofile/org"                                             
         :base-extension "org"                                                          
         :publishing-directory "~/Documents/personal_profile_website/webprofile/public_html"                                              
         :recursive t                                                                   
         :publishing-function org-html-publish-to-html                                  
         :headline-levels 4           ; Just the default for this project.              
         :auto-preamble t                                                               
         :html-head "<link rel=\"stylesheet\" type=\"text/css\" href=\"css/stylesheet.css\" />"                                                                                 
         :html-head-extra ""                                                            
;;         :html-preamble "<a href=\"index.html\">Home</a> |                              
;;                        <a href=\"publications.html\">Publications</a> |                                        
;;                         <a href=\"projects.html\">Projects</a> |                                                
;;                         <a href=\"contact.html\">Contact</a>"
	 :html-preamble "<a href=\"index.html\">Home</a> |
                         <a href=\"publications.html\">Publications</a> |
                         <a href=\"projects.html\">Projects</a> |
                         <a href=\"contact.html\">Contact</a>"
         )                                                                              
                                                                                        
        ("org-static"                                                                   
         :base-directory "~/Documents/personal_profile_website/webprofile/org"                                             
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf"                             
         :publishing-directory "~/Documents/personal_profile_website/webprofile/public_html"                                              
         :recursive t                                                                   
         :publishing-function org-publish-attachment                                    
         )

        ("webpage" :components ("org-notes" "org-static"))
                                                                                        
        ))
                                                                                        
(setq org-html-postamble 't)                                                            
                                                                                        
(setq org-html-postamble-format                                                         
      '(("en"                                                                           
         "<table style=\"width: 100%%; font-size: 8pt;\"><tbody><tr><td style=\"width: 6    0%%\">Generated with %c</td><td style=\"text-align:right\">%v</td></tr></tbody></table>"    )))                                                                                     
                                                                                        
(setq org-html-validation-link "")


