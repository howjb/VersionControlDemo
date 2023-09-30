package model;
/**
 * @author ${Jawad} - Jbarish
 * CIS175 - Fall 2023
 * ${09,01,2023}
 */
public class Cat {
    private String name;
    private String sound;

    public Cat(String name, String color, String sound) {
        this.name = name;
        this.sound = sound;
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    public String makeNoise() {
        return sound;
    }
    public static void main(String[] args) {
        Cat myCat = new Cat("Whiskers", "Gray", "Meow");
        String catSound = myCat.makeNoise();
        System.out.println(myCat.getName() + " says: " + catSound);
    }

}
