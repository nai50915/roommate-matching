import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Random;

public class UserDataGenerator {
    private static final String[] FIRST_NAMES = { "Adrian", "Jamie", "Leah", "Bina", "Marcus", "Sophia", "Elijah",
            "Layla", "Sebastian", "Amara",
       
            "Jackson", "Avery", "Evelyn", "Gabriel", "Stella", "Caleb", "Zoe", "Nathan", "Hannah", "Julian",
            "Victoria", "Isaiah", "Grace", "Aaron", "Chloe", "Dominic", "Nora", "Hunter", "Sadie", "Xavier",
            "Maya", "Leo", "Ruby", "Jason", "Brooklyn", "Miles", "Peyton", "Carson", "Autumn", "Bryson", "Bella",
            "Binta", "Sophia", "Meredith", "Conrad", "Jameson", "Corella", "Diana", "Baddie", "Burgers", "Onika",
            "Malaysia", "Indiana", "Blessing",
            "Arafah", "Ridwaan", "Hakim", "Belcalis", "Trey", "Aarya", "Justin", "Kimberly", "Glenda", "Karen", "Brock",
            "Hadiza", "Shelby", "Sami", "Netra", "Nadia", "Basanta", "William", "Natalia", "Benen", "Chinmay", "Jaquan", "Juancarlos",
            "Secret", "Tuesday"
    };
    private static final String[] LAST_NAMES = { "Smith", "Johnson", "Williams", "Jones", "Brown", "Davis", "Miller",
            "Wilson", "Moore", "Taylor",
            "Sarr", "Chicago", "Woobles", "Fat", "Oil", "Stanley", "Mirror", "Texas", "Paper", "Amin", "Ismail",
            "Honey", "Pot", "Bar", "Love",
            "Georgia", "Alabama", "Baker", "Travis", "Kardashian", "Zimbabwe", "Class", "Extra", "Tea", "Puccini",
            "Sauce", "Boil", "Hibiscus"
    };
    private static final String[] DORMS = { "Vandiver", "Rooker", "1516", "Myers", "Payne", "Creswell", "Mell",
            "The Connections", "The Reserve", "Sorority House"
    };

    public static void main(String[] args) {
        String filePath = "data.sql";
        int numUsers = 1000;

        try (BufferedWriter writer = new BufferedWriter(new FileWriter(filePath))) {
            for (int i = 0; i < numUsers; i++) {
                String firstName = randomFrom(FIRST_NAMES);
                String lastName = randomFrom(LAST_NAMES);
                String username = (firstName.charAt(0) + lastName + i).toLowerCase();
                // Fake BCrypt hash for password is "1234" on the web page
                String password = "$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke";
                int age = randBetween(18, 24);
                String dorm = randomFrom(DORMS);
                int room = randBetween(100, 900);
                // image url creation
                boolean isMale = new Random().nextBoolean();
                int faceId = new Random().nextInt(100);
                String imageUrl = "https://randomuser.me/api/portraits/" + (isMale ? "men/" : "women/") + faceId
                        + ".jpg";

                String description = String.format(
                        "Hi! My name is %s. I am %d and I am looking for a roommate in %s %d this Fall. Hit me up!",
                        firstName, age, dorm, room);

                // Escape quotes
             description = description.replace("'", "''");

                String insert = String.format(
                        "INSERT INTO user (username, password, firstName, lastName, description, imageUrl) " +
                                "VALUES ('%s', '%s', '%s', '%s', '%s', '%s');",
                        username, password, firstName, lastName, description, imageUrl);

                writer.write(insert);
                writer.newLine();
            }

            System.out.println("Successfully wrote user insert statements to: " + filePath);
        } catch (IOException e) {
            System.err.println("Error writing to file: " + e.getMessage());
        }

    }

    private static String randomFrom(String[] array) {
        return array[new Random().nextInt(array.length)];
    }

    private static int randBetween(int min, int max) {
        return new Random().nextInt(max - min + 1) + min;
    }

}
