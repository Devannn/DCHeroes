<?php 
include 'inc/database.php';
include 'inc/functions.php';

$teams = getTeams();

if($_SERVER['REQUEST_METHOD'] == "POST")
{
    myDump($_POST, 1);

    // define the insert SQL

    // run the SQL
}

// check if there is a URL parameter teamId
// then grab charcters from that team
if(isset($_GET['teamId']))
{
    $teamId = $_GET['teamId'];
    $characters = getCharacters($teamId);
}
else
{
    // grab 'm all
    $characters = getCharacters();
}

if(isset($_GET['characterId']))
{
$hero = getCharacter($_GET['characterId']);
}
else
{
    $hero = getCharacter();
}

if(isset($_GET['characterId']))
{
    $characterId = $_GET['characterId'];
    $playerPowers = getPowers($characterId);
}
else
{
    $characterId = 1;
    $playerPowers = getPowers($characterId);
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="description" content="DC Heroes">
    <meta name="keywords" content="HTML, CSS, PHP">
    <meta name="author" content="Devan Janssen">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="shortcut icon" type="image/png" href="img/favicon.png">
	<title>DC Heroes - Homepage</title>
</head>
<body>
    <div class="main-container">
        <header class="header">
            <a href="index.php"><img src="img/dc-logo.png"> <h1>HEROES</h1></a>
            <!-- <div class="buttons">
                <a href="login.php"><button>LOG IN</button></a>
                <a href="signup.php"><button>SIGN UP</button></a>
            </div> -->
        </header>
        <div class="left-container">
            <nav>
                <p>Teams</p>
                <ul>
                <?php
                foreach($teams as $key => $team)
                {
                    ?>
                    <!-- Displays all the teams -->
                    <li><img src="<?php echo $team['teamImage'];?>"><a class="teamId-<?php echo $team['teamId'];?>" href="index.php?teamId=<?php echo $team['teamId'];?>"><?php echo $team['teamName'];?> (<?php echo $team['teamId'];?>)</a></li>
                    <?php
                }
                ?>
                </ul>
            </nav>
        </div>
        <div class="middle-container">
        <p>Players</p>
        <?php
            foreach($characters as $key => $character)
            {
        ?>
            <div class="character">
                <div class="character-image"><img src="<?php echo $character['characterImage'];?>"></div>
                <div class="character-header"><?php echo $character['characterName'];?></div>
                <div class="character-text"><div class="character-text-text"><?php echo $character['characterDescription'];?></div></div>
                <div class="character-button">
                <a class="buttonlink" href="index.php?teamId=<?php echo $character['teamId'];?>&characterId=<?php echo $character['characterId'];?>">More info!</a>
                </div>
            </div>
        <?php
            }
        ?>
        </div>
        <div class="right-container">
        <!-- This is the whole hero container -->
            <div class="hero-container">
                <div class="hero-banner">
                    <div class="hero-background">
                        <img src="<?php echo $hero['characterBackground'];?>">
                    </div>
                    <div class="hero-logo">
                        <img src="<?php echo $hero['characterImageCloseup'];?>">
                    </div>
                    <div class="hero-info-container">
                        <h1>INFO</h1>
                        <div class="hero-info-text"><?php echo $hero['characterDescription'];?></div>
                    </div>
                    <div class="hero-powers-container">
                        <h1>POWERS</h1>
                        <ul>
                            <?php
                                foreach($playerPowers as $key=>$powers)
                                {
                                echo '<li>' . $powers['propertyText'] . '</li>';
                                }
                            ?>
                        </ul>
                    </div>
                </div>
            </div> 
                <div class="review-container">
                    <form action="index.php" method="POST">
                        <textarea id="review-textarea" name="reviewText" placeholder="Fill in your review" required="required"></textarea>
                        <input type="hidden" name="characterId" value="<?php echo $hero['characterId'];?>">
                        <input type="submit" name="submit" value="Submit">
                    </form>
                </div>
            </div>
        <?php include 'inc/footer.php';?>
    </div>
</body>
</html>