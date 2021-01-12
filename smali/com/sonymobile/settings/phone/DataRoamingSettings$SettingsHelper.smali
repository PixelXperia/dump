.class Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;
.super Ljava/lang/Object;
.source "DataRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/phone/DataRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;
    }
.end annotation


# instance fields
.field public mObserver:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;

.field final synthetic this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;


# direct methods
.method private constructor <init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V
    .locals 1

    .line 610
    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    new-instance p1, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;-><init>(Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->mObserver:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;Lcom/sonymobile/settings/phone/DataRoamingSettings$1;)V
    .locals 0

    .line 610
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;-><init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V

    return-void
.end method


# virtual methods
.method public getDataRoaming()Z
    .locals 3

    .line 619
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    const-string v1, "data_roaming"

    if-eqz v0, :cond_0

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$2200(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/4 v0, 0x0

    .line 625
    :try_start_0
    iget-object p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$2600(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    const-string v1, "DataRoamingSettings.SettingsHelper"

    const-string v2, "getDataRoaming"

    .line 627
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setDataRoaming(Z)V
    .locals 5

    .line 633
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$2200(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I

    move-result v0

    .line 634
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 638
    iget-object v2, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$2700(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data_roaming"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eq v0, v1, :cond_0

    .line 641
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 643
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->access$2800(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method
