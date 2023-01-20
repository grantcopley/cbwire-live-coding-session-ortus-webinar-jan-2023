<cfoutput>
    <div>
        <h1>Twitter</h1>
        <textarea wire:model="tweet" class="form-control" placeholder="What's happening?"></textarea>
        <div class="d-flex justify-content-end align-items-center mt-3">
            <span class="me-3 fs-4">#args.tweet.len()#</span>
                
            <button
                wire:click="sendTweet"
                wire:loading.class="btn-secondary"
                wire:loading.attr="disabled"
                type="button"
                <cfif args.computed.isValidTweet()>
                    class="btn btn-primary me-3"
                <cfelse>
                    class="btn btn-secondary"
                    disabled
                </cfif>
            >
                Tweet
                <i wire:loading wire:target="sendTweet" class="fa-solid fa-circle-notch fa-spin"></i>
                <i class="fa-duotone fa-hashtag"></i>
            </button>

        </div>
    </div>
</cfoutput>