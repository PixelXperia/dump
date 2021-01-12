.class public Lcom/sonymobile/settings/wifi/WapiPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WapiPreferenceController.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/sonymobile/settings/wifi/WapiPreferenceController;->mContext:Landroid/content/Context;

    .line 25
    iput-object p1, p0, Lcom/sonymobile/settings/wifi/WapiPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "install_wapi_cert"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sonymobile/settings/wifi/WapiPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sonymobile/settingslib/wifi/WapiUtils;->isWapiAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
