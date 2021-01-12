.class public Lcom/sonymobile/settings/idd/TetherStateCollectServise;
.super Landroid/app/IntentService;
.source "TetherStateCollectServise.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "TetherStateCollectServise"

    .line 29
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private getOldValue(Ljava/lang/String;)Z
    .locals 2

    .line 83
    iget-object p0, p0, Lcom/sonymobile/settings/idd/TetherStateCollectServise;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "idd_tether_prefs"

    .line 84
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 85
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private setNewValue(Ljava/lang/String;Z)V
    .locals 2

    .line 89
    iget-object p0, p0, Lcom/sonymobile/settings/idd/TetherStateCollectServise;->mContext:Landroid/content/Context;

    const-string v0, "idd_tether_prefs"

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 91
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 92
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private uploadIdd(Ljava/lang/String;Z)V
    .locals 2

    .line 76
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/idd/TetherStateCollectServise;->getOldValue(Ljava/lang/String;)Z

    move-result v0

    if-eq p2, v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/sonymobile/settings/idd/TetherStateCollectServise;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-static {v0, p1, v1}, Lcom/sonymobile/settings/idd/IddUpdater;->uploadIdd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/settings/idd/TetherStateCollectServise;->setNewValue(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 14

    .line 35
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/settings/idd/TetherStateCollectServise;->mContext:Landroid/content/Context;

    .line 36
    iget-object p1, p0, Lcom/sonymobile/settings/idd/TetherStateCollectServise;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 39
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object p1

    .line 49
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v5, v3, :cond_6

    aget-object v9, v0, v5

    .line 50
    array-length v10, v1

    move v11, v4

    :goto_1
    const/4 v12, 0x1

    if-ge v11, v10, :cond_1

    aget-object v13, v1, v11

    .line 51
    invoke-virtual {v9, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    move v6, v12

    goto :goto_2

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 56
    :cond_1
    :goto_2
    array-length v10, v2

    move v11, v4

    :goto_3
    if-ge v11, v10, :cond_3

    aget-object v13, v2, v11

    .line 57
    invoke-virtual {v9, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v7, v12

    goto :goto_4

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 62
    :cond_3
    :goto_4
    array-length v10, p1

    move v11, v4

    :goto_5
    if-ge v11, v10, :cond_5

    aget-object v13, p1, v11

    .line 63
    invoke-virtual {v9, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    move v8, v12

    goto :goto_6

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_5
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    const-string p1, "wifi_tether_enabled"

    .line 70
    invoke-direct {p0, p1, v6}, Lcom/sonymobile/settings/idd/TetherStateCollectServise;->uploadIdd(Ljava/lang/String;Z)V

    const-string p1, "usb_tether_enabled"

    .line 71
    invoke-direct {p0, p1, v7}, Lcom/sonymobile/settings/idd/TetherStateCollectServise;->uploadIdd(Ljava/lang/String;Z)V

    const-string p1, "bt_tether_enabled"

    .line 72
    invoke-direct {p0, p1, v8}, Lcom/sonymobile/settings/idd/TetherStateCollectServise;->uploadIdd(Ljava/lang/String;Z)V

    return-void
.end method
