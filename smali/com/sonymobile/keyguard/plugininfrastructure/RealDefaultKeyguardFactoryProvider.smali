.class public Lcom/sonymobile/keyguard/plugininfrastructure/RealDefaultKeyguardFactoryProvider;
.super Ljava/lang/Object;
.source "RealDefaultKeyguardFactoryProvider.java"

# interfaces
.implements Lcom/sonymobile/keyguard/plugininfrastructure/DefaultKeyguardFactoryProvider;


# instance fields
.field private final mCustomizationResourceLoader:Lcom/sonymobile/keyguard/plugininfrastructure/CustomizationResourceLoader;

.field private final mMetaDataLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;


# direct methods
.method public constructor <init>(Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;Lcom/sonymobile/keyguard/plugininfrastructure/CustomizationResourceLoader;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 46
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealDefaultKeyguardFactoryProvider;->mMetaDataLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    .line 47
    iput-object p2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealDefaultKeyguardFactoryProvider;->mCustomizationResourceLoader:Lcom/sonymobile/keyguard/plugininfrastructure/CustomizationResourceLoader;

    return-void

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "KeyguardPluginMetaDataLoader or CustomizationResourceLoader cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getClockWithHighestPriority()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 72
    :try_start_0
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealDefaultKeyguardFactoryProvider;->mMetaDataLoader:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;

    .line 73
    invoke-virtual {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginMetaDataLoader;->getAvailableKeyguardFactories()Ljava/util/LinkedList;

    move-result-object p0

    const/high16 v1, -0x80000000

    if-eqz p0, :cond_1

    .line 78
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v2, v1

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;

    .line 79
    invoke-virtual {v3}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->getPriority()I

    move-result v4

    if-le v4, v2, :cond_0

    .line 80
    invoke-virtual {v3}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->getPriority()I

    move-result v1

    move v2, v1

    move-object v1, v3

    goto :goto_0

    :cond_1
    move-object v1, v0

    :cond_2
    if-eqz v1, :cond_3

    .line 87
    invoke-virtual {v1}, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->getFullyQualifiedClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception p0

    const-string v1, "PriorityBasedDefaultKeyguardFactoryProvider"

    .line 89
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method


# virtual methods
.method public final getDefaultKeyguardFactoryClassName()Ljava/lang/String;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealDefaultKeyguardFactoryProvider;->mCustomizationResourceLoader:Lcom/sonymobile/keyguard/plugininfrastructure/CustomizationResourceLoader;

    .line 61
    invoke-interface {v0}, Lcom/sonymobile/keyguard/plugininfrastructure/CustomizationResourceLoader;->getSomcCustomizedDefaultFullyQualifiedClockPluginName()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/sonymobile/keyguard/plugininfrastructure/RealDefaultKeyguardFactoryProvider;->getClockWithHighestPriority()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
