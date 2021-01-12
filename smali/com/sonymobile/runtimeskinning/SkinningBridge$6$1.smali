.class Lcom/sonymobile/runtimeskinning/SkinningBridge$6$1;
.super Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint$Stub;
.source "SkinningBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/runtimeskinning/SkinningBridge$6;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/runtimeskinning/SkinningBridge$6;


# direct methods
.method constructor <init>(Lcom/sonymobile/runtimeskinning/SkinningBridge$6;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/sonymobile/runtimeskinning/SkinningBridge$6$1;->this$0:Lcom/sonymobile/runtimeskinning/SkinningBridge$6;

    invoke-direct {p0}, Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$transfer$0(Z)V
    .locals 1

    .line 391
    invoke-static {}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$1000()Landroid/view/View;

    move-result-object v0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public registerEndpoint(Lcom/sonymobile/runtimeskinning/ISkinningBridgeEndpoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public transfer(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "cmd"

    .line 384
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 385
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 388
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x76c0f0bc

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_3

    const v1, 0x56603fd1

    if-eq v0, v1, :cond_2

    const v1, 0x7c81947a

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "requestLockScreenClockCloaking"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v0, "setStatusbarCloaking"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v5

    goto :goto_1

    :cond_3
    const-string v0, "setNavbarCloaking"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v2

    :goto_1
    const-string v1, "true"

    const-string v6, "cloaked"

    if-eqz v0, :cond_f

    if-eq v0, v5, :cond_d

    if-eq v0, v3, :cond_5

    .line 435
    invoke-static {}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$900()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The following command could not be recognized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_5
    const-string p0, "never"

    .line 404
    invoke-interface {p1, v6, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 405
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "width"

    invoke-interface {p1, v6, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 406
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "height"

    invoke-interface {p1, v7, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 410
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x54506df1

    if-eq v6, v7, :cond_8

    const v7, 0x63dca8c

    if-eq v6, v7, :cond_7

    const p0, 0x7ee2693e

    if-eq v6, p0, :cond_6

    goto :goto_2

    :cond_6
    const-string p0, "notUser"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    move v2, v5

    goto :goto_2

    :cond_7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    move v2, v3

    goto :goto_2

    :cond_8
    const-string p0, "always"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    move v2, v4

    :cond_9
    :goto_2
    if-eqz v2, :cond_b

    if-eq v2, v5, :cond_a

    move v5, v4

    goto :goto_3

    :cond_a
    const-string p0, "somc.lockscreen.active.clock_factory.source"

    .line 417
    invoke-static {p0}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$1300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 419
    sget-object v0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginConstants$ClockSelectionSource;->LockscreenClockPicker:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginConstants$ClockSelectionSource;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginConstants$ClockSelectionSource;->LockscreenSettings:Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginConstants$ClockSelectionSource;

    .line 420
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    :cond_b
    move v4, v5

    .line 430
    :cond_c
    :goto_3
    invoke-static {v1, p1}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$1400(II)V

    .line 431
    invoke-static {v5, v4}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$100(ZZ)V

    goto :goto_4

    .line 395
    :cond_d
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "color"

    .line 396
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 397
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$1102(Ljava/lang/String;)Ljava/lang/String;

    .line 399
    :cond_e
    invoke-static {p0}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$1200(Z)V

    goto :goto_4

    .line 390
    :cond_f
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 391
    invoke-static {}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$1000()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/sonymobile/runtimeskinning/-$$Lambda$SkinningBridge$6$1$hdk67v7uadr83_8aKbMeWr-iZbU;

    invoke-direct {v0, p0}, Lcom/sonymobile/runtimeskinning/-$$Lambda$SkinningBridge$6$1$hdk67v7uadr83_8aKbMeWr-iZbU;-><init>(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_4
    return-void
.end method

.method public useVersion(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    invoke-static {}, Lcom/sonymobile/runtimeskinning/SkinningBridge;->access$800()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
