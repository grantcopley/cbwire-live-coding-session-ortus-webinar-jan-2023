<cfoutput>
    <div>
        <cfif not args.computed.tweets().len()>
            <hr>
            <p class="text-center">No tweets</p>
        <cfelse>
            <button
                wire:loading.attr="disabled"
                wire:target="clearTweets"
                wire:click="clearTweets"
                type="button"
                class="btn btn-secondary mb-3">
                Clear Listings
                <i class="fa-duotone fa-trash"></i>
                <i 
                    wire:loading
                    wire:target="clearTweets"
                    class="fa-solid fa-circle-notch fa-spin"></i>
            </button>
            <div class="card">
                <ul class="list-group list-group-flush">
                    <cfloop array="#args.computed.tweets()#" index="tweetObj">
                        #wire( "TweetView", {
                            "tweetObj": tweetObj
                        } )#
                        
                    </cfloop>
                </ul>
            </div>
        </cfif>
    </div>
</cfoutput>