.class public Lcom/sonymobile/keyguard/plugininfrastructure/RealCustomizationResourceLoader;
.super Ljava/lang/Object;
.source "RealCustomizationResourceLoader.java"

# interfaces
.implements Lcom/sonymobile/keyguard/plugininfrastructure/CustomizationResourceLoader;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealCustomizationResourceLoader;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getSomcCustomizedDefaultFullyQualifiedClockPluginName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object p0, p0, Lcom/sonymobile/keyguard/plugininfrastructure/RealCustomizationResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->config_somc_default_clock_plugin_class_name:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
