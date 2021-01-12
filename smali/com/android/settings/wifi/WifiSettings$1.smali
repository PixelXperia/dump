.class Lcom/android/settings/wifi/WifiSettings$1;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Lcom/sonymobile/wifi/SomcWifiApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$1;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 176
    check-cast p2, Lcom/sonymobile/wifi/SomcWifiManager;

    invoke-virtual {p2}, Lcom/sonymobile/wifi/SomcWifiManager;->getPreConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/android/settings/wifi/WifiSettings;->sPresetConfigs:Ljava/util/List;

    return-void
.end method

.method public onDisconnected(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
