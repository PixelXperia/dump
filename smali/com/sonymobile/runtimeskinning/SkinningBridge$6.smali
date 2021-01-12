.class Lcom/sonymobile/runtimeskinning/SkinningBridge$6;
.super Ljava/lang/Object;
.source "SkinningBridge.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/runtimeskinning/SkinningBridge;->connect(Landroid/content/ComponentName;Landroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const-string p1, "3"

    .line 348
    invoke-static {p2}, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;

    move-result-object p2

    invoke-static {p2}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$702(Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;)Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;

    .line 351
    :try_start_0
    invoke-static {}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$700()Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;->useVersion(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 352
    invoke-static {p1}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$802(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    invoke-static {}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$700()Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;

    move-result-object p1

    new-instance p2, Lcom/sonymobile/runtimeskinning/SkinningBridge$6$1;

    invoke-direct {p2, p0}, Lcom/sonymobile/runtimeskinning/SkinningBridge$6$1;-><init>(Lcom/sonymobile/runtimeskinning/SkinningBridge$6;)V

    invoke-interface {p1, p2}, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;->registerEndpoint(Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;)V

    .line 444
    invoke-static {}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$1500()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 445
    invoke-static {}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$700()Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;->transfer(Ljava/util/Map;)V

    goto :goto_0

    .line 354
    :cond_0
    invoke-static {}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$900()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unsupported protocol version"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-static {}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$300()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 448
    invoke-static {}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$900()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Error while communicating with skinning bridge endpoint application"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 461
    invoke-static {}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$300()V

    .line 464
    invoke-static {}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$1600()V

    return-void
.end method
