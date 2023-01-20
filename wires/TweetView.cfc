component extends="cbwire.models.Component" {

    // Data properties
    data = {
        "tweetObj": {}
    }

    // Lifecycle methods
    function onMount( parameters ) {
        data.tweetObj = parameters.tweetObj;
    }

    // Actions
    function deleteTweet( id ) {

        sleep( 1200 ); // simulate long process

        var tweetIndex = session.tweets.find( function( tweet ) {
            return tweet.id == id;
        } );

        if ( tweetIndex ) {
            session.tweets.deleteAt( tweetIndex );
        }

        emit( "tweetDeleted" );

    }
}