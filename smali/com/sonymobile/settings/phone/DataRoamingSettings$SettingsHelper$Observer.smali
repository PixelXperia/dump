.class public Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;
.super Landroid/database/ContentObserver;
.source "DataRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Observer"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;Landroid/os/Handler;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    .line 651
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "DataRoamingSettings.SettingsHelper.Observer"

    .line 648
    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 670
    invoke-static {}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$2000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "DataRoamingSettings.SettingsHelper.Observer"

    const-string v0, "onChange"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    iget-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->getDataRoaming()Z

    move-result p0

    const-string v0, "data_roaming"

    invoke-static {p1, v0, p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$2300(Lcom/sonymobile/settings/phone/DataRoamingSettings;Ljava/lang/String;I)V

    return-void
.end method

.method public register()V
    .locals 3

    .line 656
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    const-string v1, "data_roaming"

    if-eqz v0, :cond_0

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    iget-object v1, v1, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$2200(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 660
    :cond_0
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 661
    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    iget-object v1, v1, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$2900(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unRegister()V
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    iget-object v0, v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$3000(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
