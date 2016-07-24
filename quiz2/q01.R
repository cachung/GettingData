#
# Register an application with the GitHub API here 
# https://github.com/settings/applications
# Access the API to get information on your instructors repositories 
# Hint: This is the URL you want "https://api.github.com/users/jtleek/repos"
# Use this data to find the time that the datasharing repo was created. What time
# was it created?

# This tutorial may be useful (https://github.com/hadley/httr/blob/master/demo/oauth2-github.r)
# You may also need to run the code in the base R package and not R studio

library(httr)
oauth_endpoints("github")

myapp <- oauth_app("github", "14de289af1b850d0adc5", "7b7e4ec8d308c6447f750bcf0e45afcc006ba514")
#Use http://localhost:1410 as the callback url


# Note: Need to install httpuv
# install.packages("httpuv")
# 3. Get OAuth credentials
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

# 4. Use API
gtoken <- config(token = github_token)
req <- GET("https://api.github.com/rate_limit", gtoken)
stop_for_status(req)
content(req)

# OR:
req <- with_config(gtoken, GET("https://api.github.com/rate_limit"))
stop_for_status(req)
content(req)
# curl -u Access Token:x-oauth-basic "https://api.github.com/users/jtleek/repos"
BROWSE("https://api.github.com/users/jtleek/repos",authenticate("Access Token","x-oauth-basic","basic"))
# 2013-11-07T13:25:07Z



