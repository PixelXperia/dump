.class public Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;
.super Ljava/lang/Object;
.source "RealClockPluginUserSelectionHandler.java"

# interfaces
.implements Lcom/sonymobile/keyguard/plugininfrastructure/ClockPluginUserSelectionHandler;


# instance fields
.field private final mDefaultKeyguardFactoryProvider:Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;

.field private final mKeyguardPluginMetaDataLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

.field private final mKeyguardPluginSecureSettingsAbstraction:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;


# direct methods
.method public constructor <init>(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mKeyguardPluginMetaDataLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    .line 48
    iput-object p2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mKeyguardPluginSecureSettingsAbstraction:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;

    .line 49
    iput-object p3, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mDefaultKeyguardFactoryProvider:Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;

    return-void
.end method

.method private updateLastPresentableSelectionStore()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mKeyguardPluginSecureSettingsAbstraction:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;

    .line 85
    invoke-interface {v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;->getExplicitlySelectedKeyguardPlugin()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mDefaultKeyguardFactoryProvider:Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;->getDefaultKeyguardFactoryClassName()Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mKeyguardPluginMetaDataLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    .line 90
    invoke-virtual {v1, v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;->getFactoryEntryFromClassName(Ljava/lang/String;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 94
    invoke-virtual {v1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->getSelectableByThemes()Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mKeyguardPluginSecureSettingsAbstraction:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;

    invoke-interface {p0, v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;->setFallbackKeyguardPlugin(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getPresentableUserSelection()Ljava/lang/String;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mKeyguardPluginSecureSettingsAbstraction:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;

    .line 69
    invoke-interface {v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;->getExplicitlySelectedKeyguardPlugin()Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mKeyguardPluginMetaDataLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    .line 71
    invoke-virtual {v1, v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;->getFactoryEntryFromClassName(Ljava/lang/String;)Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->getEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mKeyguardPluginSecureSettingsAbstraction:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;

    invoke-interface {v0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;->getFallbackKeyguardPlugin()Ljava/lang/String;

    move-result-object v0

    .line 76
    sget-object v1, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginConstants$ClockSelectionSource;->Fallback:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginConstants$ClockSelectionSource;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->updateUserSelection(Ljava/lang/String;Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginConstants$ClockSelectionSource;)V

    :cond_0
    return-object v0
.end method

.method public final updateUserSelection(Ljava/lang/String;Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginConstants$ClockSelectionSource;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->updateLastPresentableSelectionStore()V

    .line 59
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealClockPluginUserSelectionHandler;->mKeyguardPluginSecureSettingsAbstraction:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;

    invoke-interface {p0, p1, p2}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;->setExplicitlySelectedKeyguardPlugin(Ljava/lang/String;Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginConstants$ClockSelectionSource;)V

    return-void
.end method
