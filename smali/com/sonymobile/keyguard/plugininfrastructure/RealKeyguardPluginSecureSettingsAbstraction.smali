.class public Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;
.super Ljava/lang/Object;
.source "RealKeyguardPluginSecureSettingsAbstraction.java"

# interfaces
.implements Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;I)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 43
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mContentResolver:Landroid/content/ContentResolver;

    .line 44
    iput p2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mUserId:I

    return-void

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ContentResolver may not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getExplicitlySelectedKeyguardPlugin()Ljava/lang/String;
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mContentResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mUserId:I

    const-string v1, "somc.lockscreen.active.clock_factory"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getExplicitlySelectedKeyguardPluginValueUri()Landroid/net/Uri;
    .locals 0

    const-string p0, "somc.lockscreen.active.clock_factory"

    .line 96
    invoke-static {p0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final getFallbackKeyguardPlugin()Ljava/lang/String;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mContentResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mUserId:I

    const-string v1, "somc.lockscreen.active.clock_factory_fallback"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final setExplicitlySelectedKeyguardPlugin(Ljava/lang/String;Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginConstants$ClockSelectionSource;)V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mContentResolver:Landroid/content/ContentResolver;

    .line 64
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    iget v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mUserId:I

    const-string v2, "somc.lockscreen.active.clock_factory.source"

    .line 63
    invoke-static {v0, v2, p2, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 66
    iget-object p2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mContentResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mUserId:I

    const-string v0, "somc.lockscreen.active.clock_factory"

    invoke-static {p2, v0, p1, p0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public final setFallbackKeyguardPlugin(Ljava/lang/String;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mContentResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealKeyguardPluginSecureSettingsAbstraction;->mUserId:I

    const-string v1, "somc.lockscreen.active.clock_factory_fallback"

    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method
