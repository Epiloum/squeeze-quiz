import jakarta.persistence.*;

@Entity
@Table(name = "bundles")
public class Bundle {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, length = 32)
    private String title;

    @Column(length = 256)
    private String description;
}