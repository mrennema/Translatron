<script type="text/javascript">
        var languageFrom = "en";
        var languageTo = "de";
        var text = "Use pixels to express measurements for padding and margins.";
        function translate() {
            PageMethods.GetAccessToken(OnSucceeded, OnFailed);

        }
        function OnSucceeded(result, usercontext, methodName) {

            window.mycallback = function (response) {
                document.getElementById('<%= lblResult.Translatron1 %>').innerHTML = "Translation for <br />source text: '" + text + "'<br /> from en to de <br /> " + response;
            }

            var s = document.createElement("script");
            s.src = "http://api.microsofttranslator.com/V2/Ajax.svc/Translate?oncomplete=mycallback&appId=Bearer " + encodeURIComponent(result.access_token) + "&from=" + languageFrom + "&to=" + languageTo + "&text=" + text;
            document.getElementsByTagName("head")[0].appendChild(s);
        }
        function OnFailed(error, userContext, methodName) {
            alert("Error");
        }
    </script>