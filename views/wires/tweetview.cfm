<cfoutput>
    <li class="list-group-item" wire:key="#args.tweetObj.id#">
        <div class="d-flex justify-content-between align-items-center">
            <div>
                <span class="fw-bold">#args.tweetObj.tweet#</span>
                <div>
                    #dateTimeFormat( args.tweetObj.timestamp, "mm/dd/yyyy hh:mm TT" )#
                </div>
            </div>
            <a
                wire:loading.attr="disabled"
                wire:target="deleteTweet"
                wire:click.prevent="deleteTweet( '#args.tweetObj.id#' )"
                href=""
                class="text-secondary">
                <i 
                    wire:loading
                    class="fa-solid fa-circle-notch fa-spin"></i>
                
                <i
                    wire:loading.remove
                    class="fa-duotone fa-trash"></i>
            </a>
        </div>
    </li>
</cfoutput>