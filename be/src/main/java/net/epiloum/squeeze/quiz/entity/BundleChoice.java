import jakarta.persistence.*;

@Entity
@Table(name = "bundle_choices")
public class BundleChoice {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @ManyToOne
    @JoinColumn(name = "bundle_id", nullable = false)
    private Bundle bundle;
}