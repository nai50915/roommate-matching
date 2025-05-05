import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Random;

public class ReviewDataGenerator {

    // Review templates grouped by rating (1–5)
    private static final String[][] TEMPLATES = {
            {
                    "Terrible roommate; would not recommend.",
                    "Very disappointed with the how inconsiderate they were.",
                    "Had to call the police due to hostility.",
                    "Had a party everynight and tried to sell my furniture.",
                    "Her cat thought my litter was her close.",
                    "Everything was fine until they tried to steal my boyfriend.",
                    "Very very cluttered and always playing crazy video games.",
                    "Cooks the worst smelling food in the entire world."
            },
            {
                    "Could have been better.",
                    "Below average experience overall.",
                    "Not very impressed; room for improvement.",
                    "They definitely sent me the edited pictures of the room.",
                    "Lazy.",
                    "Takes really long showers.",
            },
            {
                    "It was okay; some aspects were average.",
                    "Neither great nor terrible.",
                    "Met basic expectations.",
                    "Only problem was they refused to clean the bathroom.",
                    "Great roommate, just lowkey (highkey) a liar.",
                    "Fine, but stole my food a few times, wouldn't admit it."
            },
            {
                    "Very good experience overall.",
                    "Quite satisfied with the service.",
                    "I would use this again.",
                    "Were paired as randoms, now one of my closest friends.",
                    "They're great, just use bleach like it's the bible. Prepare to pass out sometimes.",
                    "Good roomie, except for the one time she crashed out over a situationship and broke my mom's portrait.",
                    "Their friends will be over allllll the time, so be prepared"
            },
            {
                    "Outstanding service! Highly recommend.",
                    "Exceeded expectations in every way.",
                    "I love love love them.",
                    "Clean, quiet, and a geat friend.",
                    "10/10 person, even bailed me out of jail once.",
                    "Cleaned everything, even my mess.",
                    "They paid the rent for the both of us, #rich."
            }
    };

    public static void main(String[] args) {
        String filePath = "review_data.sql";
        int numReviews = 300;

        // allow override from command-line
        if (args.length > 0) {
            try {
                numReviews = Integer.parseInt(args[0]);
            } catch (NumberFormatException e) {
                System.err.println("Invalid count, defaulting to 300 reviews.");
            }
        }

        try (BufferedWriter writer = new BufferedWriter(new FileWriter(filePath))) {
            for (int i = 0; i < numReviews; i++) {
                int reviewerId = randBetween(1, 1000);
                int revieweeId;
                // ensure reviewer != reviewee
                do {
                    revieweeId = randBetween(1, 1000);
                } while (revieweeId == reviewerId);

                int rating = randBetween(1, 5);
                String[] choices = TEMPLATES[rating - 1];
                String content = randomFrom(choices)
                        .replace("'", "''");

                String insert = String.format(
                        "INSERT INTO review (reviewerId, revieweeId, content, ratingValue) " +
                                "VALUES (%d, %d, '%s', %d);",
                        reviewerId, revieweeId, content, rating);

                writer.write(insert);
                writer.newLine();
            }
            System.out.println("Successfully wrote review inserts to: " + filePath);
        } catch (IOException e) {
            System.err.println("Error writing file: " + e.getMessage());
        }
    }

    // pick a random element from an array
    private static String randomFrom(String[] array) {
        return array[new Random().nextInt(array.length)];
    }

    // random int in [min..max]
    private static int randBetween(int min, int max) {
        return new Random().nextInt(max - min + 1) + min;
    }
}
