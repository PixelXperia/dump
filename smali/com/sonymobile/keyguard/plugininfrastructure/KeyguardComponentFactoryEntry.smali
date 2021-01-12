.class public Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
.super Ljava/lang/Object;
.source "KeyguardComponentFactoryEntry.java"


# instance fields
.field private final mAdditionalInformationResourceName:Ljava/lang/String;

.field private final mEnabled:Z

.field private final mFullyQualifiedClassName:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mPreviewImage:Landroid/graphics/drawable/Drawable;

.field private final mPriority:I

.field private final mSelectableByThemes:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;ZZ)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->mName:Ljava/lang/String;

    .line 67
    iput p3, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->mPriority:I

    .line 68
    iput-object p2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->mFullyQualifiedClassName:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->mPreviewImage:Landroid/graphics/drawable/Drawable;

    .line 70
    iput-object p5, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->mAdditionalInformationResourceName:Ljava/lang/String;

    .line 71
    iput-boolean p6, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->mEnabled:Z

    .line 72
    iput-boolean p7, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->mSelectableByThemes:Z

    return-void
.end method


# virtual methods
.method public final getEnabled()Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->mEnabled:Z

    return p0
.end method

.method public final getFullyQualifiedClassName()Ljava/lang/String;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->mFullyQualifiedClassName:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPriority()I
    .locals 0

    .line 99
    iget p0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->mPriority:I

    return p0
.end method

.method public final getSelectableByThemes()Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->mSelectableByThemes:Z

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"name\":\""

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"fullyQualifiedClassName\":\""

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->mFullyQualifiedClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"priority\":\""

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\", \"previewImage\":\""

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->mPreviewImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"additionalInformationResourceName\":\""

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->mAdditionalInformationResourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"enabled\":\""

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-boolean v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\", \"selectableByThemes\":\""

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-boolean p0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->mSelectableByThemes:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    .line 155
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
