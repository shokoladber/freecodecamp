#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# Erase previous tables games and teams
TRUNCATE="$($PSQL "truncate table games, teams")"

# Read data from games_test.csv into teams table
cat ./games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  # Get ID from WINNER/OPPONENT
  WINNER_ID="$($PSQL "select team_id from teams where name='$WINNER'")"
  OPPONENT_ID="$($PSQL "select team_id from teams where name='$OPPONENT'")"

  if [[ $YEAR != 'year' ]]
    then
    # Check if WINNER exists in teams
    if [[ -z $WINNER_ID ]]
     then
     # Insert WINNER into teams
     INSERT_WINNER="$($PSQL "insert into teams(name) values('$WINNER')")"

      # Log inserts
      if [[ $INSERT_WINNER='INSERT 0 1' ]]
        then
        echo "Inserted into teams:  $WINNER"
      fi
    fi

    # Check in OPPONENT exists in teams

    if [[ -z $OPPONENT_ID ]]
     then
     # Insert OPPONENT into teams
     INSERT_OPPONENT="$($PSQL "insert into teams(name) values('$OPPONENT')")"

     # Log inserts
      if [[ $INSERT_OPPONENT='INSERT 0 1' ]]
        then
        echo "Inserted into teams:  $OPPONENT"
      fi
    fi

  fi
done

cat ./games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != 'year' ]]
    then
    # Get ID from WINNER/OPPONENT
    WINNER_ID="$($PSQL "select team_id from teams where name='$WINNER'")"
    OPPONENT_ID="$($PSQL "select team_id from teams where name='$OPPONENT'")"

    # Insert data into games table
    INSERT_GAME="$($PSQL "insert into games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) values($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")"
    if [[ $INSERT_GAME = 'INSERT 0 1' ]]
      then
      echo "Inserted into games:  $WINNER VS $OPPONENT"
    fi
  fi
done
