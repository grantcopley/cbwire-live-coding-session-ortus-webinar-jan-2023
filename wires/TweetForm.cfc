component extends="cbwire.models.Component" {

    // Data properties
    data = {
        "tweet": "" // default value
    };

    // Computed properties
    computed = {
        "isValidTweet": function() {
            return data.tweet.len() ? true : false;
        }
    }

    // Lifecycle methods
    function onMount() {

        if ( !session.keyExists( "tweets" ) ) {
            session.tweets = [];
        }
    }

    // Actions
    function sendTweet() {

        sleep( 1200 ); // simulate long process

        session.tweets.append( {
            "id": createUUID(),
            "timestamp": now(),
            "tweet": data.tweet
        } );

        data.tweet = "";

        emit( "tweetSent" );
    }


}