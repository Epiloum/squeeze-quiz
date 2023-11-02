import jakarta.persistence.*;

@Entity
@Table(name = "questions")
public class Question {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "bundle_id", nullable = false)
    private Bundle bundle;

    @Column(nullable = false, length = 256)
    private String question;

    @Column(nullable = false, length = 256)
    private String answer;
}