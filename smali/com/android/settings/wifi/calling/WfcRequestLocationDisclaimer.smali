.class Lcom/android/settings/wifi/calling/WfcRequestLocationDisclaimer;
.super Lcom/android/settings/wifi/calling/DisclaimerItem;
.source "WfcRequestLocationDisclaimer.java"


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/calling/DisclaimerItem;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private setUserAcceptedLocationDisclaimer()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wfc_location_disclaimer_accepted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mSubId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method protected getMessageId()I
    .locals 0

    const p0, 0x7f1214bf

    return p0
.end method

.method protected getName()Ljava/lang/String;
    .locals 0

    const-string p0, "WfcRequestLocationDisclaimer"

    return-object p0
.end method

.method protected getPrefKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_has_requested_location_disclaimer"

    return-object p0
.end method

.method protected getTitleId()I
    .locals 0

    const p0, 0x7f1214bd

    return p0
.end method

.method onAgreed()V
    .locals 0

    .line 82
    invoke-super {p0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->onAgreed()V

    .line 83
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WfcRequestLocationDisclaimer;->setUserAcceptedLocationDisclaimer()V

    return-void
.end method

.method shouldShow()Z
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "s_show_wfc_request_location_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "shouldShow: false due to carrier config is false."

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->logd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 42
    :cond_0
    invoke-super {p0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->shouldShow()Z

    move-result p0

    return p0
.end method
