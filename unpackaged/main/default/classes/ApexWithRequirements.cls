public class ApexWithRequirements {

    public void methodToExecute() {
        ClassRequiredByAnother requiredClassObject = new ClassRequiredByAnother();
        requiredClassObject.emptyOperation();
    }
}